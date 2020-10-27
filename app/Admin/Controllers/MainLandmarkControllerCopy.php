<?php

namespace App\Admin\Controllers;

use App\Service;
use App\MainLandmark;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class MainLandmarkControllerCopy extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'MainLandmark';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new MainLandmark);

        $grid->column('id', __('Id'));
        $grid->column('landmark_name', __('Landmark Name'));
        $grid->column('landmark_name_gj', __('Landmark Name GJ'));
        $grid->column('landmark_name_hi', __('Landmark Name HI'));
        $grid->column('city', __('City'));

        $grid->column('status_name', __('Status'))->display(function($status){
            $status_name = MainLandmark::where('id',$status)->value('status_name');
            if ($status == 1) {
                return "<span class='label label-success'>Avaible</span>";
            } else {
                return "<span class='label label-danger'>Dis-enabled</span>";
            }
        });
        $grid->disableExport();
        $grid->actions(function ($actions) {
            $actions->disableView();
        });
        $grid->filter(function ($filter) {
            //Get All status
            $statuses = MainLandmark::pluck('status_name', 'id');
            
            $filter->like('landmark_name', 'Landmark Name');
            $filter->like('landmark_name_gj', 'Landmark Name gj');
            $filter->equal('status', 'Status')->select($statuses);
        });
        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Service::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('service_name', __('Service name'));
        $show->field('description', __('Description'));
        // $show->field('estimation_hours', __('Estimation hours'));
        $show->field('image', __('Image'));
        $show->field('status', __('Status'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new MainLandmark);
        $statuses = MainLandmark::pluck('status_name', 'id');
        $form->text('landmark_name', __('Land Mark'))->rules(function ($form) {
            return 'required|max:100';
        });
        $form->text('landmark_name_gj', __('Land Mark GJ'))->rules(function ($form) {
            return 'required|max:100';
        });
        $form->textarea('landmark_name_hi', __('Land Mark HI'))->rules(function ($form) {
            return 'required|max:100';
        });
        
        $form->text('city', __('City'))->rules(function ($form) {
            return 'required|max:100';
        });
        // $form->text('estimation_hours', __('Estimation hours'));
        $form->select('status_name', __('Status'))->options($statuses)->default(1)->rules(function ($form) {
            return 'required';
        });
         $form->tools(function (Form\Tools $tools) {
            $tools->disableDelete(); 
            $tools->disableView();
        });
        $form->footer(function ($footer) {
            $footer->disableViewCheck();
            $footer->disableEditingCheck();
            $footer->disableCreatingCheck();
        });
        return $form;
    }
}

<?php

namespace App\Admin\Controllers;

use App\PrivacyPolicy;
use App\Status;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PrivacyPolicyController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Privacy Policies';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new PrivacyPolicy);

        $grid->column('id', __('Id'));
        $grid->column('title', __('Title'));
        $grid->column('title_gj', __('Title Gj'));
        $grid->column('title_hi', __('Title Hi'));

        $grid->column('description', __('Description'));
        $grid->column('description_gj', __('Description Gj'));
        $grid->column('description_hi', __('Description Hi'));


        $grid->column('status', __('Status'))->display(function($status){
            $status_name = Status::where('id',$status)->value('status_name');
            if ($status == 1) {
                return "<span class='label label-success'>$status_name</span>";
            } else {
                return "<span class='label label-danger'>$status_name</span>";
            }
        });
        $grid->disableExport();
        $grid->actions(function ($actions) {
            $actions->disableView();
        });
        $grid->filter(function ($filter) {
            //Get All status
            $statuses = Status::pluck('status_name', 'id');
            $filter->like('title', 'Title');
            $filter->like('title_gj', 'Title Gj');
            $filter->like('title_hi', 'Title Hi');

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
        $show = new Show(PrivacyPolicy::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('description', __('Description'));
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
        $form = new Form(new PrivacyPolicy);
        $statuses = Status::pluck('status_name', 'id');
        $form->text('title', __('Title'))->rules(function ($form) {
            return 'required|max:100';
        });
        $form->text('title_gj', __('Title Gj'))->rules(function ($form) {
            return 'required|max:100';
        });
        $form->text('title_hi', __('Title Hi'))->rules(function ($form) {
            return 'required|max:100';
        });
        $form->textarea('description', __('Description'))->rules(function ($form) {
            return 'required';
        });
        $form->textarea('description_gj', __('Description Gj'))->rules(function ($form) {
            return 'required';
        });
        $form->textarea('description_hi', __('Description Hi'))->rules(function ($form) {
            return 'required';
        });
        $form->select('status', __('Status'))->options($statuses)->default(1)->rules(function ($form) {
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

<?php

namespace App\Admin\Controllers;

use App\Faq;
use App\Status;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class FaqController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'FAQ';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Faq);

        $grid->column('id', __('Id'));
        $grid->column('question', __('Question'));
        $grid->column('question_gj', __('Question Gj'));
        $grid->column('question_hi', __('Question Hi'));

        $grid->column('answer', __('Answer'));
         $grid->column('answer_gj', __('Answer Gj'));
         $grid->column('answer_hi', __('Answer Hi'));

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
            
            $filter->like('question', 'Question');
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
        $show = new Show(Faq::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('question', __('Question'));
        $show->field('answer', __('Answer'));
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
        $form = new Form(new Faq);
        $statuses = Status::pluck('status_name', 'id');
        $form->text('question', __('Question'))->rules(function ($form) {
            return 'required';
        });
        $form->text('question_gj', __('Question Gj'))->rules(function ($form) {
            return 'required';
        });
        $form->text('question_hi', __('Question Hi'))->rules(function ($form) {
            return 'required';
        });
        $form->textarea('answer', __('Answer'))->rules(function ($form) {
            return 'required';
        });
        
        $form->textarea('answer_gj', __('Answer Gj'))->rules(function ($form) {
            return 'required';
        });
        
         $form->textarea('answer_hi', __('Answer Hi'))->rules(function ($form) {
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

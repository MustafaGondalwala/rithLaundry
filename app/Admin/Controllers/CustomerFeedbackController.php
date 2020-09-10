<?php

namespace App\Admin\Controllers;

use App\Service;
use App\CustomerFeedback;
use App\Customer;

use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CustomerFeedbackController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Customer Feedback';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new CustomerFeedback);

        $grid->column('id', __('Id'));
        $grid->column('customer_id', __('Customer Name'))->display(function($id){
            return Customer::where("id",$id)->value('customer_name');
        });
        $grid->column('title', __('Title'));
        $grid->column('description', __('Description'));
        $grid->column('rating', __('Rating'));
        
        $grid->disableExport();
       
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
        $show = new Show(CustomerFeedback::findOrFail($id));
        $show->field('id', __('Id'));
        $show->field('customer_id', __('Customer Name'))->display(function($id){
            return Customer::where("id",$id)->value('customer_name');
        });
        $show->field('title', __('title'));
        $show->field('description', __('Description'));
        // $show->field('estimation_hours', __('Estimation hours'));
        $show->field('rating', __('Rating'));
        $show->field('created_at', __('Created at'));
        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new CustomerFeedback);
        $form->text('customer_id', __('Customer Id'))->rules(function ($form) {
            return 'required';
        });
        $form->text('title', __('Title'))->rules(function ($form) {
            return 'required|max:100';
        });
        $form->text('description', __('Description'))->rules(function ($form) {
            return 'required|max:100';
        });
        $form->text('rating', __('Rating'))->rules(function ($form) {
            return 'required|max:100';
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

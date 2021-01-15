class TemplatesController < ApplicationController
  before_action :set_template, only: [:edit, :update, :destroy]
  
  def create
    @template = Template.new(template_params)
    if @template.save
      flash[:notice] = '追加できました'
      redirect_to template_input_summary_path(@template.input_summary_id)
    else
      flash[:notice] = '追加できません'
      redirect_to template_input_summary_path(@template.input_summary_id)
    end
  end

  def edit
  end

  def update
    if @template.update(template_params)
      redirect_to template_input_summary_path(@template.input_summary_id)
    else
      render :edit
    end
  end

  def destroy
    @template.destroy
    redirect_to template_input_summary_path(@template.input_summary_id)
  end

  private

  def template_params
    params.require(:template).permit(:title, :info).merge(input_summary_id: params[:input_summary_id])
  end

  def set_template
    @template = Template.find(params[:template_id])
    @input_summary = InputSummary.find(params[:input_summary_id])
  end
end

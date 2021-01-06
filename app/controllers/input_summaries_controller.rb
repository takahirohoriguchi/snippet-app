class InputSummariesController < ApplicationController
  before_action :set_snippet, only: [:index, :new, :create]

  def index
    @snippet = Snippet.find(params[:snippet_id])
    @input_summaries = @snippet.input_summaries
  end

  def new
    @snippet = Snippet.find(params[:snippet_id])
    @input_summary = InputSummary.new
  end

  def create
    @input_summary = InputSummary.new(summary_params)
    if @input_summary.valid?
      @input_summary.save
      redirect_to snippet_input_summaries_path(@snippet.id)
    else
      render :new
    end
  end

  def template
    @input_summary = InputSummary.find(params[:id])
    @snippet = Snippet.find(@input_summary.snippet_id)
    @input_summaries = @snippet.input_summaries
    @template = Template.new

    @templates = @input_summary.templates

    render :index
  end

  private

  def summary_params
    params.require(:input_summary).permit(:summary_name).merge(snippet_id: params[:snippet_id])
  end

  def set_snippet
    @snippet = Snippet.find(params[:snippet_id])
  end
end

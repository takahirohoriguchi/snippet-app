class SnippetsController < ApplicationController
  before_action :set_snippet, only: [:edit, :update, :destroy, :delete]
  before_action :user_check, only:[:edit, :update, :destroy]

  def index
    @snippets = Snippet.all.order(created_at: :desc)
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new(snippet_params)
    if @snippet.valid?
      @snippet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit 
    
  end

  def update
    if @snippet.update(snippet_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy 
    if @snippet.user_id == current_user.id
      @snippet.destroy
    end
    redirect_to root_path
  end

  def delete
    
  end

  private

  def set_snippet
    @snippet = Snippet.find(params[:id])
  end

  def user_check
    redirect_to root_path if current_user.id != @snippet.user_id
  end

  def snippet_params
    params.require(:snippet).permit(:group_name, :info).merge(user_id: current_user.id)
  end
end

class TodosController < ApplicationController
  def index
    @tasks = Task.all.order(created_at: :desc)
  end

  def create
    @todo = Task.new(title: params[:title], content: params[:content])
    if @todo.save
      flash[:notice] = "投稿に成功しました"
      redirect_to("/")
    else
      flash[:notice] = "エラーが発生しました"
      render("/todos/new")
    end
  end

  def new

  end
end

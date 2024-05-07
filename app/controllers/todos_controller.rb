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

  def destroy
    task = Task.find_by(id: params[:id])
    if task.destroy
      flash[:notice] = "削除に成功しました"
      redirect_to("/")
    else
      flash[:notice] = "エラーが発生しました"
      render("/")
    end
  end

  def new
  end

  def edit
    @task = Task.find_by(id: params[:id])

  end

  def update
    @task = Task.find_by(id: params[:id])
    @task.content = params[:content]
    if @task.save
      flash[:notice] = "更新に成功しました"
      redirect_to("/")
    else
      flash[:notice] = "エラーが発生しました"
      redirect_to("/")
    end
  end
end

class TasksController < ApplicationController
  def all
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.create(task_params)

    redirect_to task_path(task)
  end

  def show
    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end

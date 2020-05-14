class TasksController < ApplicationController
  def new
    @task = Task.new
    @project = Project.all
    @user = User.all
  end

  def create
    @task = Task.new(task_params)
    @project = Project.all
    @user = User.all
    if @task.save
      redirect_to @task
    else
      render 'new'
    end 
  end

  def show
    @task = Task.find(params[:id])
  end

  def index
    @task = Task.all
  end

  private

  def task_params
    params.require(:task).permit(:task_name, :project_id, :user_id)
  end
end

class TaskEntriesController < ApplicationController
  def new
    @task_entry = TaskEntry.new
    @task = Task.all
  end

  def create
    @task_entry = TaskEntry.new(task_entry_params)
    @task = Task.all
    if @task_entry.save
      redirect_to @task_entry
    else
      render 'new'
    end
  end

  def show
    @task_entry = TaskEntry.find(params[:id])
  end

  def index
    @task_entry = TaskEntry.all
  end

  def edit
    @task_entry = TaskEntry.find(params[:id])
  end

  def update
    @task_entry = TaskEntry.find(params[:id])
    if @task_entry.stop_time(presence: true)
      @task_entry.duration = (params[:stop_time] - params[:start_time])
      @task_entry.duration.save!
    else
      render 'edit'
    end
  end

  private

  def task_entry_params
    params.require(:task_entry).permit(:task_id, :duration, :note, :start_time, :stop_time)
  end

end

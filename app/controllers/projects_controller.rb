class ProjectsController < ApplicationController
  def new
    @project = Project.new
    @customer = Customer.all
  end

  def create
    @project = Project.new(project_params)
    @customer = Customer.all
    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def index
    @project = Project.all
  end

  private

  def project_params
    params.require(:project).permit(:project_name, :customer_id)
  end

end

class ProjectsController < ApplicationController
  def index
    @projects = Project.order('created_at DESC')
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render action: 'new'
    end
  end

  def update
    if @project.update(project_params)
      redirect_to projects_path
    else
      render action: 'new'
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:foo, :bar, todos_attributes: [:isCompleted, :text])
  end
end

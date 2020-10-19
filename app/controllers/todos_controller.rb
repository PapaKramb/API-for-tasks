class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end

  def create
    @project = Project.find(params[:project_id])
    @todo = @project.todos.new(todo_params)
    if @todo.save
      redirect_to projects_path
    else
      render :new
    end
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)
  end

  private

  def todo_params
    params.require(:todo).permit(:text, :project_id)
  end
end

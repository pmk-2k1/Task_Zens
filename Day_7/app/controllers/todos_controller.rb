class TodosController < ApplicationController
  def index
    @unfinished_tasks = current_user.todos.where(is_complete: false)
  end

  def task_complete
    @complete_tasks = current_user.todos.where(is_complete: true)
  end

  def new
    @todo = current_user.todos.new
  end

  def create
    @toto = current_user.todos.new(todo_params)
    if @toto.save
      redirect_to user_todos_path(current_user)
    else
      redirect_to new_user_todo_path(current_user)
    end
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update(todo_params)
      redirect_to user_todos_path(current_user)
    else
      render action: :edit
      # redirect_to edit_user_todo_path(current_user)
    end 
  end

  def destroy
    Todo.find(params[:id]).destroy
    redirect_to user_todos_path(current_user)
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:title, :note, :time_start, :time_complete, :is_complete)
  end
end

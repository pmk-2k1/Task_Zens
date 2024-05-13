class TodoListsController < ApplicationController
  def index
    @unfinished_tasks = current_user.todo_lists.where(is_complete: false)
    render json: @unfinished_tasks
  end

  def task_complete
    @complete_tasks = current_user.todo_lists.where(is_complete: true)
    render json: @complete_tasks
  end

  def new
    @todo = current_user.todo_lists.new
  end

  def create
    @toto = current_user.todo_lists.new(todo_params)
    if @toto.save
      render json: {
        status: { code: 200, message: 'Create Todo successfully',
                  data: {
                    title: current_user.todo_lists.title,
                    note: current_user.todo_lists.note,
                    time_start: current_user.todo_lists.time_start,
                    time_complete: current_user.todo_lists.time_complete
                  } }
      }, status: :ok
    else
      render json: {
        status: { message: 'Create Todo false',
                  errors: resource.errors.full_messages }
      }, status: :unprocessable_entity
    end
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update(todo_params)
      render json: {
        status: { code: 200, message: 'Update Todo successfully',
                  data: {
                    title: current_user.todo_lists.title,
                    note: current_user.todo_lists.note,
                    time_start: current_user.todo_lists.time_start,
                    time_complete: current_user.todo_lists.time_complete
                  } }
      }, status: :ok
    else
      render json: {
        status: { message: 'Update Todo false',
                  errors: resource.errors.full_messages }
      }, status: :unprocessable_entity
    end
  end

  def destroy
    Todo.find(params[:id]).destroy
    render json: {
      status: { message: 'Destroy Todo successfully'}
    }
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:title, :note, :time_start, :time_complete, :is_complete)
  end
end

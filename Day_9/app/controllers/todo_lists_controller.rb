class TodoListsController < ApplicationController
  def index
    @unfinished_tasks = current_user.todo_lists.where(is_complete: false)
    render json: @unfinished_tasks
  end

  def task_complete
    @complete_tasks = current_user.todo_lists.where(is_complete: true)
    render json: @complete_tasks
  end

  def show
    @todo_list = current_user.todo_lists.find(params[:id])
    render json: @todo_list
  end

  def new
    @todo_list = current_user.todo_lists.new
  end

  def create
    @todo_list = current_user.todo_lists.new(todo_params)
    if @todo_list.save
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
      render json: @todo_list.errors, status: :unprocessable_entity
      # {
      #   status: { message: 'Create Todo false',
      #             # errors: resource.errors.full_messages,
      #             @todo_list.errors
      #           }
      # }, status: :unprocessable_entity
    end
  end

  def edit
    @todo_list = current_user.todo_lists.find(params[:id])
  end

  def update
    @todo_list = current_user.todo_lists.find(params[:id])
    if @todo_list.update(todo_params)
      render json: {
        status: { code: 200, message: 'Update Todo successfully',
                  data: {
                    title: current_user.todo_lists.title,
                    note: current_user.todo_lists.note,
                    time_start: current_user.todo_lists.time_start,
                    time_complete: current_user.todo_lists.time_complete,
                    is_complete: current_user.todo_lists.is_complete
                  } 
                }
      }, status: :ok
    else
      render json: @todo_list.errors, status: :unprocessable_entity
      # render json: {
      #   status: { message: 'Update Todo false',
      #             errors: resource.errors.full_messages }
      # }, status: :unprocessable_entity
    end
  end

  def destroy
    current_user.todo_lists.find(params[:id]).destroy
    render json: {
      status: { message: 'Destroy Todo successfully'}
    }
  end

  private

  def set_todo
    @todo_list = TodoList.find(params[:id])
  end

  def todo_params
    params.require(:todo_list).permit(:title, :note, :time_start, :time_complete, :is_complete)
  end
end

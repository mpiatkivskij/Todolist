class TasksController < ApplicationController
  before_action :set_task, only: %i[update show destroy edit]

  def create  
    task= Task.create(task_params)

    redirect_to task_path(task)
  end
 
  def update
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def destroy 
    @task.destroy

    redirect_to tasks_path
  end
  
  def show  
  end

  def index
    @tasks =Task.all
  end
  
  def new
    @task = Task.new
  end

  def edit
  end

  private

  def task_params
    params.require(:task).permit(:body, :user_id)
  end

  def set_task
    @task = Task.find(params[:id]) 
  end
end

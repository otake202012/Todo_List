class TasksController < ApplicationController

    def new
        @task = Task.new
    end

    def index
      @tasks = Task.all
    end

    def show
        @task = Task.find(params[:id])
    end

    def create
      @task = Task.new(task_params)
      @task.user_id = current_user.id
      if @task.save
        flash[:success] = "Create a new task"
        redirect_to user_url(current_user)
      else
        flash.now[:denger] = "Failed to cerate task."
        render 'new'
      end
    end

    def edit
        @task = Task.find(params[:id])
    end
    
    def update
      @task = Task.find(params[:id])
      if @task.update(task_params)
        flash[:success] = "Task updated."
        redirect_to user_path
      else
        flash[:danger] = "Failed to update task."
        render 'edit'
      end
    end

    def destroy
        @tasks = Task.all
        task = Task.find(params[:id])
        task.destroy
        render :index
    end

    private

    def task_params
        params.require(:task).permit(:state, :limit, :task)
    end

end

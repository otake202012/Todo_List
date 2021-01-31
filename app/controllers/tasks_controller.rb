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
        task = Task.new(task_params)
        task.save
        redirect_to '/tasks'
    end

    def edit
        @task = Task.find(params[:id])
    end
    
    def update
      @user = User.find(params[:id])
      if @user.save
        redirect_to 'show'
      else
        render 'show'
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

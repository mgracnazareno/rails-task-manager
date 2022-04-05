# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :find_task, only: w[show edit update destroy]

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show; end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = 'Object successfully created'
      redirect_to @task
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  def edit; end

  def update
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end

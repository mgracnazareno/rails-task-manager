class TasksController < ApplicationController

  def index
    @tasks = Tasks.all
  end

  def show
    @tasks = Tasks.find(params[:id])
  end
end

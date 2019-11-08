class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update!(task_params)
    redirect_to tasks_url, notice: "タスク　「#{task.name}」を更新しました。"
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to tasks_url, notice: "タスク「#{task.name}を削除しました。」"
  end

  def create
  @task = Task.new(task_params)

  if params[:image]
  @task.image_name = "#{@task.id}.jpg"
  image = params[:image]
  File.binwrite("public/user_images/#{@task.image_name}", image.read)
  end

  # if @task.save
  #   flash[:notice] = "タスク「#{@task.name}」を登録しました。"
  #   redirect_to("#")
  # else
  #   render("/tals/new")
  # end
  #
    @task.save!
    redirect_to tasks_url, notice: "タスク 「#{@task.name}」を登録しました。"
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end
end

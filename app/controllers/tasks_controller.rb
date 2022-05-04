class TasksController < ApplicationController
  before_action :set_user, only: %i[ new create ]
  after_action :set_team, only: %i[ create ]

  def new
    @task = @user.tasks.new
  end

  def create
    # @team = Team.find(params["task"]["team_id"])
    # pp @team

    @task = @user.tasks.create!(
      title: task_params[:title],
      description: task_params[:description],
      team_id: @team.id,
      user_id: @user.id
    )

    respond_to do |format|
      format.html { redirect_to @user}
    end
  end

  private
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_team
      @team = Team.find(params["task"]["team_id"])
    end

    def task_params
      params.require(:task).permit(:title, :description)
    end
end

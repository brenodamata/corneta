class Admin::PostsController < InheritedResources::Base
  # before_action :set_team

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = @team.posts
  end

  def update
    byebug
  end

  private
    # def set_team
    #   @team = Team.find(params[:team_id])
    # end

    def post_params
      params.require(:post).permit(:title, :description, :team_id, :admin_user_id)
    end
end

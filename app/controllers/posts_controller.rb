class PostsController < InheritedResources::Base
  before_action :set_team

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = @team.posts
  end

  def new
    @post = current_user.posts.build
  end

  def create

  end

  private
    def set_team
      @team = Team.friendly.find(current_user.team)
    end

    def post_params
      params.require(:post).permit(:title, :description, :team_id, :admin_user_id)
    end
end

class PostsController < InheritedResources::Base

  private

    def post_params
      params.require(:post).permit(:title, :description, :team_id, :admin_user_id)
    end
end


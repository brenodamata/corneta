class LeaguesController < InheritedResources::Base

  private

    def league_params
      params.require(:league).permit(:name, :year)
    end
end


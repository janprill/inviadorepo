class FeaturingsController < InheritedResources::Base

  private

    def featuring_params
      params.require(:featuring).permit(:featurable_id, :featurable_type, :description, :raw)
    end

end

class FeaturesController < InheritedResources::Base

  private

    def feature_params
      params.require(:feature).permit(:key, :source, :version, :period_desc, :period, :title, :description, :raw)
    end

end

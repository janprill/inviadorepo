class TaggingsController < InheritedResources::Base

  private

    def tagging_params
      params.require(:tagging).permit(:taggable_id, :taggable_type, :description, :raw)
    end

end

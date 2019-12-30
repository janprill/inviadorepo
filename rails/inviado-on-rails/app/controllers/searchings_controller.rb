class SearchingsController < InheritedResources::Base

  private

    def searching_params
      params.require(:searching).permit(:searchable_id, :searchable_type, :description, :raw)
    end

end

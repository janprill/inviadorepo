class LinkingsController < InheritedResources::Base

  private

    def linking_params
      params.require(:linking).permit(:linkable_id, :linkable_type, :description, :raw)
    end

end

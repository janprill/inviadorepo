class OrganizationsController < InheritedResources::Base

  private

    def organization_params
      params.require(:organization).permit(:type, :name, :description, :raw, :is_active, :corporate_form_id)
    end

end

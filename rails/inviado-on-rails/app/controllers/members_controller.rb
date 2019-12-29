class MembersController < InheritedResources::Base

  private

    def member_params
      params.require(:member).permit(:id, :name, :description, :bio, :raw, organizations_attributes: [ :id, :name, :description ])
    end

end

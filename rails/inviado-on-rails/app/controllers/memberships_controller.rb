class MembershipsController < InheritedResources::Base

  private

    def membership_params
      params.require(:membership).permit(:description, :raw, :membershipable_id, :membershipable_type)
    end

end

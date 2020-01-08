ActiveAdmin.register Featuring do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :featurable_id, :featurable_type, :description, :raw
  #
  # or
  #
  # permit_params do
  #   permitted = [:featurable_id, :featurable_type, :description, :raw]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

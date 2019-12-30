ActiveAdmin.register Tagging do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :taggable_id, :taggable_type, :description, :raw
  #
  # or
  #
  # permit_params do
  #   permitted = [:taggable_id, :taggable_type, :description, :raw]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

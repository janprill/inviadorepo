ActiveAdmin.register Organization do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :type, :name, :description, :raw, :is_active, :corporate_form_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:type, :name, :description, :raw, :is_active, :corporate_form_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

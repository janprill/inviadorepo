ActiveAdmin.register Feature do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :key, :source, :path, :version, :period_desc, :period, :title, :description, :raw
  #
  # or
  #
  # permit_params do
  #   permitted = [:key, :source, :path, :version, :period_desc, :period, :title, :description, :raw]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

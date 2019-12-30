ActiveAdmin.register Organization do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :type, :name, :description, :raw, :is_active, :corporate_form_id,
    links_attributes: [:id, :title, :uri]
  
  #
  # or
  #
  # permit_params do
  #   permitted = [:type, :name, :description, :raw, :is_active, :corporate_form_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  json_editor

  form do |f|
    f.semantic_errors

    f.inputs "Organizatons" do 
      f.input :name
      f.input :description
      f.input :raw, as: :jsonb
    end
    f.has_many :links do |org|
      org.input :title
      org.input :uri
    end
    
    f.actions
  end
  
end

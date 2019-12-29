ActiveAdmin.register Member do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :description, :bio, 
    organizations_attributes: [:id, :name, :description]
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :bio, :raw]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors

    f.inputs "Members" do 
      f.input :name
    end
    f.has_many :organizations do |org|
      org.input :name
      org.input :description
    end
    
    f.actions
  end
  
end

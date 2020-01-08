ActiveAdmin.register Organization do

  index do
    column :id
    column :name
    column :is_active
    column :uri
    column :updated_at
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :classification, :name, :description, :raw, :is_active, :corporate_form_id, :source, :notes, :uri,
    links_attributes: [:id, :title, :uri, :is_active],
    searchresults_attributes: [:id, :query, :source],
    tags_attributes: [:id, :name, :description],
    features_attributes: [:id, :key, :source, :raw]
  
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
      f.input :notes
      f.input :is_active
      f.input :source
      f.input :uri
      f.input :raw, as: :jsonb
    end
    f.has_many :links do |link|
      link.input :title
      link.input :uri
      link.input :is_active
      div 
        a link.object.uri, href:link.object.uri, target: "_blank"
    end
    f.has_many :tags do |tag|
      tag.input :name
      tag.input :description
    end
    f.has_many :searchresults do |result|
      result.input :query
      result.input :source
    end
    f.has_many :features do |feature|
      feature.input :key
      feature.input :source
      feature.input :raw, as: :jsonb
    end

    
    f.actions
  end
  
end

ActiveAdmin.register Post do
  permit_params :title, :description, :team_id
  #  permit_resource_params :title, :body
   # If user want to get full access to permitted_params, he'll use this method, telling all parameters he with to whitelist
  #  permit_params post: [ :title, :body ], :utf, :id

  index do
    selectable_column
    id_column
    column :title
    column :team
    actions
  end

  filter :team

  form do |f|
    f.inputs "Post Details" do
      f.input :title
      f.input :description
      f.input :team
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end

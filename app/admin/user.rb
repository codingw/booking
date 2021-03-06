ActiveAdmin.register User do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  #

  filter :username
  filter :email


  permit_params :username

  scope :active
  scope :inactive

  index :download_links => [:pdf] do
    column :id
    column :username
    default_actions
  end


  form do |f|
    f.inputs do
      f.input :username
      f.input :email
    end
    f.actions
  end
end

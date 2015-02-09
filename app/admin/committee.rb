ActiveAdmin.register Committee do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :logo

  index do
    selectable_column
    id_column
    column :name
    column :logo, as: :grid do |committee|
      link_to image_tag(committee.logo)
    end
    actions
  end

  show do
    attributes_table do
      row :name
      row :logo do |logo|
        image_tag committee.logo
      end
    end
  end

  #
  # or
  #
  # permit_params do
    # permitted = [:permitted, :attributes]
    # permitted << :other if resource.something?
    # permitted
  # end

end

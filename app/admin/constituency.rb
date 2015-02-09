ActiveAdmin.register Constituency do

  permit_params :name, :number_of_voters, :card_number, :votes

  index do 
   #column :id
    column :name
    column :number_of_voters
    column :card_number
    column :votes
  end
  
  show do
    #column :id
    column :name
    column :number_of_voters
    column :card_number
    column :votes
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

ActiveAdmin.register Useeer do

  permit_params :login, :password, :password_confirmation, :role, :name, :surname#, :constituency

  actions :all

  index do
    selectable_column
    id_column
    column :login
    column :name
    column :surname
    column :role
   # column :constituency
    column :created_at

    actions defaults: true do |useeer|

    end
  
  end

  show do
    attributes_table do
      row :login
      row :name
      row :surname
      row :role
     # row :constituency
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs "User Details" do
      f.input :login
      f.input :name
      f.input :surname
     # f.input :constituency	
      f.input :role, :label => 'Role', :as => :select, :collection => Useeer::ROLES
      f.input :password
      #f.input :password_confirmation
    end
    f.actions
  end

end

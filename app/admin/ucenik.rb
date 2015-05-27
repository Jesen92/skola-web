ActiveAdmin.register Ucenik do
 
 menu label: "Ucenici"

permit_params :name, :OIB, :adresa, :group_id
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

  index do
    column :id 
    column :name, :sortable => :name
    column :group, :sortable => :group
    column :created_at, :sortable => :created_at
    actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :name, :label => "Ime i prezime"
      f.input :OIB, :label => "OIB"
      f.input :adresa, :label => "Adresa"
      f.input :group, :label => "Grupa"
      f.actions
    end
  end
end

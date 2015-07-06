ActiveAdmin.register Event do

menu label: "Predavanja"

 index :title => 'Predavanja' do
    selectable_column
    column :id
    column :title, :sortable => :title
    column :start_at, :sortable => :start_at
    column :end_at, :sortable => :end_at
    column :profesor
    column :group
    column :created_at
    actions
  end

permit_params :title, :start_at, :end_at, :allDay, :profesor_id, :repeat, :repeat_until, :group_id
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

  form do |f|
    f.inputs "Details" do
      f.input :title, :label => "Title"
      f.input :profesor, :label => "Profesor"
      f.input :group, :label => "Grupa"
      f.input :start_at, :label => "Počinje: "
      f.input :end_at, :label => "Završava"
      f.input :repeat, :label => "Repeat"
      f.input :repeat_until, :label => "Repeat until"
      f.actions
    end
  end

end

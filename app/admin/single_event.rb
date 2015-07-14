ActiveAdmin.register SingleEvent do
permit_params :odrzano, :title,:start, :end, :br_pred, :start_date, :single_event, :end_date, :allDay, :where_id, :profesor_id, :repeat, :repeat_until, :group_id, :recurring_rule, :event_id, day_ids: []
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
config.clear_action_items!

menu label: "Predavanja"

 index :title => 'Predavanja' do
    selectable_column
    column :id
    column :title, :sortable => :title
    column :start, :sortable => :start_time
    column :end, :sortable => :end_time
    column :date
    column :where
    column :profesor
    column :group
    column :created_at
    actions
  end


end

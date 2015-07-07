ActiveAdmin.register Event do

menu label: "Predavanja"

 index :title => 'Predavanja' do
    selectable_column
    column :id
    column :title, :sortable => :title
    column :start, :sortable => :start_time
    column :end, :sortable => :end_time
    column :start_date
    column :end_date
    column :days
    column :profesor
    column :group
    column :created_at
    actions
  end

permit_params :title,:start_time, :end_time, :start_date, :end_date, :allDay, :profesor_id, :repeat, :repeat_until, :group_id, :recurring_rule, day_ids: []
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

show do
    attributes_table do
      row :id
      row :title
      row :profesor
      row :group
      row :start
      row :end
      row :start_date
      row :end_date

      row :created_at
      row :updated_at

      
    end
  end

  sidebar "Tjedno se ponavlja:", only: [:show] do
    table_for event.days do 
          column :name do |day|
           day.name
      end
    end
  end


  form do |f|
    f.inputs "Details" do
      f.input :title, :label => "Title"
      f.input :profesor, :label => "Profesor"
      f.input :group, :label => "Grupa"
      f.input :start, :label => "Vrijeme početka:",:as => :time_picker
      f.input :end, :label => "Vrijeme završetka:",:as => :time_picker

      f.input :start_date, :label => "Datum početka:", :as => :datepicker, datepicker_options: { dateFormat: "yy/mm/dd" }
      f.input :end_date, :label => "Datum završetka:", :as => :datepicker, datepicker_options: { dateFormat: "yy/mm/dd" }

      f.input :days, :as => :check_boxes

      end
      f.inputs "Ponavljanje" do
        f.input :recurring_rule, :as=> :select, :input_html => { :class => 'recurring_select'}, :collection => options_for_select([[ "- not recurring -" , "null"],["Set schedule..." , "custom" ]], [ "- not recurring -" , "null"])
     end
      f.actions
  end

end

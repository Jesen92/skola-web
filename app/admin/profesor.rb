ActiveAdmin.register Profesor do

menu label: "Profesori"

 

permit_params :name, :OIB, :adresa, :group, :jezik, :radi_za_nas, :komentar,:sudski_tumac,:mobitel,:telefon,:mail,:obrazovanje,:karijerska_pozicija,:inozemno_iskustvo,:datum_rodenja,:mjesto_rodenja,:postanski_broj ,:grad, :racun_banke
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
      f.input :name, :label => "Ime i prezime"
      f.input :OIB, :label => "OIB"
      f.input :adresa, :label => "Adresa"
  	  f.input :jezik
  	  f.input :radi_za_nas
  	  f.input :komentar
  	  f.input :sudski_tumac
  	  f.input :mobitel
  	  f.input :telefon
  	  f.input :mail
  	  f.input :obrazovanje
  	  f.input :karijerska_pozicija
  	  f.input :inozemno_iskustvo
  	  f.input :datum_rodenja, start_year: 1920, end_year: Time.now.year
  	  f.input :mjesto_rodenja
  	  f.input :grad
  	  f.input :postanski_broj
  	  f.input :racun_banke

      f.actions
    end
  end

index do
	selectable_column
	column :name
	column :OIB
	column :jezik
	column :radi_za_nas
	column :sudski_tumac
	column :obrazovanje
	column :grad , :label => "Prebivalište"
	column :karijerska_pozicija
	column :inozemno_iskustvo
	actions
end

end

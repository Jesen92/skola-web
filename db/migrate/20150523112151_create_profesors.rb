class CreateProfesors < ActiveRecord::Migration
  def change
    create_table :profesors do |t|
      t.string :name 
      t.integer :OIB
      t.string :adresa
      t.string :jezik

      t.timestamps
    end
  end
end

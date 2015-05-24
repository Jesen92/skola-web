class CreateUceniks < ActiveRecord::Migration
  def change
    create_table :uceniks do |t|
      t.string :ime
      t.string :prezime
      t.integer :OIB
      t.string :adresa

      t.timestamps
    end
  end
end

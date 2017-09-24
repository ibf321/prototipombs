class CreateOperatingUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :operating_units do |t|
      t.string :name
      t.string :uf
      t.references :donor, foreign_key: true
      t.references :institution, foreign_key: true
      t.references :user, foreign_key: true
      t.references :educational, foreign_key: true
      t.integer :user_id
      t.integer :educational_id
      t.integer :donor_id
      t.integer :institution_id


      t.timestamps
    end
  end
end

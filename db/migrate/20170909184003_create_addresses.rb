class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :city
      t.string :state
      t.string :neighborhood
      t.string :street
      t.string :number
      t.string :complement
      t.string :zip_code
      t.references :donor, foreign_key: true
      t.integer :donor_id
      t.references :institution, foreign_key: true
      t.integer :institution_id
    
      t.timestamps
    end
  end
end

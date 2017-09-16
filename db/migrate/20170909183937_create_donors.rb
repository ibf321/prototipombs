class CreateDonors < ActiveRecord::Migration[5.1]
  def change
    create_table :donors do |t|
      t.string :reason
      t.string :fantasy
      t.integer :kind
      t.string :cnpj_number
      t.string :cpf
      t.date :registration_data
      t.string :email      
      t.text :obs
      t.string :phone
      t.integer :status
      t.integer :disclosure
      t.text :obs
      t.integer :address_id
      t.integer :additional_id
      t.integer :responsible_id

      t.timestamps
    end
  end
end

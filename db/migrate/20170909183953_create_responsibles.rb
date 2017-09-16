class CreateResponsibles < ActiveRecord::Migration[5.1]
  def change
    create_table :responsibles do |t|
      t.string :name
      t.string :rg
      t.string :cpf
      t.string :function
      t.string :phone
      t.string :email
      t.references :donor, foreign_key: true
      t.references :institution, foreign_key: true
      t.integer :donor_id
      t.integer :institution_id

      t.timestamps
    end
  end
end

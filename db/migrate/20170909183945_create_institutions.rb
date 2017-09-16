class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.integer :status
      t.integer :cooperation
      t.string :motive
      t.string :reason
      t.string :fantasy
      t.string :cnpj
      t.string :public
      t.string :activity
      t.string :genre
      t.string :email
      t.date :registration_date
      t.text :obs
      t.string :category
      t.integer :small_meals
      t.integer :large_meals
      t.integer :address_id
      t.integer :withdrawal_id
      t.integer :ageranger_id
     

      t.timestamps
    end
  end
end

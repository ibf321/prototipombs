class CreateParticipants < ActiveRecord::Migration[5.1]
  def change
    create_table :participants do |t|
      t.string :name
      t.string :institution
      t.string :phone
      t.string :email
      t.integer :educationl_id
      t.references :educational, foreign_key: true
      

      t.timestamps
    end
  end
end

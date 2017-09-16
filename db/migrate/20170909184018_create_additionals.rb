class CreateAdditionals < ActiveRecord::Migration[5.1]
  def change
    create_table :additionals do |t|
      t.string :kind_donor
      t.string :donation
      t.string :site
      t.string :activity
      t.references :donor, foreign_key: true
      t.integer :donor_id

      t.timestamps
    end
  end
end

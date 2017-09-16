class CreateAgerangers < ActiveRecord::Migration[5.1]
  def change
    create_table :agerangers do |t|
      t.integer :f0004
      t.integer :f0509
      t.integer :f1011
      t.integer :f1217
      t.integer :f1819
      t.integer :f2059
      t.integer :f6000
      t.references :institution, foreign_key: true
      t.integer :institution_id

      t.timestamps
    end
  end
end

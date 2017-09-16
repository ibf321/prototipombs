class CreateWithdrawals < ActiveRecord::Migration[5.1]
  def change
    create_table :withdrawals do |t|
      t.integer :monday
      t.integer :tuesday
      t.integer :wednesday
      t.integer :thursday
      t.integer :friday
      t.integer :sunday
      t.integer :sunday
      t.references :institution, foreign_key: true
      t.integer :institution_id

      t.timestamps
    end
  end
end

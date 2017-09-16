class CreateOperatingUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :operating_units do |t|
      t.string :name
      t.string :uf

      t.timestamps
    end
  end
end

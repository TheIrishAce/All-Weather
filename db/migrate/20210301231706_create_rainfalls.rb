class CreateRainfalls < ActiveRecord::Migration[6.1]
  def change
    create_table :rainfalls do |t|
      t.decimal :amount
      t.boolean :warning_yellow
      t.boolean :warning_orange
      t.boolean :warning_red
      t.references :forecast, null: false, foreign_key: true

      t.timestamps
    end
  end
end

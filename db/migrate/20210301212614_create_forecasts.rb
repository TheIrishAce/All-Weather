class CreateForecasts < ActiveRecord::Migration[6.1]
  def change
    create_table :forecasts do |t|
      t.string :day
      t.date :date
      t.string :forecast

      t.timestamps
    end
  end
end

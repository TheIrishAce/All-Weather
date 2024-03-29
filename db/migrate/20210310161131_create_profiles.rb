class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

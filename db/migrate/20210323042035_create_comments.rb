class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :message
      t.references :blogpost, null: false, foreign_key: true

      t.timestamps
    end
  end
end

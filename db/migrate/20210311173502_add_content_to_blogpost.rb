class AddContentToBlogpost < ActiveRecord::Migration[6.1]
  def change
    add_column :blogposts, :content, :text
  end
end

class AddCountsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :posts_count, :integer, default: 0
    add_column :users, :albums_count, :integer, default: 0
  end
end

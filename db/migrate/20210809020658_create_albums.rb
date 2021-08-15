class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.belongs_to :user
      t.string :title
      t.string :description
      t.integer :sharing_mode

      t.timestamps
    end
  end
end

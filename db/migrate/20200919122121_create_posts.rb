class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :price
      t.string :store
      t.string :address
      t.string :image_path
      t.text :comment
      t.integer :user_id

      t.timestamps
    end
  end
end

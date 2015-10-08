class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :beer_name
      t.string :brewer
      t.string :city
      t.string :image

      t.timestamps null: false
    end
  end
end

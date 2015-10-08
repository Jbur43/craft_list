class FixColumn < ActiveRecord::Migration
  def change
  	rename_column :posts, :image, :avatar
  end
end

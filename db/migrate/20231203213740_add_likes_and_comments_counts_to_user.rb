class AddLikesAndCommentsCountsToUser < ActiveRecord::Migration[7.0]
  def change
    
      add_column :user, :likes_count, :integer, default: 0
      add_column :user, :comments_count, :integer, default: 0
    
  
  end
end

class RenameUserIdtoFanId < ActiveRecord::Migration[7.0]
  
    def change
      rename_column :likes, :user_id, :fan_id
    end
  
end

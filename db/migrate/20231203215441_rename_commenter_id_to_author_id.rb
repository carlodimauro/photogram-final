class RenameCommenterIdToAuthorId < ActiveRecord::Migration[7.0]
  
    def change
      rename_column :comments, :commenter_id, :author_id
    end
  
end

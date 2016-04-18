class AddCommentableToComments < ActiveRecord::Migration
  def up
    change_table :comments do |t|
      t.references :commentable, polymorphic: true, index: true
    end
  end
  
  def down
    change_table :comments do |t|
      t.references :commentable, polymorphic: true, index: true
    end
  end
end

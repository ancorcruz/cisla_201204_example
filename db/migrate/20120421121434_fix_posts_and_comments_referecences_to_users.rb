class FixPostsAndCommentsReferecencesToUsers < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.remove :user
      t.references :user
    end

    change_table :comments do |t|
      t.remove :user
      t.references :user
    end
  end
end

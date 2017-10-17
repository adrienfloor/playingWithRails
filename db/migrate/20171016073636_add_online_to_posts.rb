class AddOnlineToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :online, :boolean, default: false
  end
end

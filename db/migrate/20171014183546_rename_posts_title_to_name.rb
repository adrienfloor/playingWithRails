class RenamePostsTitleToName < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.rename :title, :name
      t.timestamps
    end
  end
end

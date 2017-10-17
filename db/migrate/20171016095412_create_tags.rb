class CreateTags < ActiveRecord::Migration
  def up
      drop_table :tags

      create_table :tags do |t|
      t.string :name
    end
   end


end

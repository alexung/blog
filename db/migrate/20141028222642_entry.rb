class Entry < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.string :author
      t.text :body
      t.text :tags

      t.timestamps
    end
  end
end

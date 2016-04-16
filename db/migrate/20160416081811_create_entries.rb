class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.date :ate
      t.text :contents

      t.timestamps
    end
  end
end

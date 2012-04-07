class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name
      t.string :link
      t.string :lang
      t.text :page

      t.timestamps
    end
  end
end

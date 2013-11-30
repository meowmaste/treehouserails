class CreateSatus < ActiveRecord::Migration
  def change
    create_table :satus do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end

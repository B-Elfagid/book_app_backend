class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :image
      t.string :title
      t.string :author
      t.text :description
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end

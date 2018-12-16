class ArticlesMigration < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.timestamps
      t.string :title
      t.text :content
      t.decimal :price
      t.integer :user_id
      t.integer :category_id
    end
  end
end

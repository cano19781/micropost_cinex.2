class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.integer :user_id
      t.references :user, index: true

      t.timestamps
    end
  end
end

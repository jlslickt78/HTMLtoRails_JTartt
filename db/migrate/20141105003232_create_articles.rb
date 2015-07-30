class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :article_title
      t.string :article_author
      t.datetime :article_published
      t.boolean :article_published?
      t.text :content
      t.string :article_avatar

      t.timestamps
    end
  end
end

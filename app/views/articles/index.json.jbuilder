json.array!(@articles) do |article|
  json.extract! article, :id, :article_title, :article_author, :article_published, :article_published?, :content, :article_avatar
  json.url article_url(article, format: :json)
end

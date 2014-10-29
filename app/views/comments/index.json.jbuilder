json.array!(@comments) do |comment|
  json.extract! comment, :id, :commenter, :body, :user_id, :user_id, :article_id
  json.url comment_url(comment, format: :json)
end

json.extract! blogpost, :id, :title, :category, :author, :image_url, :created_at, :updated_at
json.url blogpost_url(blogpost, format: :json)

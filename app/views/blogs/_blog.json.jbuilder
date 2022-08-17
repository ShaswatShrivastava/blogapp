json.extract! blog, :id, :first_name, :last_name, :email, :title, :content, :created_at, :updated_at
json.url blog_url(blog, format: :json)

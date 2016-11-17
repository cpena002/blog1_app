json.extract! blog_post, :id, :title, :message, :user_id, :created_at, :updated_at
json.url blog_post_url(blog_post, format: :json)
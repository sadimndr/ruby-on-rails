json.extract! railsblog, :id, :title, :upload, :description, :created_at, :updated_at
json.url railsblog_url(railsblog, format: :json)

json.array!(@homepages) do |homepage|
  json.extract! homepage, :id, :Content, :User_id
  json.url homepage_url(homepage, format: :json)
end

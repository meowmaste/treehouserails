json.array!(@satus) do |satu|
  json.extract! satu, :name, :content
  json.url satu_url(satu, format: :json)
end

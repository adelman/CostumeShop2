json.array!(@costumes) do |costume|
  json.extract! costume, :cid, :description, :wd, :photo, :back
  json.url costume_url(costume, format: :json)
end
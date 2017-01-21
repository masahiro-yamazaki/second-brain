json.array!(@memos) do |memo|
  json.extract! memo, :body
  json.url memo_url(memo, format: :json)
end
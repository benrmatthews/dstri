json.array!(@communities) do |community|
  json.extract! community, :id, :name, :about, :link, :rss_feed
  json.url community_url(community, format: :json)
end

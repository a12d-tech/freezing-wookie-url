json.link do
  json.id           @link.id
  json.original_url @link.original_url
  json.short_url    @link.short_url
  json.views        @link.views
  json.user_id      @link.user_id
end
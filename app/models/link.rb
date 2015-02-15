class Link
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :user, inverse_of: :links

  field :original_url, type: String, default: ""
  field :short_url,    type: String, default: ""
end

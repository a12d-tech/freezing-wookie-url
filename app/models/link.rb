require 'url_encoder'

class Link
  include Mongoid::Document
  include Mongoid::Timestamps

  include Utils

  before_save :generate_slug

  belongs_to :user

  field :original_url, type: String,  default: ""
  field :slug,         type: String,  default: ""
  field :views,        type: Integer, default: 0

  validates :original_url, presence: true
  validates :user,         presence: true

  def short_url
    "#{ENV.fetch('HOSTNAME')}/#{slug}"
  end

  def viewed
    self.views += 1
    self.save
  end

  private

  def generate_slug
    self.slug = UrlEncoder.encode_base_62(id.to_s.hex)
  end

end

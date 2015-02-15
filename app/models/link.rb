class Link
  include Mongoid::Document
  include Mongoid::Timestamps

  before_save :generate_slug

  embedded_in :user, inverse_of: :links

  field :original_url, type: String, default: ""
  field :slug,         type: String, default: ""

  validates :original_url, presence: true

  def short_url
    "#{ENV.fetch('HOSTNAME')}#{slug}"
  end

  private

  def generate_slug
    self.slug = "#{id}"
  end

end

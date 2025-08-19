class Link < ApplicationRecord
  belongs_to :user
  has_many :clicks, dependent: :destroy

  validates :original_url, presence: true, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])

  before_create :generate_short_code

  private

  def generate_short_code
    self.short_code = SecureRandom.alphanumeric(6)
  end
end

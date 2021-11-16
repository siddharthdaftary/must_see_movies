class MovieResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :string
  attribute :description, :string
  attribute :year, :date
  attribute :duration, :string
  attribute :director_id, :integer

  # Direct associations

  has_many   :reviews

  has_many   :bookmarks

  has_many   :characters

  belongs_to :director

  # Indirect associations

end

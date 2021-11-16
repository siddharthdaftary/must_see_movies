class Movie < ApplicationRecord
  # Direct associations

  has_many   :reviews,
             dependent: :destroy

  has_many   :bookmarks,
             dependent: :destroy

  has_many   :characters,
             dependent: :destroy

  belongs_to :director

  # Indirect associations

  has_many   :cast,
             through: :characters,
             source: :actor

  # Validations

  # Scopes

  def to_s
    title
  end
end

class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # validates :movie, :list, presence: true

  validates :comment, presence: true, lenght: { minimum: 6 }
end

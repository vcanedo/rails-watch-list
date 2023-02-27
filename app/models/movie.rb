class Movie < ApplicationRecord
  validates :title, :overview, uniqueness: true, presence: true

  has_many :bookmarks

end

# def after_destroy(picture_file)
#   if File.exists?(picture_file.filepath)
#     File.delete(picture_file.filepath)
#   end
# end
#   before_destroy :normalize_card_number, :if => "Movie.bookmark.exists?"

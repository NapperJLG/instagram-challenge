class Post < ApplicationRecord
belongs_to :user
has_one_attached :post_picture
has_many :comments
has_many :posts

def gallery_view
  return self.post_picture.variant(resize: '300x300').processed
end

def post_view
  return self.post_picture.variant(resize: '600x600').processed
end
end

class Post < ApplicationRecord
has_one_attached :post_picture

def gallery_view
  return self.post_picture.variant(resize: '300x300').processed
end
end

class Tweet < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates :image, presence: {message: "ねこ写真を選んで投稿してにゃん！"}
end

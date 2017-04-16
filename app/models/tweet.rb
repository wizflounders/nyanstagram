class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  mount_uploader :image, ImageUploader
  validates :image, presence: {message: "ねこ写真を選んで投稿してにゃん！"}

end

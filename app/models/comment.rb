# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  photo_id   :integer
#

class Comment < ApplicationRecord
  validates(:commenter, { :presence => true })
  belongs_to(:commenter, class_name: "User", foreign_key: "author_id", primary_key: "id")
  belongs_to(:photo, class_name: "Photo", foreign_key: "photo_id", primary_key: "id")
end

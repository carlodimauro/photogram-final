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
  validates :photo_id, presence: true
  validates :author_id, presence: true
  validates :body, presence: true
end

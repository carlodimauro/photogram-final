# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo_id   :integer
#  user_id    :integer
#
class Like < ApplicationRecord
  validates :user_id, presence: true
  validates :photo_id, presence: true
  validates :photo_id, uniqueness: { scope: ["user_id"], message: "already liked" }
end

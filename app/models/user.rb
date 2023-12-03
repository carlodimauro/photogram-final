# == Schema Information
#
# Table name: users
#
#  id                             :integer          not null, primary key
#  avatar_img                     :string
#  bio                            :string
#  comments_count                 :integer          default(0)
#  email                          :string           default(""), not null
#  encrypted_password             :string           default(""), not null
#  likes_count                    :integer          default(0)
#  own_photos_count               :integer
#  private                        :boolean
#  received_follow_requests_count :integer
#  remember_created_at            :datetime
#  reset_password_sent_at         :datetime
#  reset_password_token           :string
#  sent_follow_requests_count     :integer
#  username                       :string
#  website                        :string
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

validates :username, presence: true
validates :username, uniqueness: true


end
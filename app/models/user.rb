class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :cards, dependent: :destroy
  validates_presence_of :username
  mount_uploader :profile_pic, ImageUploader
end

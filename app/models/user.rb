class User < ApplicationRecord
  validates :full_name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one_attached :image

         has_many :job_offers, dependent: :destroy

         enum role: [:user, :admin]
         after_initialize :set_default_role, :if => :new_record?
         
         def  set_default_role
          self.role = :user
         end
end

class User < ActiveRecord::Base
  belongs_to :team
  has_many :problem, through: :solve
  has_many :solve
  has_many :sent_flag
  has_many :person_chart

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :account, presence: true, uniqueness: true

  def email_required?
    false
  end
end

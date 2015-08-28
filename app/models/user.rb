class User < ActiveRecord::Base
  belongs_to :team
  has_many :problems, through: :solve
  has_many :solve
  has_many :sent_flag
  has_many :person_chart
  has_many :problem

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :account, presence: true, uniqueness: true, length: {in: 1..255}
  #validates :admin_flag

  def email_required?
    false
  end
end

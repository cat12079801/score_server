class User < ActiveRecord::Base
  has_many :problems, through: :solve
  has_many :solve
  has_many :sent_flag
  has_many :problem

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:twitter]

  #validates :account, presence: true, uniqueness: true, length: {in: 1..255}
  #validates :admin_flag

  def administor?
    uid == '1277365728'
  end

  def point
    problems.pluck(:point).sum
  end


  def email_required?
    false
  end

  def self.from_omniauth(auth)
    # providerとuidでUserレコードを取得する
    # 存在しない場合は、ブロック内のコードを実行して作成する
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      # auth.provider には "twitter"、
      # auth.uidには twitterアカウントに基づいた個別のIDが入っている
      # first_or_createメソッドが自動でproviderとuidを設定してくれるので、
      # ここでは設定は必要ない
      user.screen_name = auth.info.nickname # twitterで利用している名前が入る
      user.email = auth.info.email # twitterの場合入らない
    end
  end

  # Devise の RegistrationsController はリソースを生成する前に self.new_sith_session を呼ぶ
  # つまり、self.new_with_sessionを実装することで、サインアップ前のuserオブジェクトを初期化する
  # ときに session からデータをコピーすることができます。
  # OmniauthCallbacksControllerでsessionに値を設定したので、それをuserオブジェクトにコピーします。
  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

  # providerがある場合（Twitter経由で認証した）は、
  # passwordは要求しないようにする。
  def password_required?
    super && provider.blank?
  end
end

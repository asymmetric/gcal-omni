class User < ActiveRecord::Base
  has_many :clients

  def self.create_with_omniauth(auth)
    begin
      create! do |user|
        user.uid = auth['uid']
        user.name = auth['user_info']['name']
        user.email = auth['user_info']['email']
      end
    rescue Exception
      raise Exception, "cannot create user record"
    end
  end
end

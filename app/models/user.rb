class User < ActiveRecord::Base
  acts_as_authentic
  has_many :authentications
  def apply_omniauth(omniauth)

    # Update user info fetching from social network
    case omniauth['provider']
      when 'facebook'
        self.email = omniauth['info']['email']
        self.login = omniauth['info']['nickname']
        self.password = self.password_confirmation = omniauth['info']['nickname']
      #<OmniAuth::AuthHash credentials=#<Hashie::Mash expires=false token="AAACGtYXZCJa8BAJk2YfPVw2DaKfOlbebx9MQ5P61oNX4jhsZAHe5d0vdUHOsiTZAQS7sKZAROte32Xj1FArgxLUGiycONRsZD">
          #                    extra=#<Hashie::Mash
          #                         raw_info=#<Hashie::Mash
          #                                   email="gokhan@sylow.net"
          #                                   first_name="Gokhan"
          #                                   gender="male"
          #                                   id="502910477"
          #                                   last_name="Arli"
          #                                   link="http://www.facebook.com/gokhan.arli"
          #                                   locale="tr_TR"
          #                                   name="Gokhan Arli"
          #                                   timezone=1
          #                                   updated_time="2011-06-25T08:21:32+0000"
          #                                   username="gokhan.arli"
          #                                   verified=true>>
          #                   info=#<OmniAuth::AuthHash::InfoHash
          #                         email="gokhan@sylow.net"
          #                         first_name="Gokhan"
          #                         image="http://graph.facebook.com/502910477/picture?type=square"
          #                         last_name="Arli"
          #                         name="Gokhan Arli" nickname="gokhan.arli"
          #                         urls=#<Hashie::Mash Facebook="http://www.facebook.com/gokhan.arli">>
          #                   provider="facebook"
          #                   uid="502910477">
        # fetch extra user info from facebook
    end
  end
end

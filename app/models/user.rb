class User < ApplicationRecord
    belongs_to :business
    validates :email, presence: :true

    def self.from_omniauth(auth)
        # Creates a new user only if it doesn't exist
        where(email: auth.info.email).first_or_initialize do |user|
            user.f_name = auth.info.first_name
            user.l_name = auth.info.last_name
            user.email = auth.info.email
            user.business_id = 1
        end
    end
end

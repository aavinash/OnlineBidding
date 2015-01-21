class User < ActiveRecord::Base

  has_one :user_profile
  has_one :company_detail
end

class User < ActiveRecord::Base
  PERMITTED_ROLES = %w(customer admin restaurant_owner)
  
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :role
  validates :role, inclusion: { in: PERMITTED_ROLES,
                               message: '%{value} is not permitted'}
end

class User < ActiveRecord::Base
  PERMITTED_ROLES = %w(customer admin restaurant_owner)

  has_one :restaurant
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :role
  validates :role, inclusion: { in: PERMITTED_ROLES,
                               message: '%{value} is not permitted'}

  def admin?
    self.role == 'admin'
  end

  def rest_owner?
    self.role == 'restaurant_owner'
  end
end
class Member < ActiveRecord::Base
  has_many :memberships
  belongs_to :supervisor, :counter_cache => true
end

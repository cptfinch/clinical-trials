class Trial < ActiveRecord::Base
  has_many :memberships, :as => :project
  has_many :members, :through => :memberships
end

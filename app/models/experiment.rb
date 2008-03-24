class Experiment < ActiveRecord::Base
  has_many :memberships, :as => :project
end

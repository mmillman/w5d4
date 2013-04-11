class Team < ActiveRecord::Base
  attr_accessible :name, :supervisor_id

  belongs_to :supervisor, :class_name => "Employee"
  # Implement :dependent => :destroy so team_memberships are destroyed for the
  # team
  has_many :memberships, :class_name => "TeamMembership"
  has_many :members, :through => :team_memberships, :source => :employee
end

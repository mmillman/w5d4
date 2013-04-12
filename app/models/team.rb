class Team < ActiveRecord::Base
  attr_accessible :name, :supervisor_id, :member_ids

  belongs_to :supervisor, :class_name => "Employee"
  # Implement :dependent => :destroy so team_memberships are destroyed for the
  # team
  has_many :memberships, :class_name => "TeamMembership"
  has_many :members, :through => :memberships, :source => :employee

  # def self.new(hash)
  #   @team = Team.new
  #   hash.each do |key, value|
  #     raise MassAssignmentError unless attr_accessible_list.include?(key)
  #     @team.send("#{key}=".to_sym, value)
  #     @team.employee_ids=([5, 10, 12])
  #   end
  # end
end

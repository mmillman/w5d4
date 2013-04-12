class Employee < ActiveRecord::Base
  attr_accessible :supervisor_id, :profile_attributes, :team_memberships_attributes


  belongs_to :supervisor, :class_name => "Employee"
  has_many :subordinates, :class_name => "Employee", :foreign_key => :supervisor_id

  has_many :team_memberships
  has_many :teams, :through => :team_memberships

  has_many :supervised_teams, :class_name => "Team", :foreign_key => :supervisor_id
  has_one :profile, :class_name => "EmployeeProfile", :inverse_of => :employee

  accepts_nested_attributes_for :profile
  accepts_nested_attributes_for :team_memberships

  def name
    @profile = profile
    @profile.name unless @profile.nil?
  end
end
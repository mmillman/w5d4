# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do

  e1  = Employee.create!(supervisor_id: nil)

  e2  = Employee.create!(supervisor_id: 1)
  e3  = Employee.create!(supervisor_id: 1)

  e4  = Employee.create!(supervisor_id: 2)
  e5  = Employee.create!(supervisor_id: 2)
  e6  = Employee.create!(supervisor_id: 3)
  e7  = Employee.create!(supervisor_id: 3)

  e8  = Employee.create!(supervisor_id: 5)
  e9  = Employee.create!(supervisor_id: 6)
  e10 = Employee.create!(supervisor_id: 6)
  e11 = Employee.create!(supervisor_id: 6)
  e12 = Employee.create!(supervisor_id: 7)
  e13 = Employee.create!(supervisor_id: 7)

  e14 = Employee.create!(supervisor_id: 8)
  e15 = Employee.create!(supervisor_id: 8)


  t1 = Team.create!(name: "Team 1", supervisor_id: 4)
  t2 = Team.create!(name: "Team 2", supervisor_id: 5)
  t3 = Team.create!(name: "Team 3", supervisor_id: 6)
  t4 = Team.create!(name: "Team 4", supervisor_id: 7)
  t5 = Team.create!(name: "Team 5", supervisor_id: 7)
  t6 = Team.create!(name: "Team 6", supervisor_id: 2)


  tm1  = TeamMembership.create!(employee_id: 8,  team_id: 1)
  tm2  = TeamMembership.create!(employee_id: 12, team_id: 1)
  tm3  = TeamMembership.create!(employee_id: 13, team_id: 1)

  tm4  = TeamMembership.create!(employee_id: 8,  team_id: 2)
  tm5  = TeamMembership.create!(employee_id: 9,  team_id: 2)
  tm6  = TeamMembership.create!(employee_id: 10, team_id: 2)
  tm7  = TeamMembership.create!(employee_id: 15, team_id: 2)

  tm8  = TeamMembership.create!(employee_id: 8,  team_id: 3)
  tm9  = TeamMembership.create!(employee_id: 9,  team_id: 3)
  tm10 = TeamMembership.create!(employee_id: 14, team_id: 3)

  tm11 = TeamMembership.create!(employee_id: 9,  team_id: 5)
  tm12 = TeamMembership.create!(employee_id: 11, team_id: 5)
  tm13 = TeamMembership.create!(employee_id: 13, team_id: 5)

  tm14 = TeamMembership.create!(employee_id: 4,  team_id: 6)
  tm15 = TeamMembership.create!(employee_id: 5,  team_id: 6)
  tm16 = TeamMembership.create!(employee_id: 6,  team_id: 6)
  tm17 = TeamMembership.create!(employee_id: 7,  team_id: 6)

end
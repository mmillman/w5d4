class EmployeeProfile < ActiveRecord::Base
  [ :employee_id,
    :name,
    :height,
    :age,
    :favorite_food,
    :favorite_day,
    :date_of_birth,
    :salary,
    :photo
  ].each { |attr| attr_accessible attr }

  belongs_to :employee, :inverse_of => :profile
end

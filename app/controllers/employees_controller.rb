class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
    @employee.build_profile
  end
end

class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
    @employee.build_profile
    @employee.team_memberships.build
  end

  def create
    # The view gets access to instance variables of the controller...
    # is render passing along all instance variables implicitly wtih
    # :locals => { :instance_var => instance_var_value } ??
    @test = 3
    render :new, :locals => { :test => (@test + 1) }

    @employee = Employee.new(params[:employee])

    if @employee.save
      redirect_to @employee
    else
      render :new#, :locals => { :test => @test }
    end
  end

  def edit
  end

  def update
  end

  def show
    @employee = Employee.find(params[:id])
  end

end

# leaf

require File.expand_path('interfaces/employee.rb')
require File.expand_path('concerns/employee_concern.rb')

class Manager < Employee
  include EmployeeConcern

  attr_reader :id, :name, :role

  def initialize(params)
    @id = params[:id]
    @name = params[:name]
    @role = params[:role]
  end
end

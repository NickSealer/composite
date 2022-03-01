# composite

require File.expand_path('interfaces/employee.rb')

class Directory < Employee
  attr_reader :employees

  def initialize
    @employees = []
  end

  def add(componet)
    @employees.push(componet)
  end

  def remove(componet)
    @employees.delete(componet)
  end

  def show_details
    @employees.each { |employee| employee.show_details }
  end

  def composite?
    true
  end
end

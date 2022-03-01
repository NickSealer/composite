module EmployeeConcern
  def show_details
    puts "#{self.class} #{id}: Name: #{name}, Role: #{role}"
  end
end

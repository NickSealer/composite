require File.expand_path('composite/directory.rb')
require File.expand_path('models/developer.rb')
require File.expand_path('models/manager.rb')

# Tree
directory = Directory.new

# Branches
dev_directory = Directory.new
man_directory = Directory.new

# Leaf branch
boss = Manager.new({id: 1, name: 'The Boss', role: 'boss'})

# Leafs
dev_1 = Developer.new({id: 1212, name: 'Developer One', role: 'developer'})
dev_2 = Developer.new({id: 1251, name: 'Developer Two', role: 'developer'})
man_1 = Manager.new({id: 990881, name: 'Manager One', role: 'manager'})
man_2 = Manager.new({id: 9916, name: 'Manager Two', role: 'manager'})

dev_directory.add(dev_1)
dev_directory.add(dev_2)
man_directory.add(man_1)
man_directory.add(man_2)
directory.add(dev_directory)
directory.add(man_directory)
directory.add(boss)
directory.show_details

puts "Removing manager 2"
man_directory.remove(man_2)
directory.show_details

puts "Directory is a composite? #{directory.composite?}"
puts "Develop Directory is a composite? #{dev_directory.composite?}"
puts "Manager Directory is a composite? #{man_directory.composite?}"
puts "Some developer is a composite? #{dev_1.composite?}"
puts "Some manager is a composite? #{man_2.composite?}"
puts "The Boss is a composite? #{boss.composite?}"

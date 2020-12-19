require_relative 'store'

store = Store.new
puts "Starting inventory:"
store.report_inventory

30.times do 
  puts
  puts "The day is dawning"
  store.stock_shelves
  puts "Updated inventory"
  store.report_inventory
end

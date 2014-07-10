# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all

countries = ["Australia","Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium","Iceland", "India" ,"Indonesia" ,"Iranaaa", "Iraqaaa", "Ireland" ,"Israel", "Italy"]
capitals =["Sydney","Bahmama","Mahshs","Dhaka","Westindies","Banaras", "Bengaluru","Mumbai", "Delhi", "Kolkata", "Kuve", "Kuwait", "Wireland", "Chennai", "Paris"]
countries[Random.rand(0..countries.length())]
50.times do |i|
  title = "Hello" + countries[Random.rand(0...countries.length())]
  text =  "There are "+i.to_s+" route to "+ capitals[Random.rand(0...capitals.length())]
  #puts "#{title} && #{text} "
  Article.create!(title: title, text:text)
end


puts "Deleting all employees"
Employee.delete_all

puts "Deleting all incentives"

Incentives.delete_all

puts "Adding Employees to table"
departments=["Banking","Insurance","Services"]

10.times do |i|
  first_name= "Testing"+i.to_s
  last_name = "Employee"+i.to_s
  salary = Random.rand(50..100)*1000
  k=Random.rand(1..3)
  time= Time.now-k.year
  joining_date= time.strftime("%m/%d/%y 12:00:00")
  department=departments[Random.rand(0..2)]
  Employee.create!(first_name: first_name, last_name: last_name,salary: salary,joining_date: joining_date,department: department)
end

puts "Adding incentives"

6.times do |i|
  employee_id=Random.rand(11..20)
  k=Random.rand(1..3)
  time=Time.now-k.month
  incentive_date=time.strftime("%d-%m-%y")
  incentive_amound=Random.rand(1..6)*1000
  Incentives.create!(employee_id: employee_id,incentive_date: incentive_date,incentive_amound: incentive_amound)
end

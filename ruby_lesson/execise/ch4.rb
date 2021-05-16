cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
cars_not_drivers = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers availble."
puts "There will be #{cars_not_drivers} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."


#106/9/16後記：照著打也是會有Bugs，總共除錯八次！
#但最後除玩很開心(car.cars) (passengers.passenger)
# #{} 讓ruby計算出指定的結果

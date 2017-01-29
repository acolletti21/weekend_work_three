# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end

room1 = HotelReservation.new(customer_name: "Charlie", date: "01-27-2017", room_number: "123")


puts "testing room number change... "
puts


old_number = room1.room_number
room1.room_number = room1.room_number.to_i + 10
p room1.room_number
new_number = room1.room_number.to_s

if old_number != new_number
  puts "Room number changed. PASS"
else
  puts "Room number was not changed. F"
end

room1.add_a_fridge

if room1.amenities.include?("fridge")
  puts "Fridge? PASS"
else
  puts "F"
end

room1.add_a_crib

if room1.amenities.include?("crib")
  puts "Crib? PASS"
else
  puts "F"
end

room1.add_a_custom_amenity("puppies")

if room1.amenities.last == "puppies"
  puts "Puppies? Pass"
else
  puts "No puppies. F"
end
# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method


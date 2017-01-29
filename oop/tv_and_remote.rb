# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)


class Tv
  attr_reader :power, :volume, :channel
  attr_writer :power, :volume, :channel

  def initialize
    @power = "off"
    @volume = 10
    @channel = 2
  end
end

class Remote < Tv
  # attr_reader :tv 

  def initialize(input_options)
    @tv = input_options[:tv]
  end

  def toggle_power
    if @tv.power == "off"
      @tv.power = "on"
    else
      @tv.power = "off"
    end
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1
  end

  def set_channel(new_channel)
    @tv.channel = new_channel
  end
end

#driver code

tv1 = Tv.new
remote1 = Remote.new(tv: tv1)

puts "testing tv and remote..."
puts


remote1.toggle_power
if tv1.power == "on"
  puts "toggle power: PASS"
else
  puts "toggle power: F"
end

remote1.increment_volume
if tv1.volume == 11
  puts "increment volume:PASS"
else
  puts "increment volume:F"
end

remote1.decrement_volume
if tv1.volume == 10
  puts "decrement volume: PASS"
else
  puts "decrement volume: F"
end

remote1.set_channel(7)
if tv1.channel == 7
  puts "set channel: PASS"
else
  puts "set channel: F"
end

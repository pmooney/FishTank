
#
#
#
#

require 'BlueFish'
require 'GreenFish'
require 'ClockworkFish'

menu   = DATA.read
puts menu

stuffs = []

while command = gets
  command.chomp!

  case command
  when 'q'
    break
  when 'm'
    puts menu
    next
  when 'b'
    puts "Add BlueFIsh"
    stuffs.push(BlueFish.new())
  when 'g'
    puts "add GreenFish"
    stuffs.push(GreenFish.new())
  when 'c'
    puts "add ClockworkFish"
    stuffs.push(ClockworkFish.new())
  end

  stuffs.each do |thing|
    ok = thing.swim

    if ok
      puts "Thing of class #{thing.class} : stomach = #{thing.stomach} oxygen = #{thing.oxygen}"
    else
      puts "Thing of class #{thing.class} is now dead and will be removed from the tank!"
    end
  end

  stuffs.delete_if {|t| ! t.alive?}
end

__END__
--------------------------------
m  show menu
q  quit
b  add BlueFish
g  add GreenFish
c  add ClockworkFish
--------------------------------

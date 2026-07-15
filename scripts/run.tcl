puts "=========================="
puts " RTL TO GDS FLOW "
puts "=========================="

source genus.tcl

puts "Synthesis Completed"

source innovus.tcl

puts "Physical Design Completed"

puts "Flow Finished"

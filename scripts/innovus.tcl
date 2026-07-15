###############################################################################
# Cadence Innovus Physical Design Script
###############################################################################

set DESIGN alu

# Technology
set init_lef_file "./library/scl180.lef"
set init_verilog "./netlist/alu_netlist.v"

# Initialize
init_design

# Floorplan
floorPlan -site core \
-coreMarginsBy die \
-r 1.0 0.7 20 20 20 20

# Power Planning
addRing

# Placement
place_design

# Clock Tree
clockDesign

# Routing
routeDesign

# Timing
timeDesign -postRoute

# DRC
verify_drc

# Save Design
saveDesign ./database/${DESIGN}.enc

exit

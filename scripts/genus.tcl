###############################################################################
# Cadence Genus Synthesis Script
###############################################################################

set DESIGN alu

# Read Library
read_libs ./library/scl180.lib

# Read RTL
read_hdl ./rtl/alu.v

# Elaborate Design
elaborate $DESIGN

# Read Constraints
read_sdc ./constraints/design.sdc

# Check Design
check_design

# Synthesis
syn_generic
syn_map
syn_opt

# Reports
report_area   > ./reports/area_report.rpt
report_timing > ./reports/timing_report.rpt
report_power  > ./reports/power_report.rpt

# Write Netlist
write_hdl > ./netlist/alu_netlist.v

exit

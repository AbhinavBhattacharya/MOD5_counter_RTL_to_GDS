set search_path "/afs/iitd.ac.in/service/tools/public/asiclib/umcoa/L65/libraries/UMC65LLSC/synopsys/ccs"
set_attribute lib_search_path "/afs/iitd.ac.in/service/tools/public/asiclib/umcoa/L65/libraries/UMC65LLSC/synopsys/ccs/"
set_attribute hdl_search_path "./rtl/mod5_up.v"
set_attribute library "uk65lscllmvbbr_100c25_tc_ccs.lib"
set mylist [get_attribute init_hdl_search_path]
read_hdl -v2001 $mylist
elaborate 
check_design -unresolved
read_sdc ./constraints_top.sdc
synthesize -to_mapped -effort high
write_hdl > ./output/mod5_counter_netlist.v
write_sdc > ./output/sdc_mod5_output.sdc

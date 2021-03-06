proc insert_debug_core {ILA_name} {
create_debug_core $ILA_name labtools_ila_v3
set_property C_DATA_DEPTH 1024 [get_debug_cores $ILA_name]
set_property C_TRIGIN_EN false [get_debug_cores $ILA_name]
set_property C_TRIGOUT_EN false [get_debug_cores $ILA_name]
set_property C_ADV_TRIGGER false [get_debug_cores $ILA_name]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores $ILA_name]
set_property C_EN_STRG_QUAL false [get_debug_cores $ILA_name]
set_property ALL_PROBE_SAME_MU true [get_debug_cores $ILA_name]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores $ILA_name]
set_property port_width 1 [get_debug_ports $ILA_name/clk]
connect_debug_port $ILA_name/clk [get_nets [list user_clk ]]
set_property port_width 32 [get_debug_ports $ILA_name/probe0]
connect_debug_port $ILA_name/probe0 [lsort -dictionary [get_nets [list {u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_AWADDR[*]}]]]
create_debug_port $ILA_name probe
set_property port_width 4 [get_debug_ports $ILA_name/probe1]
connect_debug_port $ILA_name/probe1 [lsort -dictionary [get_nets [list {u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_WSTRB[*]}]]]
create_debug_port $ILA_name probe
set_property port_width 32 [get_debug_ports $ILA_name/probe2]
connect_debug_port $ILA_name/probe2 [lsort -dictionary [get_nets [list {u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_WDATA[*]}]]]
create_debug_port $ILA_name probe
set_property port_width 2 [get_debug_ports $ILA_name/probe3]
connect_debug_port $ILA_name/probe3 [lsort -dictionary [get_nets [list {u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_RRESP[*]}]]]
create_debug_port $ILA_name probe
set_property port_width 32 [get_debug_ports $ILA_name/probe4]
connect_debug_port $ILA_name/probe4 [lsort -dictionary [get_nets [list {u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_ARADDR[*]}]]]
create_debug_port $ILA_name probe
set_property port_width 2 [get_debug_ports $ILA_name/probe5]
connect_debug_port $ILA_name/probe5 [lsort -dictionary [get_nets [list {u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_BRESP[*]}]]]
create_debug_port $ILA_name probe
set_property port_width 32 [get_debug_ports $ILA_name/probe6]
connect_debug_port $ILA_name/probe6 [lsort -dictionary [get_nets [list {u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_RDATA[*]}]]]
create_debug_port $ILA_name probe
set_property port_width 1 [get_debug_ports $ILA_name/probe7]
connect_debug_port $ILA_name/probe7 [get_nets [list u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_ARESETN ]]
create_debug_port $ILA_name probe
set_property port_width 1 [get_debug_ports $ILA_name/probe8]
connect_debug_port $ILA_name/probe8 [get_nets [list u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_ARREADY ]]
create_debug_port $ILA_name probe
set_property port_width 1 [get_debug_ports $ILA_name/probe9]
connect_debug_port $ILA_name/probe9 [get_nets [list u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_ARVALID ]]
create_debug_port $ILA_name probe
set_property port_width 1 [get_debug_ports $ILA_name/probe10]
connect_debug_port $ILA_name/probe10 [get_nets [list u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_AWREADY ]]
create_debug_port $ILA_name probe
set_property port_width 1 [get_debug_ports $ILA_name/probe11]
connect_debug_port $ILA_name/probe11 [get_nets [list u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_AWVALID ]]
create_debug_port $ILA_name probe
set_property port_width 1 [get_debug_ports $ILA_name/probe12]
connect_debug_port $ILA_name/probe12 [get_nets [list u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_BREADY ]]
create_debug_port $ILA_name probe
set_property port_width 1 [get_debug_ports $ILA_name/probe13]
connect_debug_port $ILA_name/probe13 [get_nets [list u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_BVALID ]]
create_debug_port $ILA_name probe
set_property port_width 1 [get_debug_ports $ILA_name/probe14]
connect_debug_port $ILA_name/probe14 [get_nets [list u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_RREADY ]]
create_debug_port $ILA_name probe
set_property port_width 1 [get_debug_ports $ILA_name/probe15]
connect_debug_port $ILA_name/probe15 [get_nets [list u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_RVALID ]]
create_debug_port $ILA_name probe
set_property port_width 1 [get_debug_ports $ILA_name/probe16]
connect_debug_port $ILA_name/probe16 [get_nets [list u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_WREADY ]]
create_debug_port $ILA_name probe
set_property port_width 1 [get_debug_ports $ILA_name/probe17]
connect_debug_port $ILA_name/probe17 [get_nets [list u_pcie_axi_bridge/u_pcie_axi_stream_to_axi_lite_bridge/u_axiLite_debug/dbg_M_AXI_WVALID ]]
}


set DEVICE_TYPE xc7k325tffg900-2
set TOP_module pcie_gen2x8_axi_lite_bridge_example_top

create_project -in_memory -part $DEVICE_TYPE 

set_property ip_repo_paths  ../vivado_IP_GEN [current_fileset]
update_ip_catalog

read_verilog {
../../common_src/PIO.v
../../common_src/PIO_EP.v
../../common_src/PIO_RX_ENGINE.v
../../common_src/PIO_TO_CTRL.v
../../common_src/PIO_TX_ENGINE.v
../../common_src/pcie_app_7x.v
../../common_src/axi_lite_master_if.v
../../common_src/axiLite_debug.v
../../common_src/pcie_axi_stream_to_axi_lite_bridge.v
../src/pcie_gen2x8_axi_lite_bridge.v
../src/pcie_gen2x8_axi_lite_bridge_example_top.v
}

read_ip {
../IP/pcie_7x_gen2x8_core/pcie_7x_gen2x8_core.xci
../IP/blk_mem_gen_axi_if/blk_mem_gen_axi_if.xci
}

read_xdc ../src/xdc/pcie_gen2x8_axi_lite_bridge_example_top.xdc

generate_target all [get_ips]
synth_design -top $TOP_module -part $DEVICE_TYPE 


if (1) {
insert_debug_core u_ila_0
implement_debug_core [get_debug_cores]
write_debug_probes ./$TOP_module.ltx

opt_design -verbose

place_design -verbose
phys_opt_design  -verbose
route_design  -verbose
#write_checkpoint -force post_route.dcp
report_timing_summary -file $TOP_module.timing_summary.rpt
report_drc -file $TOP_module.drc.rpt


set_property config_mode SPIx4 [current_design]
set_property config_mode B_SCAN [current_design]
set_property config_mode SPIx4 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]

write_bitstream $TOP_module.bit      
}

transcript on
if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog  -work altera_ver {c:/altera_lite/25.1std/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog  -work lpm_ver {c:/altera_lite/25.1std/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog  -work sgate_ver {c:/altera_lite/25.1std/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog  -work altera_mf_ver {c:/altera_lite/25.1std/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {c:/altera_lite/25.1std/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cyclonev_ver
vmap cyclonev_ver ./verilog_libs/cyclonev_ver
vlog  -work cyclonev_ver {c:/altera_lite/25.1std/quartus/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v}
vlog  -work cyclonev_ver {c:/altera_lite/25.1std/quartus/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v}
vlog  -work cyclonev_ver {c:/altera_lite/25.1std/quartus/eda/sim_lib/cyclonev_atoms.v}

vlib verilog_libs/cyclonev_hssi_ver
vmap cyclonev_hssi_ver ./verilog_libs/cyclonev_hssi_ver
vlog  -work cyclonev_hssi_ver {c:/altera_lite/25.1std/quartus/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v}
vlog  -work cyclonev_hssi_ver {c:/altera_lite/25.1std/quartus/eda/sim_lib/cyclonev_hssi_atoms.v}

vlib verilog_libs/cyclonev_pcie_hip_ver
vmap cyclonev_pcie_hip_ver ./verilog_libs/cyclonev_pcie_hip_ver
vlog  -work cyclonev_pcie_hip_ver {c:/altera_lite/25.1std/quartus/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v}
vlog  -work cyclonev_pcie_hip_ver {c:/altera_lite/25.1std/quartus/eda/sim_lib/cyclonev_pcie_hip_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog  -work work +incdir+C:/Users/btibo/Documents/cours_info/FPGA/Junia_TP_FPGA_AP4/TP3_MEF {C:/Users/btibo/Documents/cours_info/FPGA/Junia_TP_FPGA_AP4/TP3_MEF/baseline_c5gx.v}


# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "C:/Users/pinky/OneDrive/Desktop/277Project/Vivado/VivadoProject/VivadoProject.runs/synth_1/.Xil/Vivado-9888-LAPTOP-4O1010KC/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    rt::set_parameter datapathDensePacking false
    set rt::partid xc7a100tcsg324-1
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib

    # Skipping read_* RTL commands because this is post-elab optimize flow
    set rt::useElabCache true
    if {$rt::useElabCache == false} {
      rt::read_verilog {
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_RAM/AHB2BRAM.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_7SEG/AHB7SEGDEC.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_DCD/AHBDCD.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_GPIO/AHBGPIO.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_MUX/AHBMUX.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_TIMER/AHBTIMER.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_UART/AHBUART.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_VGA/AHBVGASYS.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/CortexM0-DS/CORTEXM0INTEGRATION.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_UART/baudgen.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/CortexM0-DS/cortexm0ds_logic.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_VGA/counter.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_VGA/dual_port_ram_sync.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_UART/fifo.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_VGA/font_rom.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_TIMER/prescaler.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_UART/uart_rx.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_UART/uart_tx.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_VGA/vga_console.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_VGA/vga_image.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_VGA/vga_sync.v
      C:/Users/pinky/OneDrive/Desktop/277Project/Files/FPGA/AHB_SYS/AHBLITE_SYS.v
    }
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification true
    set rt::SDCFileList C:/Users/pinky/OneDrive/Desktop/277Project/Vivado/VivadoProject/VivadoProject.runs/synth_1/.Xil/Vivado-9888-LAPTOP-4O1010KC/realtime/AHBLITE_SYS_synth.xdc
    rt::sdcChecksum
    set rt::top AHBLITE_SYS
    rt::set_parameter enableIncremental true
    rt::set_parameter markDebugPreservationLevel "enable"
    set rt::reportTiming false
    rt::set_parameter elaborateOnly false
    rt::set_parameter elaborateRtl false
    rt::set_parameter eliminateRedundantBitOperator true
    rt::set_parameter elaborateRtlOnlyFlow false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter ramStyle auto
    rt::set_parameter merge_flipflops true
# MODE: 
    rt::set_parameter webTalkPath {C:/Users/pinky/OneDrive/Desktop/277Project/Vivado/VivadoProject/VivadoProject.cache/wt}
    rt::set_parameter synthDebugLog false
    rt::set_parameter printModuleName false
    rt::set_parameter enableSplitFlowPath "C:/Users/pinky/OneDrive/Desktop/277Project/Vivado/VivadoProject/VivadoProject.runs/synth_1/.Xil/Vivado-9888-LAPTOP-4O1010KC/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_synthesis -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    rt::HARTNDb_reportJobStats "Synthesis Optimization Runtime"
    rt::HARTNDb_stopSystemStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    rt::set_parameter incrementalOnCache ""
    rt::set_parameter doIncremental false
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
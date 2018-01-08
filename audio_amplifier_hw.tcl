# TCL File Generated by Component Editor 17.1
# Mon Jan 08 11:48:08 CET 2018
# DO NOT MODIFY


# 
# audio_amplifier "audio_amplifier" v1.0
#  2018.01.08.11:48:08
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module audio_amplifier
# 
set_module_property DESCRIPTION ""
set_module_property NAME audio_amplifier
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME audio_amplifier
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL audio_amplifier
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE true
add_fileset_file audio_amplifier.v VERILOG PATH audio_amplifier.v TOP_LEVEL_FILE
add_fileset_file amplifier.v VERILOG PATH amplifier.v
add_fileset_file gain_hex.v VERILOG PATH gain_hex.v
add_fileset_file gain_key.v VERILOG PATH gain_key.v
add_fileset_file get_gain.v VERILOG PATH get_gain.v


# 
# parameters
# 
add_parameter BITS INTEGER 24 ""
set_parameter_property BITS DEFAULT_VALUE 24
set_parameter_property BITS DISPLAY_NAME BITS
set_parameter_property BITS TYPE INTEGER
set_parameter_property BITS UNITS None
set_parameter_property BITS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property BITS DESCRIPTION ""
set_parameter_property BITS HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clock_clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset_reset reset Input 1


# 
# connection point avalon_left_sink
# 
add_interface avalon_left_sink avalon_streaming end
set_interface_property avalon_left_sink associatedClock clock
set_interface_property avalon_left_sink associatedReset reset
set_interface_property avalon_left_sink dataBitsPerSymbol 8
set_interface_property avalon_left_sink errorDescriptor ""
set_interface_property avalon_left_sink firstSymbolInHighOrderBits true
set_interface_property avalon_left_sink maxChannel 0
set_interface_property avalon_left_sink readyLatency 0
set_interface_property avalon_left_sink ENABLED true
set_interface_property avalon_left_sink EXPORT_OF ""
set_interface_property avalon_left_sink PORT_NAME_MAP ""
set_interface_property avalon_left_sink CMSIS_SVD_VARIABLES ""
set_interface_property avalon_left_sink SVD_ADDRESS_GROUP ""

add_interface_port avalon_left_sink avalon_left_sink_data data Input 24
add_interface_port avalon_left_sink avalon_left_sink_ready ready Output 1
add_interface_port avalon_left_sink avalon_left_sink_valid valid Input 1


# 
# connection point avalon_right_sink
# 
add_interface avalon_right_sink avalon_streaming end
set_interface_property avalon_right_sink associatedClock clock
set_interface_property avalon_right_sink associatedReset reset
set_interface_property avalon_right_sink dataBitsPerSymbol 8
set_interface_property avalon_right_sink errorDescriptor ""
set_interface_property avalon_right_sink firstSymbolInHighOrderBits true
set_interface_property avalon_right_sink maxChannel 0
set_interface_property avalon_right_sink readyLatency 0
set_interface_property avalon_right_sink ENABLED true
set_interface_property avalon_right_sink EXPORT_OF ""
set_interface_property avalon_right_sink PORT_NAME_MAP ""
set_interface_property avalon_right_sink CMSIS_SVD_VARIABLES ""
set_interface_property avalon_right_sink SVD_ADDRESS_GROUP ""

add_interface_port avalon_right_sink avalon_right_sink_data data Input 24
add_interface_port avalon_right_sink avalon_right_sink_ready ready Output 1
add_interface_port avalon_right_sink avalon_right_sink_valid valid Input 1


# 
# connection point gain_hex
# 
add_interface gain_hex conduit end
set_interface_property gain_hex associatedClock clock
set_interface_property gain_hex associatedReset ""
set_interface_property gain_hex ENABLED true
set_interface_property gain_hex EXPORT_OF ""
set_interface_property gain_hex PORT_NAME_MAP ""
set_interface_property gain_hex CMSIS_SVD_VARIABLES ""
set_interface_property gain_hex SVD_ADDRESS_GROUP ""

add_interface_port gain_hex hex_signal new_signal Output 7


# 
# connection point gain_key
# 
add_interface gain_key conduit end
set_interface_property gain_key associatedClock clock
set_interface_property gain_key associatedReset ""
set_interface_property gain_key ENABLED true
set_interface_property gain_key EXPORT_OF ""
set_interface_property gain_key PORT_NAME_MAP ""
set_interface_property gain_key CMSIS_SVD_VARIABLES ""
set_interface_property gain_key SVD_ADDRESS_GROUP ""

add_interface_port gain_key key_signal new_signal Input 2


# 
# connection point avalon_left_source
# 
add_interface avalon_left_source avalon_streaming start
set_interface_property avalon_left_source associatedClock clock
set_interface_property avalon_left_source associatedReset reset
set_interface_property avalon_left_source dataBitsPerSymbol 8
set_interface_property avalon_left_source errorDescriptor ""
set_interface_property avalon_left_source firstSymbolInHighOrderBits true
set_interface_property avalon_left_source maxChannel 0
set_interface_property avalon_left_source readyLatency 0
set_interface_property avalon_left_source ENABLED true
set_interface_property avalon_left_source EXPORT_OF ""
set_interface_property avalon_left_source PORT_NAME_MAP ""
set_interface_property avalon_left_source CMSIS_SVD_VARIABLES ""
set_interface_property avalon_left_source SVD_ADDRESS_GROUP ""

add_interface_port avalon_left_source avalon_left_source_data data Output BITS
add_interface_port avalon_left_source avalon_left_source_ready ready Input 1
add_interface_port avalon_left_source avalon_left_source_valid valid Output 1


# 
# connection point avalon_right_source
# 
add_interface avalon_right_source avalon_streaming start
set_interface_property avalon_right_source associatedClock clock
set_interface_property avalon_right_source associatedReset reset
set_interface_property avalon_right_source dataBitsPerSymbol 8
set_interface_property avalon_right_source errorDescriptor ""
set_interface_property avalon_right_source firstSymbolInHighOrderBits true
set_interface_property avalon_right_source maxChannel 0
set_interface_property avalon_right_source readyLatency 0
set_interface_property avalon_right_source ENABLED true
set_interface_property avalon_right_source EXPORT_OF ""
set_interface_property avalon_right_source PORT_NAME_MAP ""
set_interface_property avalon_right_source CMSIS_SVD_VARIABLES ""
set_interface_property avalon_right_source SVD_ADDRESS_GROUP ""

add_interface_port avalon_right_source avalon_right_source_data data Output BITS
add_interface_port avalon_right_source avalon_right_source_ready ready Input 1
add_interface_port avalon_right_source avalon_right_source_valid valid Output 1


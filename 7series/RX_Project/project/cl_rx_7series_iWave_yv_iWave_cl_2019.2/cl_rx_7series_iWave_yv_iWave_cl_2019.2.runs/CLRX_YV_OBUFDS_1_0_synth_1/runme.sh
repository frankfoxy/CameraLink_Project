#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/XilinxTools/2019.2/Vivado/2019.2/ids_lite/ISE/bin/lin64:/opt/XilinxTools/2019.2/Vivado/2019.2/bin
else
  PATH=/opt/XilinxTools/2019.2/Vivado/2019.2/ids_lite/ISE/bin/lin64:/opt/XilinxTools/2019.2/Vivado/2019.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/bipin/CameraLink_hash/DEV/7series/RX_Project/project/cl_rx_7series_iWave_yv_iWave_cl_2019.2/cl_rx_7series_iWave_yv_iWave_cl_2019.2.runs/CLRX_YV_OBUFDS_1_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log CLRX_YV_OBUFDS_1_0.vds -m64 -tempDir logs/ -product Vivado -mode batch -messageDb vivado.pb -notrace -source CLRX_YV_OBUFDS_1_0.tcl
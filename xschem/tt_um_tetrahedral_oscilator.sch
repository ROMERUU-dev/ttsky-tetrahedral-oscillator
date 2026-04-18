v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -70 10 -20 10 {
lab=#net1}
N -70 90 -20 90 {
lab=#net2}
N -170 10 -120 10 {
lab=#net1}
N -170 90 -120 90 {
lab=#net2}
N 410 10 460 10 {
lab=#net3}
N 310 10 360 10 {
lab=#net3}
N 310 90 360 90 {
lab=#net4}
N 410 90 460 90 {
lab=#net4}
N 40 -20 40 130 {
lab=#net3}
N 120 -20 160 -20 {
lab=#net1}
N 240 -20 240 130 {
lab=#net4}
N 120 130 160 130 {
lab=#net2}
N 140 -20 140 10 {
lab=#net1}
N 140 90 140 130 {
lab=#net2}
N 220 10 310 10 {
lab=#net3}
N 220 10 220 50 {
lab=#net3}
N 40 50 220 50 {
lab=#net3}
N 270 90 310 90 {
lab=#net4}
N 270 50 270 90 {
lab=#net4}
N 240 50 270 50 {
lab=#net4}
N -20 10 140 10 {
lab=#net1}
N -20 90 140 90 {
lab=#net2}
N -200 90 -170 90 {
lab=#net2}
N -200 10 -170 10 {
lab=#net1}
N -100 10 -70 10 {
lab=#net1}
N -120 10 -100 10 {
lab=#net1}
N -100 90 -70 90 {
lab=#net2}
N -120 90 -100 90 {
lab=#net2}
N 360 10 390 10 {
lab=#net3}
N 390 10 410 10 {
lab=#net3}
N 360 90 390 90 {
lab=#net4}
N 390 90 410 90 {
lab=#net4}
N 460 90 490 90 {
lab=#net4}
N 460 10 490 10 {
lab=#net3}
N -100 -100 -100 -70 {
lab=#net5}
N 390 -100 390 -70 {
lab=#net6}
N -100 170 -100 200 {
lab=#net7}
N 390 170 390 200 {
lab=#net8}
N -280 10 -260 10 {
lab=VGND}
N -280 90 -260 90 {
lab=VGND}
N 550 10 570 10 {
lab=VGND}
N 550 90 570 90 {
lab=VGND}
N 220 -210 220 -200 {
lab=VGND}
N 220 -140 220 -130 {
lab=GND}
N 220 -130 220 -120 {
lab=GND}
N 220 -230 220 -210 {
lab=VGND}
N 100 -140 100 -130 {
lab=GND}
N 100 -130 100 -120 {
lab=GND}
N 100 -230 100 -210 {
lab=VDPWR}
N 100 -210 100 -200 {
lab=VDPWR}
N -260 -20 -260 10 {
lab=VGND}
N -260 -50 -260 -20 {
lab=VGND}
N -260 -80 -260 -50 {
lab=VGND}
N -200 -20 -200 10 {
lab=#net1}
N -200 -50 -200 -20 {
lab=#net1}
N -200 -80 -200 -50 {
lab=#net1}
N -260 90 -260 120 {
lab=VGND}
N -260 120 -260 150 {
lab=VGND}
N -260 150 -260 180 {
lab=VGND}
N -200 90 -200 120 {
lab=#net2}
N -200 120 -200 150 {
lab=#net2}
N -200 150 -200 180 {
lab=#net2}
N 490 -20 490 10 {
lab=#net3}
N 490 -50 490 -20 {
lab=#net3}
N 490 -80 490 -50 {
lab=#net3}
N 550 -20 550 10 {
lab=VGND}
N 550 -50 550 -20 {
lab=VGND}
N 550 -80 550 -50 {
lab=VGND}
N 490 90 490 120 {
lab=#net4}
N 490 120 490 150 {
lab=#net4}
N 490 150 490 180 {
lab=#net4}
N 550 90 550 120 {
lab=VGND}
N 550 120 550 150 {
lab=VGND}
N 550 150 550 180 {
lab=VGND}
C {sky130_stdcells/inv_1.sym} -20 50 1 0 {name=x1 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} -70 50 1 0 {name=x2 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} -120 50 3 0 {name=x3 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} -170 50 3 0 {name=x4 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 460 50 1 0 {name=x5 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 410 50 1 0 {name=x6 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 360 50 3 0 {name=x7 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 310 50 3 0 {name=x8 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_4.sym} 80 -20 0 0 {name=x9 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_4.sym} 200 -20 0 0 {name=x10 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_4.sym} 200 130 2 0 {name=x11 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_4.sym} 80 130 2 0 {name=x12 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_16.sym} -100 -30 3 0 {name=x13 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_16.sym} 390 -30 3 0 {name=x14 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_16.sym} -100 130 1 0 {name=x15 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_16.sym} 390 130 1 0 {name=x16 VGND=VGND VNB=VGND VPB=VDPWR VPWR=VDPWR prefix=sky130_fd_sc_hd__ }
C {sky130_fd_pr/cap_mim_m3_1.sym} -230 10 1 0 {name=C1 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -230 90 1 0 {name=C2 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 520 10 3 0 {name=C3 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 520 90 3 0 {name=C4 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {gnd.sym} -280 10 1 0 {name=l1 lab=VGND}
C {gnd.sym} -280 90 1 0 {name=l2 lab=VGND}
C {gnd.sym} 570 10 3 0 {name=l3 lab=VGND}
C {gnd.sym} 570 90 3 0 {name=l4 lab=VGND}
C {devices/code.sym} -320 -240 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/code.sym} -50 -240 0 0 {name=s1 only_toplevel=false value="
.ic v(net1)=0.95 v(net2)=0.65 v(net3)=0.05
  v(net4)=0.35

  .control
  set filetype=ascii
  save v(net1) v(net2) v(net3) v(net4)
  tran 0.1n 20n uic
  write /home/romeruu/tt_um_tetrahedral-
  oscilator/runs/manual-ngspice/tetra.raw
  wrdata /home/romeruu/tt_um_tetrahedral-
  oscilator/runs/manual-ngspice/tetra.dat
  v(net1) v(net2) v(net3) v(net4)
  .endc
"}
C {vsource.sym} 220 -170 0 0 {name=V5 value=0 savecurrent=false}
C {gnd.sym} 220 -120 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 220 -230 1 0 {name=p10 sig_type=std_logic lab=VGND}
C {vsource.sym} 100 -170 0 0 {name=V7 value=1.8 savecurrent=false}
C {gnd.sym} 100 -120 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 100 -230 1 0 {name=p12 sig_type=std_logic lab=VDPWR}
C {sky130_fd_pr/cap_mim_m3_1.sym} -230 -20 1 0 {name=C5 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -230 -50 1 0 {name=C6 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -230 -80 1 0 {name=C7 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -230 120 1 0 {name=C8 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -230 150 1 0 {name=C9 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -230 180 1 0 {name=C10 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 520 -20 3 0 {name=C11 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 520 -50 3 0 {name=C12 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 520 -80 3 0 {name=C13 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 520 120 3 0 {name=C14 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 520 150 3 0 {name=C15 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 520 180 3 0 {name=C16 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}

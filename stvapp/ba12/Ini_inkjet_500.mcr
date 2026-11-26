/menulock 1
/iow_open 3 33ee
/msgread itv
;								device 16: Inspecta; 
;								device 17: Leutron PentiCam
;								device 10: NULL device
;							alloc 8 images # 0..7
/setwv 0 0 4112 2176 0 0 4112 2176
;;;;;/setwv 0 0 2464 2056 0 0 2464 2056
;;;;;/setwv 0 0 1936 1216 0 0 1936 1216
;;;;;/setwv 0 0 1392 1040 0 0 1392 1040
;/devinit 0 0 4 4

/devinit 25 0 8 0 0 2; manta895&Mako235

/fwcamsequence 503418857 536917809
/msg usb initialization
/usbinit
/startupchk
/smsg select illumination control
/discoselect 6
/smsg allocate image management
;								dummy alloc # 8,9
/ialloc 32 32
/ialloc 32 32
;								alloc fault images # 10..13
/ialloc 168 128
/ialloc 168 128
/ialloc 168 128
/ialloc 168 128
;
/lf3setcam 0 0 1 0 0
;
/dspassign 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
/dspassign 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
/dspassign 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0
/dspassign 3 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0
/dspassign 4 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
/dspassign 5 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0
/dspassign 6 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0
/dspassign 7 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
/dspassign 10 10 0 0 0 0 0 0 0 0 0 0 0 0 0
/dspassign 11 11 0 0 0 0 0 0 0 0 0 0 0 0 0
/dspassign 12 12 0 0 0 0 0 0 0 0 0 0 0 0 0
/dspassign 13 13 0 0 0 0 0 0 0 0 0 0 0 0 0
;/mikedsp 0
;/mikedsp 1
;						histogram # 1 & 2
;/mikeview 8 1
;/mikeview 9 1
;						measurement window
;/mikeview 20 1
/dspselect 0
/smsg select stv portal driver
/spsdev 18
;/st_discoutm 0 ff00
;/st_discoutm 1 1200  
/smsg init motors
/mtinit 11
/swait 0.2
/smsg homing
;;;;;/mtspeed 8 300
/mthoming 4
/mthoming 1
/mthoming 2
;;;;/mthoming 8
/objdensld valid
;/smsg select stv portal system
/indexselect 6
/set x0
/msread oc.pro
/index 0
;       +--bit31: --
;       |+--bit30: 1->Automatics marking setup at lot change (markpatt)
;       ||+--bit29: --
;       |||+--bit28: 1->COPLA is inspected from device bottom
;       ||||+--bit27: IXPOS in side mirror from center view IXPOS
;       |||||+--bit26: Dambar DXY offset measurement
;       ||||||+--bit25: Use CMX,Y for lead pitch measurement in PLCC
;       |||||||+--bit24: --
;       ||||||||+--bit23: --
;       |||||||||+--bit22: --
;       ||||||||||+--bit21: Z-corr from X-shift
;       |||||||||||+--bit20: --
;       ||||||||||||+--bit19: store all individual lead measurements
;       |||||||||||||+--bit18: --
;       ||||||||||||||+--bit17: --
;       |||||||||||||||+--bit16: Multi-Binning (marking) enable
;       ||||||||||||||||+--bit15: enable 24 bit parallel out reject code (for mold)
;       |||||||||||||||||+--bit14: MOLD punch mode, 1: NO punch
;       ||||||||||||||||||+--bit13: --
;       |||||||||||||||||||+--bit12: enable marking rotation in markpatt
;       ||||||||||||||||||||+--bit11: lead to package standoff measurement in side mirror(s)
;       |||||||||||||||||||||+--bit10: --
;       ||||||||||||||||||||||+--bit 9: test for empty nest
;       |||||||||||||||||||||||+--bit 8: nrow (reset:1 row; set: 2 rows)
;       ||||||||||||||||||||||||+--bit 7: Isotop: markpatts marking auto-definition from COM2
;       |||||||||||||||||||||||||+--bit 6: --
;       ||||||||||||||||||||||||||+--bit 5: long lead side view coplanarity (TO220)
;       |||||||||||||||||||||||||||+--bit 4: --
;       ||||||||||||||||||||||||||||+--bit 3: 5x5-fold correlation for markpatts
;       |||||||||||||||||||||||||||||+--bit 2: --
;       ||||||||||||||||||||||||||||||+--bit 1: 3x3-fold correlation for markpatts
;       |||||||||||||||||||||||||||||||+--bit 0: enable VBA mathematics 
;       |||||||||||||||||||||||||||||||| 
/stload 00010000000010000000000000001000 00000000000000000010100001000100       oc.par
;                                        ||||||||||||||||||||||||||||||||
;                                        |||||||||||||||||||||||||||||||+-bit 0:--
;                                        ||||||||||||||||||||||||||||||+-bit 1:socket_empty
;                                        |||||||||||||||||||||||||||||+-bit 2:lead_from_center_view
;                                        ||||||||||||||||||||||||||||+-bit 3:cutoff_names to 8 char in MES file
;                                        |||||||||||||||||||||||||||+-bit 4:ixpos_reject: reject device if ixpos fault
;                                        ||||||||||||||||||||||||||+-bit 5:colin_mode: 0->2 parallel lines; 1->independent lines
;                                        |||||||||||||||||||||||||+-bit 6:calibration: 0->stoff corr; 1->alpha calibration
;                                        ||||||||||||||||||||||||+-bit 7:--
;                                        |||||||||||||||||||||||+-bit 8:Colinearity post-fit enabled(1) or disabled (0)
;                                        ||||||||||||||||||||||+-bit 9:--
;                                        |||||||||||||||||||||+-bit 10:Mark_Noff: dont allow marking offset
;                                        ||||||||||||||||||||+-bit 11:splane_leads: 1: calc seating plane from leads; 0->from boxes
;                                        |||||||||||||||||||+-bit 12:ixpos_disable; dont execute ixpos (no trafo)
;                                        ||||||||||||||||||+-bit 13:zcorr_llen: z correction from lead length
;                                        |||||||||||||||||+-bit 14:zcorr_dpak: exec DPAK type of Z correction
;                                        ||||||||||||||||+-bit 15:--
;                                        |||||||||||||||+-bit 16:mesfile_lot
;                                        ||||||||||||||+-bit 17:twotape_inspection
;                                        |||||||||||||+-bit 18:--
;                                        ||||||||||||+-bit 19:--
;                                        |||||||||||+-bit 20:MarkMpatt: multiple pattern
;                                        ||||||||||+-bit 21:
;                                        |||||||||+-bit 22:
;                                        ||||||||+-bit 23:
;                                        |||||||+-bit 24:
;                                        ||||||+-bit 25:
;                                        |||||+-bit 26:
;                                        ||||+-bit 27:
;                                        |||+-bit 28:
;                                        ||+-bit 29:
;                                        |+-bit 30:
;                                        +-bit 31:
;
/menulock 0
/smsg Initialization complete

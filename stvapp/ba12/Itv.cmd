;                       ITV.CMD
;                       ========
;                       ITV interpreter command file
;                       contains all available commands and execution codes
;                       format of file:
;                       1. number: group opcode
;                       2. number: opcode
;                       3. string: cmd_name
;                       4. string: argument format string:
;                          I,i: integer
;                          X,x: hexadecimal integer
;                          B,b: binary integer
;                          F,f: float
;                          S,s: string
;                          T,t: text (including ' ' and ',' up to '\n')
;                          .  : no parameter
;                          capital letters designate mandatory,
;                          small letters optional parameters!
;                       5. help info text is rest of line
;
;               13.8.01 (C) STVision S.A., La CHaux-de-Fonds
;
;===========================================================================
;
 0  0 ?           s           help: print this information (cmd)
 0  1 x           .           Exit: terminate program, return to DOS
 0  2 ^           .           Enter interactive mode
 0  3 @           sssssssssss var1 var2.. : Call and exec macro file (parameter list)
 0  4 devinit     IIIIis      System Initialization (device, camera, nimage_vram, nimage_ram (board#, name))
 0  6 scall       T           System call: 'command' string with parameters is executed (text)
 0  9 sprompt     T           System prompt: Display message string and wait for key input (text)
 0 10 swait       F           System wait: wait n seconds to continue (time)
 0 11 smsg        T           System message display on video monitor (text)
 0 12 slabel      IT          write text label (datum added) into image at given line (y, text)
 0 13 stext       IT          write text into image at given line (y, text)
 0 14 smem        .           prints available memory
 0 15 sopch       S           change command separator to given character (oc)
 0 16 vicset      .           enable bgnd task
 0 17 vicreset    .           disable bgnd task
 0 18 vicwait     I           bgnd task: wait n ticks (n * 10 msec)
 0 25 vicphase    I           bgnd task: switch discophase (phase=0..max)
 0 29 vicmotsync  XI          bgnd task: wait for motor movement completed (imot, delay)
 0 30 vicmotpos   XI          bgnd task: set motor position counter (imot, pos)
 0 31 vicmotctrl  XII         bgnd task: Set general motor control command (imot, command, value)
 0 32 vicinq      i           bgnd task: inquire if bgnd task is active (channel)
 0 33 vicsync	  .	          bgnd task: wait until bgnd task is completed
 0 34 vicwatchdog I           setup watchdog (time in ms, 0:disable)
 0 35 vicselect   I           Select bgnd task for setup (itask=0/1)
 0 36 vicsemasync II          bgnd task: wait until semaphore 'sema' gets 'value (sema, value)
 0 37 vicallinq   I           Inquire status bgnd task(s) (itask=0..n or -1:all)
 0 38 vicprog     II          bgnd task: Start program definition (program#, bgnd_task_#)
 0 39 vicendp     .           bgnd task: Terminate program definition
 0 40 vicx        I           bgnd task: Exec task (program_#)
 0 41 vicout      XXX         bgnd task: Output masked 32 bit word to par. port (board, mask, value)
 0 42 viciowait   XXX         bgnd task: Input 32 bit, mask, and wait until value is reached (board, mask, value)
 0 43 vicmotindex XII         bgnd task: Index stepper motors (imot, nstep, mode=0/1:abs/rel)
 0 44 vicmotspeed XI          bgnd task: Stepper motors constant speed (imot, speed)
 0 45 viciowaitand XX         bgnd task: Input 32 bit, mask and wait until non-zero (board, mask)
 0 46 vicshowait  .           bgnd task: Show where task(s) are hanging currently
 0 47 vicif       XXX         bgnd task: Input 32 bit, mask, and cont/skip following VIC commands if TRUE/FALSE (board, mask, value)
 0 48 vicendif    .           bgnd task: end of "vicif" conditional block
 0 51 vicsemaset  II          bgnd task: set semaphore # 'sema' to 'value' (sema, value)
 0 53 vicmotindexi XSI        bgnd task: Index stepper motors indirect (imot, variable#_for_nstep, mode=0/1:abs/rel)
 0 59 vicsemainc  II	      bgnd task: increment semaphore # by value
 0 60 vicsemaif	  ISI	      bgnd task: cont/skip following VIC commands if sema# == value is TRUE/FALSE (sema#, operation, value)
 0 61 vicgoto     I           bgnd task: goto label (label-#)
 0 62 viclabel    I           bgnd task: set label (label-#)
 0 64 @@          s           set macro mode: system will return to pulldown meny at any time (no key prompt) (macro directory name)
 0 65 discoselect I           Select and initialize the illumination device (0:disco board; 1:strobe light)
 0 66 devinit4    IIIiiiiiiiii System Initialization multiple grabbers/cameras (dev1,cam1, nim2,dev2,cam2, nim3,dev3,cam3, nim4,dev4,cam4, nim4)
 0 67 hdlinit     .           Initialize the universal handler
 0 68 windowmsg   I           Send a message ID to windows message handler (id)
;
 1  0 igrab       .           Grab image from camera into VRAM
 1  1 ialloc      II          Define new image, size (nx, ny)
 1  2 ig          I           Get frame to CPU memory # n (imno)
 1  3 ip          I           Put frame # n from CPU memory to VRAM (imno)
 1  4 icopy       II          copy image (imsrc, imdest)
 1  5 icopwin     IIII        copy image window (imsrc, imdest, x, y)
 1  6 ion         .           set camera ONLINE, display camera input
 1  7 ioff        .           set camera OFFLINE, display VRAM
 1  8 ifit        II          Fit image from imsrc to imdest, scale size (imsrc, imdest)
 1  9 ihist       I           Calc histogram of window in given image (imno)
 1 10 ihistav     I           Graphic histogram gliding average width (navg)
 1 11 izoom       II          Interactive pan & zoom window on large image (imno, imaux)
 1 12 iavg        II          Average 'nimage' images to image (imno, nimage)
 1 13 icmp        II          Image comparison of 'imno1' with reference image 'iref' (imno1, iref)
 1 14 idir        .           Image directory display
 1 15 ied         I           Image Editor (imno)
 1 16 ihistdsp    I           Graphic histogram display; (mode: 0->graphics, 1->table)
 1 17 igscal      II          Write grey scale (nline lines) to imno (imno, nline)
 1 18 iwin        iiii        Set window parameters (xs, ys, width, height) or with mouse, if no parameter specified
 1 19 ihistmax    I           Histogram min/max calculation, filter min dist 'threshold' (threshold)
 1 20 ihistpc     I           Phase count from histogram min/max calculation (imno)
 1 21 idiff       III         Image subtraction: imdest = abs(imsrc1-imsrc2) (imsrc1, imsrc2, imdest)
 1 22 iseg        II          Image Segmentation from histogram calculations -> binary multiphase thresholding (imsrc, imdest)
 1 23 bsnoise     III         Test image noise, algorithm 'typ', gen output image (imsrc, imdest, typ)
 1 24 imerge      III         Merge overlay planes from display to planes 6,7 with 'imsrc' (imsrc, imdest, nbit_ovl=1,2)
 1 25 icv         .           Clear video memory
 1 26 ico         .           Clear overlay memory
 1 27 ifillov     II          Fill overlay window with 'color' and drawing 'mode' (color, mode)
 1 28 iprt        IIi         Print image 'imno' on Shinko printer 'typ' 0/1 (imno, typ, device=0/1/2/3/4: SHC / EPSON_192 / EPSON_96 / HpLjII_300 / HpLjII_150)
 1 29 grvec       IIIIIII     Draw graphic vector (color, mode, ram, x1, y1, x2, y2)
 1 30 ifree       I           Release image (imno)
 1 31 irllalloc   III         Alloc new RLL runlength list in directory (nx, ny, nrll)
 1 32 irllfree    I           Release RLL runlength list from directory (imrll)
 1 33 irealloc    III         Change image size to nx, ny (imno, nx, ny)
 1 34 igetvga     II          Get image from VGA current graphics mode (imno mode=0/1)
 1 35 ifill       II          Fill image with pattern (imno, pattern)
 1 36 devmode     X           Device (grabber) mode select (mode)
 1 37 vgawin      iiii        Set VGA image window parameters (xs, ys, width, height) 
 1 38 setwv       iiiiiiii    Set window-viewport transformation (world->viewport) (xwl, ywl, xwh, ywh, xvl, yvl, xvh, yvh);
 1 39 keylog      I           Set keylog mode (mode=0/1/2/3: off/create/regenerate/replay)
 1 40 alfamode    IIIIIIII    Alfa window mode set (onoff=0/1/2 time[20msec] fgcol bgcol line nline xdsp ydsp)
 1 41 alfaupdate  .           Alfa window: Force update (if interrupt disabled)
 1 42 alfaenable  I           Alfa window enable (onoff=0/1)
 1 43 vbaexec     S           VBA visual Basic program execution (file_name.vba)
 1 44 vbainit     .           VBA Init visual basic
 1 45 vbaclear    .           VBA Clear buffers (release)
;
 2  0 fldcnv      s           Load convolution filter from given file (name)
 2  1 fcnv        IIII        Exec linear convolution filter (imsrc, imdest, div, mode: 0=cut off, 1=abs, 2=symmetric to grey level 128)
 2  2 fldnbh      s           Load neighborhood tables from given file (name)
 2  3 fnbh        III         Exec neighborhood operation with threshold (imsrc, imdest, threshold)
 2  4 ireadpic    Is          Read image window from PIC - file 'name' (imno, name)
 2  5 iwritpic    Is          Write image window from 'imno' to PIC - file 'name' (imno, name)
 2  6 iread       Is          Read image from IMG - file 'name' to 'imno' (imno, name)
 2  7 iwrite      IIs         Write image 'imno' to IMG - file 'name', 'typ' storage type (imno, typ=0:binary,1:compressed,5:TIFF, name)
 2 12 ldcfg       s           Load parameter definition 'file' (name)
 2 17 caldim      IIIFf       XY - calibration (icamera=0/1 imno, mode=0/1 width, height)
 2 19 vonline     .           switch camera online 
 2 20 voffline    .           switch camera offline
 2 21 vgrab       .           grab image
 2 22 vputframe   I           write image "imno" to display window
 2 26 vbmstring   IIIIS       Text write (x, y, ram=1/2:image/ovly cordmode=0/1:polyline/vectors)
 2 27 stgrab      II          Grab image sequence (st_grab_insp2) (start_phase end_phase)
 2 28 msread      S           MS compatible ReadProfile for InkJet (name)
;
 3 19 fedteach    s           Federn Messung Teach (PAR_file)
 3 20 fedxec      BBs         Federn Messung Execute (x_mode, x_mode2, PAR_file)
 3 21 stteach     s           Standoff Messung Teach (PAR_file)
 3 22 stload      BBs         Standoff Messung Load & Setup (x_mode, x_mode2, PAR_file)
 3 23 set1dsp     .	          Set default screen to 1 image display
 3 24 set4dsp     .           Set default screen to 4 image display
 3 25 spsdev      I           SPS device select (=0:Ismeca 1:ITT 2:Ismeca_dual_vision..)
 3 26 stexec      I           Standoff Messung Inspection Loop (audit_mode=0/1: automatic/audit)
 3 27 stsavepar   s           Standoff Messung Save PAR file and release buffers (name)
;
; Bernd Sommer individual commands
;
 4  0 grtxt       IIIIIT      Write graph text string to position (drawmode fg_col, bg_col, x, y, string)
 4  2 irot        IIFFF       Image window translation: rotation m, offset (imsrc, imdest, m, dx, dy)
 4  3 irotdif     IIFFF       Image window rotate, offset and subtract (imsrc, imdest, m, dx, dy)
 4  4 ioout       XX          Output TTL lines lfs-at with 'value' and 'mask' & read inputs (mask, value)
 4  5 macropix    IIIII       Calc macro pixel (imno, nx, ny, dx, dy)
 4  6 icorr       III         Correlation x-incr and amplitude (imno, dist, slope)
 4  7 ioin        XX          Input TTL lines lfs-at, mask and compare with value; wait until rdy (msk, value)
 4  8 discoiotest XXII        Disco board I/O test: (srcbits destbits nloop invert=0/1:non/invert)
 4  9 bsrllget    IIIIIII     RLL get test (nloop, x, y, width, height, mode, dspoff)
 4 10 iafoc       IIII        Interactive AutoFocus: (nx, ny, dx, dy)
 4 11 difsdev     SSSS        MES file: subtract two lot results and calc sdev across all devices (src_file lot1 lot2 dest_file
 4 13 devilace    I           Set camera video-mode non-interlace (i=1) or interlace (i=0), HSI(2) or RGB(3)
 4 14 bslagtest   .           Camera lag test
 4 15 bsfntinp    .           Font bitmap input from camera
 4 16 bschardsp   IS          Font char display of name "string" to image "imno" (imno, string)
 4 17 devsetframe II          Set VRAM access mode: (frame#, mode: 0->dsp;1->CPU;2->pingpong)
 4 18 bsperform   ii          Performance measurement: dummy command
 4 19 bsldrllim   SI          Load RLL text file and expand into image (filname,imno)
 4 20 calxytab    IS          Calibration of xyz-table (imno, file:reference positions)
 4 21 bsdynscan   IIIII       Dynamic scan input at moving table (imno,xleft,nx,dy,ny)
 4 22 devcamera   I           Select camera device (I=0..3)
 4 23 ixsetup     I           Setup indexer for new lead frames (imno)
 4 24 ixtripdemo  S           Indexer leadframe trip motion from BOND teachin (teach_name)
 4 25 ixfixer     I           Set indexer fixer (mode=1: UP; 0: DOWN)
 4 26 discophase  I           Set disco phase (phase)
 4 27 stepdemo    IIII        Indexer sinus motion (nloop,nstep,maxspeed,delay)
 4 32 vgaonline   .           Switch VGA to video online
 4 33 setcorr     IIIIII      Set correlation pattern (imno pattern#(0..9) ix iy width height)
 4 34 xcorr       IIIIII      Exec correlation (imno pattern#(0..9) ix iy nx ny)
 4 35 edge        IIX         online edge measurement (imno, part, mode(bit0..6))
 4 36 linscan     I           Line camera scan input (imno)
 4 37 setprofile  II          set threshold profile line (imno, offset)
 4 38 ellfit      II          Ellipse fit (imno polarity)
 4 39 edgebox     III         General box/pattern/circle input (imno part typ)
 4 40 edgeshow    I           General edge modul show function (part)
 4 42 curtype     I           Set cursor type (type)
 4 43 cursize     F           Set cursor size (size)
 4 44 bskey       .           keyboard ASCII & scan code
 4 45 diode       II          Power diode inspection (imno, mode)
 4 46 bstomtec    IIIIII      Tomtec Demo (imno, x, y, width, height, nloop)
 4 47 comsel      IX          select com1/2/3/4 device (device=1/2/3/4, init_code=e2)
 4 48 comput      Ssssssssss  write string(s) to interface (string)
 4 49 comget      x           read & display data from COMi interface (end_mask; if set->wait & read from interface until character matches)
 4 50 excelflt    SS          filter FEX data files into EXCEL (source_file, dest_file)
 4 51 istat       SSIIIIISS   Interactive statistics evaluation of measurements (cmd, rec_name, src_col, val_col, column, cycle_col, cycle_mod, begin_lot, file_name)
 4 52 bondgstat   SSSIIIIIII  Global statistics for wire bond inspection (typ="lcp" for frame/chip/pin, rep_name, dest_name, nchip, zyklus, nquad, npin0, npin1, npin2, npin3)
 4 53 bsballxy    IIII        Test of bond ball_detect (imno ball_diam patt_size search_size)
 4 56 bsdyna3     IIIIIIF     dynacraft test 3 (imtest imref mode width dgv pixdiff limdist)
 4 57 spot        IIIIIII     Spot measurement and gv test (imno, x, y, size, gvlow, gvhigh, drw_mode=0/1)
 4 58 xfinger     IIF         Exec finger length & spacing measurement (imno part# finger_diam)
 4 60 ntsc        I           Select NTSC or PAL video norm (1->NTSC  0->PAL);
 4 61 grabsect    IIIIIII     Grab sequence of image sections (imno x y width height nframe mode) 
 4 62 bsprot      .           Sub-pixel edge detection (imno mode=0/1:hor/vert npixel)
 4 63 comwrite    S           Write string to COM1/2 port (string)
 4 59 comwriteveco S           Write string to COM1/2 port VECO driver (string)
 4 64 comread     i           Read N bytes from COM1/2 port and display
 4 65 mtselect    I           Select motor device (motdev=0,1,2..)
 4 66 mtinqpos    X           Inquire motor position (imot)
 4 67 mtpos       XI          Set motor position (imot pos)
 4 68 mtsetspeed  XIFI        Set motor max index speed (imot speedfac mode=0/1:absolute/relative)
 4 69 mtindex     XII         Move motors to new position (imot nstep absrel=0/1:abs/rel)
 4 70 mtspeed     XI          Move motor(s) at constant speed (imot speed)
 4 71 mtsync      X           Wait until motor(s) stop (imot)
 4 72 keyence     FFFFFFFFFF  Request scanner diameter data for Hutzel, check against limits (l1,h1, l2,h2, l3,h3, l4,h4, l5,h5)
 4 73 glavg       III         Gliding average (4) on image imno with new sample imsrc and offset (imno, imsrc, ioff)
 4 74 stirnfl     IIIIIIFFFFF Hutzel Inspection, Stirnflaeche (imno, dth, xl, xr, yl, yh, lim_hole, lim_ring, lim_cm, lim_devmax, lim_devsum)
 4 75 spsreport   .           SPS report if inspection was OK or fault (bit 1 of SPS channel = 1 -> fault)
 4 76 objfault    .           Sets internal SPS flag if mess buffers non-empty
 4 77 tlight      IIIIIIIIIII Teach light boxes (imno, ipart, x1, y1, x2, y2, x3, y3, x4, y4, size)
 4 78 xlightbx    IIII        Exec light measurement (imno, imref, ipart, mode)
 4 79 horavg      IIIIII      Horizontal average in window: replace lines by average (imsrc, imdest, x1, y1, x2 y2)
 4 80 ishift      IIII        Shift image for (dx,dy) offset (right, down) (imsrc, imdest, dx, dy)
 4 81 fontscale   SSII        Scale char font in Y for larger/smaller top and bottom range (source, dest, dytop, dybottom)
 4 82 statreset   .           Reset online statistics
 4 84 bshcq       XS          Bshcq filter (addr name)
 4 85 stirnfl2    IIFFFFffffffffff Stirnflaeche Typ # 2 evaluation (imno, offset, lim_hole, lim_devmax, lim_devsum, lim_slope, rad_0, rad_1, rad_2, rad_3, rad_4, rad_5, rad_6, rad_7, rad_8, rad_9)
 4 86 stirnfl3    IXIFFFFffffffffff Stirnflaeche Typ # 3 evaluation (imno, mode, threshold, lim_hole, lim_devmax, lim_devsum, lim_slope, rad_0, rad_1, rad_2, rad_3, rad_4, rad_5, rad_6, rad_7, rad_8, rad_9)
 4 87 computb     Ixxxxxxxxxxxxxxxxxxx Write binary (Hex) data max 15 bytes (mode=0:direct; 1:verify duplex; list of hex bytes)
 4 88 comgetb     I           Read binary COM data & display as HEX (nbyte)
 4 89 grpnt       IIIIIIIIIIIIIIIIIIIIII Draw poly-point (drawmode, color, x1, y1, x2, y2, .. (max. 10))
 4 90 grbox       IIIIII      Draw box (drawmode, color, x1, y1, x2, y2)
 4 91 grcircle    IIIIF       Draw circle (drawmode color, x_centerc, y_center, radius)
 4 92 comtofile   S           Receive com2 data to file (name)
 4 93 grselect    I           Select a window for graphic functions (window#)
 4 94 stirnfl4    IXIIIIIFFFFffffffffff Stirnflaeche Typ # 4 evaluation (imno, mode, threshold, win_rad, win_range, win_width, win_pol, lim_hole, lim_devmax, lim_devsum, lim_slope, rad_0, rad_1, rad_2, rad_3, rad_4, rad_5, rad_6, rad_7, rad_8, rad_9)
 4 95 grupdate    .           Refresh/Flush graphic functions
 4 97 grline      IIIIIIIIIIIIIIIIIIIIII Draw poly-line (drawmode, color, x1, y1, x2, y2, .. (max. 10))
 4 98 bshw        I           Interactive Histogram Window (imno)
 4 99 polarinit   .           Polaroid Init Scanner Interface
 4 100 polarscan  IIIIIIIII   Polaroid Scan Image (imnor, imnog, imnob, x, y, width, height, mode, res=0/1/2=500/250/125dpi)
 4 101 polarsense .           Polaroid sense scanner device 
 4 102 polarmess  IIIIIS      Polaroid full measurement system of scanner (red_imno, green_imno, blue_imno, mono_imno, aux_imno file_name)
 4 103 sortcmd    SS          Sort CMD file (source dest)
 4 104 mthoming   X           Motor axis homing (motor bitcode)
 4 105 idbload    S           Load image data base into memory (IDB_name)
 4 106 idbstore   S           Store (write) image data base to file (IDB_name)
 4 107 idblist    .           List image data base to display
 4 108 idbappend  I           Append new image to data base (imno)
 4 109 idbedit    .           Edit image data base
 4 110 idbfree    .           Release IDB buffers
 4 111 idbcheckimg .          Check consistency of IDB entries and image files
 4 112 badpix     II          Create bad pixel record of camera defects automatically (imno, ncamera)
 4 113 grvecv     IIIIIII     Draw graphic vector (color, mode, ram, x1, y1, x2, y2)
 4 114 dsplclear  .           Clear display list
 4 115 dsplredraw .           Redraw display list
 4 116 grpntv     IIIII       Draw point (color, mode, ram, x, y)
 4 117 grppntv    IIIIIIIII   Draw 3 points (color, mode, ram, x,y,x,y,x,y)
 4 118 grboxv     IIIIIII     Draw 1 box (color, mode, ram, x,y,x,y)
 4 119 grtextv    IIIIIIIS    Draw graph text (color, bgcol, mode, ram, addr, x, y, text)
 4 120 seglex     II          Segmentation test 32 bit (nbyte, nloop)
 4 121 lextest    II          Memory dword load performance test 32 bit (nbyte, nloop)
 4 122 lexhist    II          Histogram surface analysis test (nbyte nloop)
 4 123 pixeltest  IS          Digitize "nimage" images into memory, select region with cursor, and write pixel values to ASCII file (nimage, file_name)
 4 124 segrlb     II          Segmentation black objects to RLL test 32 bit (threshold, nloop)
 4 125 sersel     X           Select SER1 .. SERn channels for comwrite / comread (SERi driver required) (mask)
 4 126 bshstart   IIIII       Test for h_start performance (nloop linelen numlin interlace req_frm)
 4 127 automec1   IXIX        Automelec test for hybrid leadframe attach (imno mode delay[msec] term_code)
 4 128 mstest     IIII        Master-slave test ser5-driver (nloop, master, nslave, nbyte)
 4 129 radius     II          Measure radius of circle bow fit (interactive) from chain code (imno, mode)
 4 130 replist    s           Print report list from REP file, multiple lots (file_name.REP)
 4 131 bsbmetest  III         Bme segmentation & statistics test (nloop, threshold, black)
 4 132 grftext    IIIIIIFS    Graphics vector text draw (x, y clipbox(x1,y1,x2,y2), scale text)
 4 133 grfchar    IIIIIIIF    Graphics character draw (ichar x y clipbox(x1,y1,x2,y2) scale)
 4 134 segrlw     II          Segmentation white objects to RLL test 32 bit (threshold, nloop)
 4 135 date       .           Date & time stamp
 4 142 statistics .           General statistics page
 4 149 mikeview   II          Graphic window display enable/disable (win#, onoff=1/0)
 4 150 mikedsp    I           Mike's image display test in windows
 4 151 dspassign  IIIIIIIIIIIIIII  Mike's display assign image to dsp (dspno imno left top width height)
 4 152 dspunassign I          Mike's display unassign (dspno)
 4 153 dspselect  I           Mike's display select (imno)
 4 154 threadcreate .         Thread test: create thread
 4 155 threadend  .           Thread test: end thread
 4 156 threadsync I           Thread test: synchronize; wait until thread reaches level (ilevel=1,2,3..)
 4 157 thread2create .        Thread2 test: create thread
 4 158 thread2end  .          Thread2 test: end thread
 4 159 thread2sync I          Thread2 test: synchronize; wait until thread reaches level (ilevel=1,2,3..)
 4 160 bstestgrab  .          Test for thread image grab
 4 161 bsdiscospeed II        Performance test for disco I/O under windows 2000 (nloop mode)
 4 162 comtest     .          Test for serial com1/2 communication
 4 163 comopen     IIIII      Open com1/2 COMSH2 driver (com1/2=1/2) 
 4 164 comclose    .          Close com1/2 COMSH2 driver
 4 165 ijmaeander  .          XY table maeander scan
 4 166 ijflatest   IIIIIIIII  Test for flats algorithm (imno, irad alpha len i1 i2 i3 i4 i5)
 4 167 lasertest   .          Synrad Laser Testfunction (Active-X)
 4 168 qfptest     IFFFFIII   qfp lead measurement test function (imno, x, y, width height range nvecshift nleadshift)
 4 169 transtest   .          Transponder test
 4 170 strobetest  XX         Strobe test (lamp_code, timer)
 4 171 laserinit   .          Synrad Laser Initialization (non thread first call with zero energy)
 4 172 ivodilatation IIF      Ivo dilatation test (npoint, range, dil)
 4 173 ivointpol    II        Ivo contour interpolation test (npoint, nintpol)
 4 174 ivochaintest IIIFF     Ivo chain test (imno, nlowpass, nintpol, dilatation, tiltangle)
 4 175 testimage    IIIIII    Create test image (imno, type, x, y, w, h)
 4 176 lecureux     III       Test for screwer (i1 i2 i3)
 4 177 lecureux2    IIIIIII   Test2 for screwer (nom_torq min_torq max_torq delay testmode action_bad action_good)
 4 178 tesa         Iiiiiii   Tesa height measurement test program (i1 i2 i3 i4 i5 i6 i7)
 4 179 cogtest      IIII      Cognex 8100L driver test (var1 var2 var3 var4)
 4 180 pelitest     IIII      Pelikan test (var1 var2 var3 var4)
 4 181 ipp_sobel    IIII      Intel IPP Sobel filter (imsrc imdest par1 par2)
 4 182 ink2mark     III       Inker2 set marker (device, pos, mode)
 4 183 readdpf      IS        Load DPF (Barco) CAD file (mode, filename)
 4 184 kammperform  II        Kamm scan performance (Inspecta4 parallel grab (mode, nloop)
 4 185 lightreset   .         Reset light post all lights and buzzer alam
 4 186 ijholetest   II        Inkjet st_x_hole test (iphase, mode)
 4 187 resource     SS        Sort resource.h file (source path, dest path)
 4 188 usbtest      XX        USB test (v1, v2)
 4 189 usbstrobe    XX        USB strobe light (v1, v2)
 4 190 usbout       XXX       USB output (port#, mask(8 bit), value)
 4 191 usbin        X         USB input  (port#)
 4 192 usbinit      .         USB I/O initialization
 4 193 fwmode       III       FireWire set mode (icamera=0/1/2, mode=0:gamma/1:gain/2:brightness/3:shutter/4:trigmode/5:timeout, value)
 4 194 fwtrigger    III       FireWire ext trigger test (nloop, nint, next)
 4 195 iowarrior    X         IO Warrior Test (output, 32 bits)
 4 196 iow_open     IXix      IO warrior open all devices (device0,1...)
 4 197 iow_close    .         IO warrior close all devices
 4 198 iow_write    IX        IO warrior write 32 bits to one device (board#=0/1/2.., value(hex 32 bit))
 4 199 iow_read     I         IO warrior read 32 bits and display on dialog line in hex (board#=0/1/2..)
 4 200 iow_perform  III       IO warrior performance test (board#=0/1/2, nloop, mode=0/1:output/input)
 4 201 stb_init    .          strobe-2/3 hardware initialization
 4 202 stb_setddd  X          strobe-2/3 set data delay device pulse width (width)
 4 203 stb_setad   XX         strobe-2/3 set a/d converter voltage (ad#=0..7, value=0...ffff)
 4 204 stb_enable  X          strobe-2/3 enable/disable channels 0....7 (bits 0...7)
 4 205 stb_mode    I          strobe-2/3 set mode=0/1: continuous / triggerd strobe operation
 4 206 usbpattern   XXII      USB output test pattern (port#, mask(8 bit), ntoggle, wait[msec])
 4 207 stb_camexp  III        Hardware triggered camera exposure (ncamera, nloop, hwexp=0/1)
 4 208 stb_bitout  XXX	      Strobe-2/3 general bit output (byte=0..5, mask=1..ff, value=0/1)
 4 209 stb_contgrab II        Continuous grab mode & counter load (mode=0/1, ctr=1...64000)
 4 214 stb_seliow  II         Select IO Warrior (??)
 4 216 fwcamsequence Iiiiiiii Redefine camera sequence (camID0 CamID1...CamID7)
 4 217 fwupdate     I         FireWire update (mode=0/1/2)
 4 218 contgrabtest III       Continuous grab test loop for 1 or 2 cameras various modes (ncam=1/2 mode=0/1/2, cnt_trigger)
 4 219 menulock     I         Menu is locked (1) or released (0) for initialization
 4 220 coverglass   I         Move cover glass up(1) or down(0) in Falcon500 glass handler
 4 221 isonline     I         Set gthd.IsOnline to ON (1) or OFF(0)
 4 223 glaschk      .         Check glas handler during initialization
 4 224 startupchk   .         User startup check for glas handler before initialization
;
; Stefan Baur individual commands
;
 5  0 shell       .           Call a DOS shell (leave with EXIT)
 5  1 bright      i           Brightness test and save image, if 'S' is pressed. End by endkeys. Parameter mode: 0=short, 1=double headline, 2=including å (default:2)
 5  2 ver         .           Copyright, version number and date
 5  3 vgacol      .           Test display of vga colors (displays background and foreground)
 5  4 msgcol      .           Test arguments of msg_color array
 5  5 set         s           Set various flags (c(ordspmod), d(emo), l(og), o(nline), p(rint), s(tate), t(est), u(nit), v(erbose), w(indow), (e)x(tern), z(time), ' '), character followed by one digit, blank: display flags (switch)
 5  6 tmstart     i           Starts timer (timer number = 0..9), if number is missing, all timers will be started
 5  7 tmlatch     i           Latches timer i, if number is missing, all timers will be latched
 5  8 tmshow      i           Displays measured time of timer i, timer keeps on running. If number is missing, all timers will be displayed
 5  9 tmshowlatch i           Displays latched time of timer i, if number is missing, all latches will be displayed
 5 10 tcfg        s           test print of config struct (line_identifier)
 5 11 avghist     I           Average histogram without rescaling/division (navg)
 5 12 segman      IIiiii      Manual segmentation of image (imsrc, imdest, segment#, nphase, thickness, online-loops: 0 = offline)
 5 13 segment     IIi         Automatic segmentation of image (imsrc, imdest, segment#)
 5 14 segdir      .           Show contents of segment directory
 5 16 brightctrl  ifi         Automatic brightness adjustment (delta, gain, time in ms)
 5 17 show        ii          Show (scale (0=half, 1=full, 2=double), mode (1=continuous))
 5 18 fkey        ST          Define macro for F-key (F-key, definition text)
 5 19 fkeyshow    ss          Show F-key macro definitions (1st F-key, last F-key)
 5 20 motinit     .           Init and stop all valid step motors, set all positions to zero
 5 21 motpar      iiiiii      Set motor parameters (#mot, v_init, v_end, ramp, div, delay)
 5 22 motcont     II          Execute motor control command (#mot, control_byte 0..15)
 5 23 motstat     i           Query hardware status (#mot)
 5 24 motsync     i           Wait for motors resting (#mot)
 5 25 motindex    IIi         Move step motor (#mot, steps, 0/1=abs/rel)
 5 26 motsetspeed ii          Set step motor to constant speed (#mot, speed)
 5 27 motsetpos   ii          Set step motor position (#mot, pos)
 5 28 motspeed    i           Show motor speed (#mot)
 5 29 motpos      i           Show motor position (#mot)
 5 30 motmov      i           Interactive step motor movement with speed control (display_type)
 5 31 motgroup    Ii          Interactive step motor group movement with speed control (#mot, display_type)
 5 32 xyztaborg   i           Move xyztable to origin (org_speed)
 5 33 xyztable    .           Interactive step motor movement with position control for xyz table
 5 34 zafoc       .           Do autofocus with z motor from xyztable
 5 35 ixtransp    ii          Test of ix_transp (imno(default=0), teachmode)
 5 36 ixstep      i           Test of ix_step (imno, mode: 0=init, +-1=next section, +-2=next chip, +-3=clear, +-4=next camera, 5=home)
 5 37 sensor      x           Show status of sensors (adress)
 5 38 discoset    III         Set brightness of leds (group (0/1), type (0=kranz, 1=top, 2=bottom), value)
 5 39 discocir    IB          Set led circle according to bitfield (group, iled)
 5 49 motcmd      IIi         Send motor command to step motor(s) (#mot, cmd, data)
 5 50 in          SX          Input from port (byte/word/dword, portadress)
 5 51 out         SXX         Output to port (byte/word/dword, portadress, value)
 5 52 fmed        IIiii       Execute median filter (imsrc, imdest, size(nxn), index, typ)
 5 53 ixpunch     I           Punch = move down and up (station)
 5 54 dongle      S           Prove dongle key (querystring)
 5 55 setcoord    ff          Set current coordinates at mouse position (x, y), default is (0, 0)
 5 56 ixmove      I           Interactive indexer movement with light calibration (imno)
 5 57 tstfnt      s           Bitmap font testprint (filename)
 5 58 state       X           Set system state (new_state)
 5 59 waitframe   i           Wait for n frame pulses (#_frame_pulses)
 5 60 fkeysave    s           Save current funktion key configuration as macro file (filename, default = 'fkeys')
 5 61 devcamshut  I           Set shutter mode of Pulnix camera, if connected to multiplexer board (shutter_mode)
 5 62 inkey       II          Returns ascii and scan code in two integer variables (ivar for ascii, scan)
 5 63 mouse       III         Returns mouse position and status in three integer variables (ivar for x, y, stat)
 5 64 ldstatscrn  .           Load statistic screen masks from stat_1.txt and stat_2.txt
 5 65 statscrn    i           Interactive statistic screen test (scrn)
 5 66 statspeed   Ii          Speed test for statistic screen (scrnno, loops)
 5 77 msgread     s           Read (error-) message file from disk (filename)
 5 78 msgdsp      II          Display (error-) message in output (error-) window (group, id)
 5 79 msgtest     .           Test display of read messages
 5 90 sdfree      s           Display current free space on disk (diskname, default = current drive);
 5 91 int         XXxxx       Execute interrupt (intno, eax, ebx, ecx, edx). Default for registers is 0
 5 92 sregdsp     i           Display processor registers (reg_nr)
 5 93 keypos      .           Inquire key switch position
 5 96 igwin2      II          Test getwindowhalf (imno, 0./1.half_image)
 5 97 ldcad       is          Load CAD data from file (polarity, filename)
 5 98 tcad        .           Test cad routines
 5 99 tmouse      .           Online mouse test
 5 110 pwd        i           Enter password for new level
 5 111 pwdrest    .           Restore password level
;
;
; Dirk Schwenk individual commands
;
 6 2  classify     ss           classify feature vectors in file "train.fex" with classificator parameters in "parameter.cla" (train,parameter)
 6 5  dsfastelli   III  	fast ellipse det. (imno, polarity (+1 bright, -1 dark circle), n_coarse) 
 6 6  dsellipse    IIIFFFFIII  	detect circle (imno,pxdiff,fullslope,eccentry,phi_max,tol_filter,tol_fit,polarity[1=bright circle, -1=dark],n_coarse,i_ecc (=1 fit ecc))
 6 7  dsellipse2   IIIIFFFF  	ellipse detection (imno,imno_test,n_fine,polarity,radius_guess,ecc,tol_filter,tol_fit)
 6 8  dstimetest   II       	benchmark test (# of iterations, arithmetic value )
 6 9  dsellipse3   IIIFFFFFF    ellipse detection (imno,imnotest,polarity,radius,dist_filter,dist_fit,phi_filter,phi_fit,ecc)
 6 14 dsonltest    .		camera test
 6 15 dssynctest   .           	test 2 synchronized cameras operating with two video memories
 6 16 dsvartest    IIII         calc. variance along wire dir. (imno_s,imno_d,n_avg,rllen) 
 6 17 dshotell     IIII         test hotelling trafo between two frames (imno_s1,imno_s2,imno_d,rllen)
 6 18 dscorrel     IIii 	test correlation between master & sample (learn_flag=1/0,imno, n (len=2^n),dir (0=h, 1=v))
 6 19 dswalsh      .            test of walsh trafo
 6 20 dstwodim	   IIII         two dimensional correlation (learn_flag,imno,max_lag[0],max_lag[1])
 6 22 dselli       IIIF         ellipse det. (application level) (imno,polarity 1=bright circle, -1=dark,i_ecc(=1 fit ecc),eccentry)
 6 23 dscal        I		test led calibration routine (imno)
 6 24 dsrectl      IIIIIIIFF    test low level rect. detector (imno, polarity, i_fit, i_aliased, i_accu, n_coarsa, i_plateau, tol_filter, tol_fit)
 6 25 dspol1       .	        validate polynom app. of 5 * 5 window
 6 26 dspol2       I            test pol. app. of 5*5 window (imno)
 6 27 dsrectu      III		test user's rect. detector (imno, polarity (=1 for bright rect, =-1 for dark),i_fit (=1 fit x, 2=x,phi, 3=x,r,phi))
 6 28 dsthist      II		test tresholding of bimodal hist (imno,i_test=0,1(2 deltas),2(straight line))
 6 30 dsthist2     III		test tresholding of multimodal hist (imno,fltwidth,gausswidth)
 6 31 dspath       II           test edge det. by path search(imno, stiffness)
 6 32 dswirexy     IIIi         test wire_xy search (nframe, imno_test, imno[2])
 6 33 dscoarse     IIII         generate coarse grained image(imno_s, imno_d, ncoarse_x, ncoarse_y)
 6 40 caltable     .            calibration of chip table inclination based on measured wire heights
;
; Conny Saake Commands
;
 7  0 penteach    Is          Penholder writing test teach mode (typ, PAR-name)
 7  1 penxec      XXs         Penholder exec inspection (x_mode, x_camera, PAR-name)
 7  2 cardman     .           card manual menu
;
; Teach In, edge, slope, or object measurement & class
;
 8  0 teach       s           Start of teach in (file), or terminate (no param)
 8  1 ldpos       S           Load trained data set
 8  2 setpart     IIifff      Define object (part#, imno, parent#, dxlimit, dylimit, rotlimit)
 8  3 setregion   I           Set region of surface inspection for given object (object#)
 8  4 xpospart    I           Position finding & bound test of part (part#)
 8  5 xgreyval    II          Extract average grey level (object#, threshold in %)
 8  6 xgvline     ISIIII      Grey level detection polyline (object#, mode, darkobj#, lightobj#, sngl_thrsh, glob_thrsh), thresholds in %
 8  7 xslline     ISI         Slope detection polyline (object#, mode, limit in units)
 8  8 objmess     IIIIIIIIIIIIs Object measurement (imno, part, mess_mode, threshold, theshold2, segmode (1:black_obj), dsp_flg, class_typ (1:on), minarea, edge_flg, maskmode, reset, class_file)
 8  9 objshow     I           Show object measurement results (mode=0/1: Enter manual class)
 8 10 objstore    ISB         Store object results to file (mode=0/1/2:close/open/flush, file_name, fv_code)
 8 11 classhow    .           Display classification results
 8 12 classclr    .           Clear all classification counters
 8 13 classtore   s           Store classification results to file (name)
 8 14 classlearn  IIss        Learn from training samples in s.fex parameters of classificator and store them in s.cla. I: codes the features to be taken into account, =0 means interactive definition, I=1,2, chooses typ of classifyer
 8 15 objdensld   s           Load densitometric translation table (file.dns)
 8 16 objchscale  IIIIFF      Obj chain scaling (imno, holes, xcenter, ycenter, scx, scy)
 8 17 caldns      IIS         Densitometric calibration (imno glare_mode=14 fixed!!  filename)
 8 18 objdraw     .           Draw all measured objects on display
 8 19 motionman   II          Interactive motion analysis (imno, nimage)
 8 20 motion      IIF         Automatic motion analysis (imno, nimage, xmax)
 8 21 bsdilate    III         Runlength list dilatation (imno, holes, radius)
 8 22 motioned    I           Motion editor (marksize)
 8 23 objread     SI          Read FEX feature data from file (name, append_mode=0/1)
 8 24 motioncon   II          Automotic point motion tracing (mode=0/1, radius)
 8 25 motionget   F           Get stress data from host (deltime[msec])
 8 26 motionbr    .           Communication test with host for motion analysis sync test
 8 27 objman      IIIIIIIs    Manual object measurement with cursor mess box and auto threshold (imno, mess_mode, threshold, segmode, dsp_flg, class_typ, minarea, class_file)
 8 28 objlimit    XFF         Object measurement: check results (Bit_CODE) against limits & discard if out of specs (code, low, high)
 8 29 objsetup    I           Setup objmess for complex measurements (imaux)
 8 30 dnstest     I           DNS test for densitometric measurement (imno)
 8 31 xcaldns     IIS         Extended densitometric calibration with free configurable calibration mode (imno glare_mode filename)
 8 32 ihistore    IIs         Store histogram # 0/1 result to FEX file with user ID (ihist=0/1 ID file)
;
; command interpreter flow control functions
;
; if appending further control commands, adjust NFLWCMD in FLOW.H
; to the new number of flow control commands
;
 9  0 label       S           Set label, only executable in macros (label)
 9  1 goto        S           Jump to label, only executable in macros (label)
 9  2 loop        IS          Execute loop n times, only executable in macros (count, label). ATTENTION: LOOP HAS TO BE THE FIRST COMMAND IN A LINE!
 9  3 if          T           Execute following command only if text evaluates to true (!=0), else skip next command. Only executable in macros. ATTENTION: IF HAS TO BE THE FIRST COMMAND IN A LINE!
 9  4 iferr       i           Execute following command only if error (err) occured in last command, else skip next command. If no value is given, iferr is sensitive to every error value. Only executable in macros. ATTENTION: IFERR HAS TO BE THE FIRST COM
 9  5 else        .           Else case of 'if' statement
 9  6 endif       .           End of 'if' statement
 9  7 gosub       S           Call a subroutine, only executable in macros (label). ATTENTION: LOOP HAS TO BE THE FIRST COMMAND IN A LINE!
 9  8 return      .           Return from a subroutine called by 'gosub', only executable in macros, releases and forgets local variables
 9  9 end         .           Terminates a macro file
 9 19 rem         T           Remark, ignore rest of line (remark_text)
 9 20 local       T           Create local variables in a subroutine, they are automatically released when returning (varlist)
 9 21 seterr      i           Set variable cmd_err to specified value (cmd_err)
 9 22 varset      St          Set command interpreter variable (var (i0..i999, f0..f999, s0..s999), value), if no value is given, the variable content will be displayed. /# will do the same
 9 23 varshow     ss          Show command interpreter variables (var1 (i0..i999, f0..f999, s0..s999) to var2)
 9 24 vardsp      siiiiii     Display contents of integer/float variables in grafic window (type, n, x, y, width, height, mode)
 9 25 vartrans    IIISs       Transform variable pairs (transform_set#, invers/normal(-1/1), npoint, source_var, dest_var)
 9 26 vartrset    IIFFF       Set transformation parameter (transform_set#, invers/normal(-1/1), dx, dy, rot)
 9 27 varpoly     SIf         Show variables as polyline in overlay (var, npoint, scale)
 9 28 varsave     Ssiis       Save command interpreter variable(s) to disk (var1 (i0..i999, f0..f999, s0..s999) to var2, var_per_line, mode:bit0:1=include var name, filename)
;
; mask routines
;
10  0 mskdev      Ii          Select mask display device (device (0=video, 1=VGA), lines (0=80x25, 1=80x50))
10  1 mskread     s           Read mask object tree(s) from file (name)
10  2 mskclear    .           Clear all mask objects from memory
10  3 mskdir      s           Show mask object directory (g=group, a=all, r=root, s=submenu, t=tree, x=hexadr)
10  4 mskgetroot  S           Get root id to given file name (name)
10  5 mskact      iii         Mask interaction (group, id, mode(1=enter last submenu))
10  6 mskdrw      i           Mask (re)draw (group)
10  7 mskinit     i           Mask initialisation, automatically done by 'mskact' and 'mskdrw', necessary for 'mskput-' and '-getvar' (group)
10  8 mskkey      .           Returns last ASCII and SCAN code and mouse position and status
10 10 mskputattr  IIXI        Set mask object attribute (group, id, attribute, on/off)
10 11 mskgetattr  IIX         Get mask object attribute in #i999 (group, id, attribute)
10 12 mskputvar   IIT         Set mask variable (group, id, value)
10 13 mskgetvar   IIS         Get mask variable into interpreter variable (group, id, variable_name)
;
; communication routines
;
11  0 cominit     iiis        Initialize com port (port (0=com1), baud (9600), stopbit (1), parity (e,o,n))
11  1 secsopen    .           Open and initialize secs driver
11  2 secsstat    .           Inquire status of secs driver
11  3 secsctrl    IIIIIXII    Secs control parameter output (level, secsp.error, secsp.errcnt, secsp.intcnt, secsp.recdat, secsp.base, secsp.master, secsp.my_mode)
11  4 secsread    .           Read text from secs interface
11  5 secswrite   T           Write string to secs interface (text)
11  6 secsrec     II          Receive secs message (id, expected_stream)
11  7 secssnd     IIIt        Send secs message (id, stream, function, text)
11  8 secstmout   F           Set secs timeout value (time)
11  9 secssndlist III         Send secs message list (L,2) (A,4)(ABOS) (A,3)(1.1) (id, stream, function)
11 10 secssiemens IIII        Siemens communication interaction (id, stream, state, count)
11 11 secsmt      .           SecsII test for MT project
11 12 secsres	  .	      reset
11 13 secsmttest  .	      MOTOROLA test function	
;
; teach and execute functions 
;
12  0 tchini      s           Start of teach in (file)
12  1 tchimg      IIi         Teach reference master image (imno, ipart, nimg)
12  2 tchlight    II          Teach light windows (imno, ipart)
12  3 tchllim     II          Teach light window limits (imno, ipart)
12  4 tchpart     IIiiii      Teach part (imno, ipart, iparent, dxlimit, dylimit, rotlimit)
12  5 tchmask     I           Teach measurement mask for (ipart)
12  6 tchpos      IIi         Teach part position windows (imno, ipart, edge_typ)
12  7 tchobjlim   IX          Teach objrct limits (ipart, mask)
12  8 tchterm     .           Terminate teach mode and store data
;
12 10 xini        s           Start of inspection execute (file)
12 11 xlight      II          Execute light window inspection (imno, ipart)
12 12 xmask       IIi         Execute surface mask for (imno, ipart, dsp_flg)
12 13 xpos        IIi         Execute part position measurement (imno, ipart, edge_typ)
12 14 xobjlim     I           Prove objects for limits given in fv_lim (mess_mode)
12 15 xobjdens    .           Prove error density
12 16 xavgerr     FFF         Error if averaged errors exceed limit (integration_const, err_limit, warn_limit)
12 17 xterm       .           Terminate execute phase and close files
12 18 partget     IIii        Get part mask region (box with overshoot in x and y) from frame to image (imno, ipart, dx, dy)
;
;       cytology application section
;
13  0 cytold      S           Load FEX file of measured data (file_name)
13  1 steprand    III         Do (nstep) random steps in +- (width), (randw) = width of one step
13  2 cytoreset   .           Reset cyto histograms, counters
13  3 bar_demo    I           Demonstration and post process of bar detection (ipart)
13  5 cytomess    IIIIIBs     Cytology measurement mode (imno, imdb, thresmode, glare_mode, image_store_mode, fv_code, name)
13  6 cytosetcf   FFFFF       Set Reference cell correction factors (5 types)
13  7 cytocell    IIII        Cell image display from data base "imno" to monitor (imno, cellno, x, y)
13  8 rca         IIIIBBBISff     Receptor analysis (imno_mask, imno_mess, imno_pic, imno_store_mode, fv_code, edge_mode, name)
13  9 chainedit   .           Edit chain codes
13 10 rcaref      IIIIBBBISff     Receptor analysis: negative reference threshold definition (imno_mask, imno_mess, imno_pic, imno_store_mode, fv_code, edge_mode, name)
13 11 rcamono     I           Test driver monochromator (mode)
13 12 rcapar      ffiiii      Show/change minarea, water_size, num_convol, water_segm_shift, water_border_delete, water_min_segment
13 13 filterwheel XIX         set filterwheel (Filteraddress)

;
;
; Richard B”nisch individual commands
;
14  0 scrnputs    IT          Put string on text screen window (#window, text)
14  1 scrnwin     IIIII       Set text screen window (#window, x, y, width, height)
14  2 scrnclrwin  ix          Clear current text screen window (#window, color)
14  3 scrndelwin  I           Delete text screen window (#window)
14  4 scrnsetcur  iii         Set text screen cursor position (#window, x, y)
14  5 scrngetcur  i           Read text screen cursor position (#window)
14  6 scrncurvis  ii          Set cursor visible state (#window, state)
14  7 scrnsetcol  IX          Set color for window (#window, color)
;
;
; Diode inspection area
;
15  0 inspdiode  I	      Diode-inspection (mode)
;
;	LF2 application
;
16  3 lf2init     .           LF2 machine initialization
16 16 cmdflt      SS          LF2 macro source filter (source_file dest_file)
16 24 lf3load     BBBBIIIS    LF3 Load teach & prepare inspection (xmode, xmode2, xmode3, xmode4, x_camera, x_master, broadcast, file_name) 
16 25 lf3xec      I           LF3 automatic inspection or audit (audit=0/1: automatic / Audit mode)
16 26 lf3end      .           LF3 end inspection
16 29 mikeparam   IIIFFFSSS   Get param test (ivar, lo, hi, fvar, lo, hi, name, fmt=i/f/s, svar)
16 30 xypos0      .           XY stage (Maerzhaeuser) zero definition (init)
16 31 lf3xectest  II          LF3 test execution (x_camera, mode)
16 33 lf3setcam   IIIII       LF3 camera setup (icam=0/1/2/3, mot=0..7:cam-motors; master/slave=1/2; analog/digital/shutter=0/1/2; mux_address=0...3)
16 34 digseltest  .           mfg_digsel test: rotate cam0/1/2/3 permamently
16 38 mfgon       i           mfg online software loop (zoom_mode)
16 42 lf2sync     I           LF2 sync bgnd process complete (channel=0/1/-1)
16 44 mfgstat     .           VMFG test function
16 45 mfgxchg     .           VMFG bank exchange
16 47 mfgmodcam   X           VMFG set camera mode
16 48 mfghstart   xxxx        VMFG h_start function (line_len, nline, ilace, set_frame_no)
16 49 mfgselframe I           VMFG frame number (frame#;-1 for rotate)
16 50 mfgcamsel   I           VMFG camera select (icamera=0..3)
16 51 mfgint      X           VMFG set interrupt mode (mode)
16 52 mfgphoto    I           VMFG single photo (Megaplus) (shutter_time[msec])
16 53 mfginita    .           VMFG general initialization
16 54 mfgblank    x           VMFG set black porch (length_porch)
16 55 mfgblack    x           VMFG set vertical black porch (black)
16 57 indexselect I           select indexer device (0:Null 1:eeja 2:automelec)
16 58 lf2zcalcset IFFF        LF2 data set for Z calculation (ipoint, mes_shift, tantheta, weight)
16 63 atirdcom    .           Read file name from ATI handler
16 67 mpfginit    .           Inspecta-2 Init
16 68 mpfgclose   .           Inspecta-2 Dsconnect
16 69 mpfggrab    .           Inspecta-2 Grab Image
16 70 mpfgonline  II          Inspecta-2 Online Images (icamera, imno)
16 71 index       I           Indexer move index step (mode)
;
;       Claudio Facchinetti functions
;
17  7 setwvaz     IIIIIIII    Auto-zoom: IMNO, X,Y,W,H (viewport), X,Y (zoom center), MODE
17  8 adjustbs    .           Adjust beam splitter positions utility function
17  9 adjustcam   .           Adjust camera positions utility function
;
;	Kurt Wilfer Functions
;
20  0 hello_world IFS         KW Test-Funktion (int, float, string)
20  1 grapl       SI          Read Anvil 5000 GRAPL file into system (name,mode)
20  2 dspgrapl    IIIF        Display GRAPL vector data (xoff, yoff, color,zoom)
20  3 adjgrapl    .           adjust grapl vector data
20  4 lf2rdcad    SI          read converted grapl file into system (name, reset)
20  5 klook       .           modify lookup table
20  6 lf2dist     III         manual distance measurement (imno, imaux, z_mode)
20  7 kzoom       IIIII       zoom(imno,imaux,x,y,zoomfactor)
20  8 dcizoom     II          new zoom with mouse (imno,imaux)
20  9 drwrect     IIIIisii    rectangle(x,y,w,h,color,text,color,mode)
20 10 lf2sens	  .           display sensors
20 11 dimmer	  .           dimmer function
20 12 tpic	  IIII         test_picture (imno,gv1,gv2,size)
20 13 mtstop	  X           stop motor(imot)
20 14 mtstat	  XI          stop motor(imot mode)
20 15 mtcmd	  S           motor command (command)
20 16 campos0     .           Move cameras to top position (init)
20 17 photo       .           camera photo mode (mode 6)
20 18 ihistpars    .          get histo results in i90 .. i95 gvlow,nrlow,gvmax,nrmax,gvhigh,nrhigh
20 19 lf2man	   .          new lf2 operator menu
20 20 mskxy	   II	      get mask coordinates (group, id)
20 21 kmtinqpos    X          Inquire motor position (imot)
20 22 kmtsync      X          Wait until motor(s) stop (imot)
20 23 mtinit       I          Initialize current motor device 
20 24 writelut     S	      Write current lookup table to file (filename)
20 25 mtgindex    XI          Move motors to defined position (imot absrel=0/1:abs/rel)
20 26 mtopos      II          Set position in mot struct (#mot=0..5,value)
;
20 27 mclcominit  .           Maerzhaeuser register & COM initialition
20 28 mclxy       III         Maerzhaeuser movement (x, y, mode (0=absolut, 1=relativ))
20 29 mclctrl     III         Maerthaeuser control (regnr, value, mode (0=read, 1=write))
20 30 mclgo       .           Start Maerzhaeuser table
20 31 mclcalib    .           Calibrate Maerzhaeuser ()
20 32 mcljoy      i           Joystick activate (0 = off, 1 = on, 2 = on & wait until right mouse button, none = on)
20 33 kflag       I           show, change kurt.testflag
20 34 lutmerge    II          merge source image with lut (source ,dest)
20 35 hcpy        I           print current screen ( HP-LJ=35, TIFF=20)
20 36 clock       .           returs clock in milliseconds in i98
20 37 plotgamma   S           plots objpar.volix on screen (filename of dns file)
20 38 rddxf       S           Read dxf file into system (name)
20 39 igs3        II          Get image from s3 (imno, mode)
20 40 lf2zoom     I          new zoom with mouse (imno)
20 41 lutobr      I          luto back or restore ( 0 = backup, 1 = restore)
20 42 computa     T          write string to interface (string)
20 43 comgeta     x           read & display data from COMi interface (end_mask; if set->wait & read from interface until character matches)
20 44 autocmd     II          testfunction for automelec commands (cmd, param)
20 45 autorequest I           testfunction for automelec commands (cmd)
20 46 autoerror   .           request for automelec error message
20 47 ms3init     .           ms3init
20 48 dosshell    .           dosshell on S3 VGA
20 49 setwv2      iiiiiiii    imno, ixzoom(0..27), xwc, ywc, xvl, yvl, xvh, yvh;
20 50 mdwin       IIIIII      set mesdsp win (window,x,y,w,h,col_len)
20 51 newmesdsp   I           newmesdsp (mode 0 = interactive)
20 52 grayscale   IIII        put grayscale to screen (x,y,w,h)
20 53 findokbox   IIIIII      find ans modify item in varbuf(start,count,cmpval,setval,mvnr,cpmoff)
20 54 vicintx     .	      only a test for debugging
20 55 semashow    I	      show contens of semaphore  and put it to var 99
;
;       Martin Maximilian Mayr Functions
;
21  0 max_world   IFS	      MM Test Function (int float string )
21  1 klook3	  .	      max first testroutine ()
21  2 contrast	  .	      modifies grey wedge and brightness ()
21  3 autofocus2  IIII        autofocus test function  
21  4 autofocus   IIII        autofocus test function for fine focus
21  5 keystatus   .           Test Get Key Status function 
21  6 testwindow  .           Test Window Restauration      
21  7 testchar    .           Test Char Get Put
21  8 testflag    .           Output of max.testflag value
21  9 changeflag  I           Change global max.testflag to # .
21 10 testwater   II          watershed, input img#, filtered img#, output img#
21 11 testmemo    .           test allocatable memory 
21 12 mmerge      III         src imno, dest imno, color for ovl merged into src
21 13 iatest      I           ia segmentation and obj mess
21 16 prtpar      ii           testroutine for color scanning with polaroid cs-500i
21 17 scan_color  .           testroutine for color scanning with polaroid cs-500i
21 18 maxtone     IIIII       freqlow, freqhigh, ramp1(ms), duration(ms), ramp2(ms)
21 19 newzoom     IIIII       new zoom function for polaroid
21 20 polarpage   IIIII       imno original, x, y, width, height of original to be copied
21 21 xalloctest  .           testing memory with xalloctest  
21 22 chaindrw    .           call chain_ch_drwall
21 23 polaredit   .           test
21 24 testclip    I           test clipping (0 new , 1 old)
21 25 soundon     I           sound on with frequency I 
21 26 soundoff    .           sound off
21 27 ms3clip     IIII        set clip window (x,y,w,h)
21 28 mfgclip     I           clip boundaries (0 = off, 1 = on)
21 29 ctcinit     .           initialize all ctc's on MIC IO board
21 30 ctctest     I           read from all ctc as a test
21 31 ctcshaft    II          read absolute shaftencoder move: ctc number positiv, ctc no negativ
21 32 maxwatch    .           set watchdog function for vics to letch_watchdog
21 35 asstest     I           count value (only 16 bit used) for ctc1 counter 0
21 36 ctccount    IXXX        set CTC counter to preset (counter_value, counter_ port @ (hex), control_port @ (hex), control_word (hex))
21 37 ctcstrobe   II          Strobe light (time[5..50000mysec], counter#=0..14)
21 38 ctcpioinit  II          initialize 8255 with "portno [0..5]" and "mode" 0=3x8bit output, 1=portc[0..3] input rest output;
21 39 ctcpioout   II          8255 "portno [0..5]: pio1a=0, pio1b=1 ..." and "data" byte for output
21 40 ctcreadback I           0 > 1.0; 1 > 1.1; 2 > 1.2; 3 > 2.0; 4 > 2.1; 5 > 2.2  ... 14 > 5.2
21 41 ctcstatus   I           0 > 1.0; 1 > 1.1; 2 > 1.2; 3 > 2.0; 4 > 2.1; 5 > 2.2  ... 14 > 5.2
21 42 ctctestall  I           mode 1 continuous output all status, mode 0 one time read status and counter
21 43 testdiagram IIIII       Testfunction for scatter diagrams in masks (n pnts in x, m pnts in y)
21 44 diagram     IIIII       Testfunction for scatter diagrams in masks (nx, ny number of points)
21 45 diagram_init    IIIII   Initialize global diagram (typ=0, npixpntx, npixpnty, npntx, npnty / typ=1, npixx, npixy, npntx, npnty)
21 46 diagram_cls     I	      Clear screen of diagram position
21 47 diagram_clr     I       Clear values of diagram
21 48 diagram_setpnt  III     draw pnt into diagram (x,y,color)
21 49 diagram_drwall  .       draw full diagram
21 50 maxlogtest      .       testing max logfunctions
21 51 maxtestint      I       max testing function for int 7 (ONOFF=1->On, 0->OFF interrupt)
21 52 maxsetiframe I	      function to set letch.iframe counter from interrupt	
21 53 ctcpioin    I	      read from "port" 0..5 (pio1-A,B,C 0..2) (pio2-A,B,C 3..5) result bitwise
21 54 letchestop  .  	      letch_estop_test function that test manually if estop is pressed	
21 59 letchcampos0 X 	      test letch campos0 routine for all specified cameras (x_camera)
;
;       Walter Saake Functions
;
22  0 drwreg      .           draw region
22  1 mandel      .           Mandelbrot-Menge
22  2 chaintorll  .           converts global chains to RLL
22  3 rlldrw      Iiiiii      draw Rll (imrll, color, mode, dest, contour[0/linewidth], piecewise[0/1])
22  4 rlldilate   II          imrll radius
22  5 rllerode    IIi         imrll radius clip[0/1(default)]
22  6 rllld       si          load rll from file, i=1 => bin i=0 => ascii (default)
22  7 rllwr       ISi         write rll imrll to file name, i=1 => bin i=0 ascii (default)
22  8 rllmerge    IIi         merge (rll1, rll2, mode) mode 0:and 1:or(default) 2:and not
22  9 rlldouble   I           double rll to newone
22 10 rllhisto    IIi         rllhisto (imno, imrll, color), calc histo of imno in rll-mask
22 11 rlltest     i           consistency test of all RLL's  - test RLL i
22 12 cytocal     ii          Densitometrische Kalibrierung (1,2,3,[2,1])
22 13 cytotr      i           Transmissionstest (mode: 0 automatic, 1 manuell)
22 14 modcam      X           set camera mode
22 15 wtest       iiiiii      testfunction int
22 16 setwflag    ixb         display or set walter.testflag
22 17 rllshift    IIII        shift RLL rllno to rlldest by delx, dely pixel
22 18 insppin     .           device inspection
22 19 ruler       F           draw ruler
22 20 mess_marking III        
22 21 teach_marking III
22 22 chooseyn	  Siiiii      choose YES/NO (message, x, y, addmode, fgcol, bgcol)
22 23 spshear 	  .	      liest Siemens SPS Protokoll
22 24 spssend 	  s	      sendet Siemens SPS Protokoll, s=i Zahlen (default), s=t text
22 25 cls 	  i	      clear screen (ram : 1 VRAM, 2 OVL, 0 both; default 0)
22 26 rlltrans	  IIiif	      RLL transformation (RLL #, RLLdest #, dx, dy, angle)
22 27 rllclip	  Ii	      clip RLL due to iwin (rlldest)
22 28 rllindex	  I	      create RLL index
22 29 rlltrclip	  II	      transform and clip RLL in -> out
22 30 settr0	  IIF	      set transformation struct tr0 (dx, dy, rot)
22 31 spriteset   II	      set spritecuror (sprite #, mode: 1 ON/ 0 OFF)
22 32 spriteld	  Isi	      load sprite (number, fname, 0/1 : ascii/binary)
22 33 spriteput	  IIIi	      put sprite on screen ( #, x, y, mode )
22 34 spritedir   .	      list all sprite data
22 35 spritewr	  Isi	      save sprite (number, fname, 0/1 : ascii/binary)
22 36 spritegrab  I	      mark window and grab it to sprite #
22 37 spritefree  I	      free sprite #
22 38 makebutton  IS	      make sprite # with text
22 39 vmfginit	  .           init VMFG ( map 8 images into fg memory )
22 40 mfgsequence I	      adjust number of frames for sequence
22 41 mfgseqstart .	      start grabbing a sequence of frames
22 42 victest     Ii	      start VIC program (i)	
22 43 hanmitest   I           test hanmi cycle
22 44 promptkeyevent IS	      promptkeyevent with zoom	
22 45 dsplist	  I	      switch display list ON (1) / OFF (0)	
;
23  0 alimteach   s           ALIM immediate teach session (teach_file)
23  1 aliminit    S           ALIM Init system for execution (teach_file)
23  2 alimxlfpos  II          ALIM exec leadframe positioning (imno, ipart)
23  3 alimxtrip   IIIIII      ALIM exec XYZM motor motion (xstep, ystep, zstep, zoom_step, magn_step, aperstep)
23  4 alimxdisco  I           ALIM exec disco light configuration (phase_number=0..11)
23  5 alimxpos    II          ALIM exec part position detection (imno, ipart)
23  6 alimxspot   II          ALIM exec spot measurement (imno, ipart)
23  7 alimxglue   II          ALIM exec glue line detection (imno, ipart)
23  8 alimximcmp  III         ALIM exec die surface inspection (imno, imref, ipart)
23  9 alimxlvec   II          ALIM exec measure lvec position (imno, ipart)
23 10 alimxwidth  II          ALIM exec lead width measurement (imno, ipart)
23 11 alimfree    .           ALIM release memory (buffers)
23 12 alimessreset .          ALIM reset measurement result tables
23 13 alimessout  .           ALIM output measurement data to MES file
23 14 alimxlfcalc .           ALIM exec lfpos final calculation
23 15 alimxcalc   .           ALIM result processing
23 16 alimsync    I           ALIM sync to motors complete (mode=-1/0/1)
23 17 alimrepeat  III         ALIM repeat measurement with position offset (dx, dy, dz(steps))
;
;       Marc Alain Groff Functions
;
25  0 rlx1         IIIF       Marc test function 1 (var1 var2 var3 var4:float)
25  1 trs1         IIIF       TRS Engineering Project
;


;       ITV.MSG
;	========
;
;	1st message file for Analytec interpreter
;
;	every line has to use the following format:
;		1. line identifier "err_msg", "_msg" (or ";" for a comment)
;		2. message group number (groups 0..999 are reserved for
;		   the command interpreter!)
;		3. message id (errors: negative)
;		4. message text
;
;	 20.Jan 99 bs
;
;	mod:
;==========================================================================
;
;	 group	 id  text
;
_msg        -2    1  press any key!
_msg        -2    2  press any key (<ESC> to abort)!
_msg        -2    3  yn
_msg        -2    4  y
_msg        -2    5  n
_msg        -2    6  up
_msg        -2    7  down
_msg        -2    8  on
_msg        -2    9  off
_msg        -2   10  undefined
_msg        -2   11  vertical
_msg        -2   12  horizontal
_msg        -2   13  invalid
_msg        -2   14  aborted
;
_msg        -1    1  ITV terminated!
_msg        -1    2  \nPress any key or <ESC>, <END> to abort!
_msg        -1    3  \n%susage: %s
;                    has to contain 8 characters:
_msg        -1    4  Choice:~
_msg        -1    5  TIMEOUT!
_msg        -1    6  \nATTENTION: TRACE FILE OPEN!\n
_msg        -1    7  \nATTENTION: XTRACE FILE OPEN!\n
_msg        -1   20  ***************************
_msg        -1   21  ***   ITV ONLINE HELP   ***
_msg        -1   22  Scrolling of commands by cursor keys, quit help function by <END> or <ESC>
_msg        -1   23  ================================================================================
_msg        -1   24  command      parameter   info                                opcode separator:~
_msg        -1   25  *** no such command available! ***
_msg        -1   30  \n          Image Directory\n          ===============
_msg        -1   31  Image %d: width %d height %d size %d [bytes] depth %x\n
_msg        -1   32  \n          Runlength List Image Directory\n          ==============================
_msg        -1   33  RLL %d: width %d height %d size %d [records] mask %x\n
_msg        -1   40  F1:group /F2:led type /F3:camera /F4:next phase /F5:prev phase
_msg        -1   41  F6:next led /F7:prev led /F8:all on /F9:all off /F10:set led
_msg        -1   42  SF1:phase->clip /SF2:clip->phase /SF3:group->clip /SF4:clip->gr.
_msg        -1   43  CF1:camera diaphragm /CF2:camera zoom
_msg        -1   44  F1:box F2:line F3:text F4:color F5:ram/ov F6:mark
_msg        -1   45  <ESC> or <END> terminates.
_msg        -1   46  <S> saves current image.
_msg        -1   47  <R> resets max and min.
_msg        -1   48  <F1> switches cameras.
_msg        -1   49  left/right button show horizontal/vertical line,
_msg        -1   50  <C> toggles between one shot and continuous mode,
_msg        -1   51  <+> increases scale, <-> decreases scale,
_msg        -1   52  <l> and <r> rotate line
_msg        -1   53  <P> prints grey values to file 'GREYxxxx.DAT'
_msg        -1   54  <S> saves current image, <ESC> or <END> terminates.
_msg        -1   55  move mask by mouse or cursor keys.
_msg        -1   56  rotate mask by <r>, <R>, <l> and <L>.
_msg        -1  100  c : cordspmod    = %d\n
_msg        -1  101  d : flag.demo    = %d\n
_msg        -1  102  e : flag.esc     = %d\n
_msg        -1  103  l : flag.log     = x%x\n
_msg        -1  104  m : flag.msk     = x%x\n
_msg        -1  105  o : flag.online  = %d\n
_msg        -1  106  p : flag.print   = x%x\n
_msg        -1  107  s : flag.s_state = %d\n
_msg        -1  108  t : flag.test    = %d\n
_msg        -1  109  u : flag.unit    = %d\n
_msg        -1  110  v : flag.verbose = %d\n
_msg        -1  111  w : flag.window  = %d\n
_msg        -1  112  x : flag.extern  = %d\n
_msg        -1  113  z : flag.time    = %d\n
_msg        -1  120  cordspmod    set to %d\n
_msg        -1  121  flag.demo    set to %d\n
_msg        -1  122  flag.esc     set to %d\n
_msg        -1  123  flag.log     set to x%x\n
_msg        -1  124  flag.msk     set to x%x\n
_msg        -1  125  flag.online  set to %d\n
_msg        -1  126  flag.print   set to x%x\n
_msg        -1  127  flag.s_state set to %d\n
_msg        -1  128  flag.test    set to %d\n
_msg        -1  129  flag.unit    set to %d\n
_msg        -1  130  flag.verbose set to %d\n
_msg        -1  131  flag.window  set to %d\n
_msg        -1  132  flag.extern  set to %d\n
_msg        -1  133  flag.time    set to %d\n
_msg        -1  140  Move mouse to position and press any key!
_msg        -1  141  typ=%x size=%d
_msg        -1  142  Histogram: min %d max %d at %d\n
_msg        -1  143  Mit der linken Maustaste eine Box malen, mit rechter Maustaste Eingabe abschlieáen
_msg        -1  144  Neue Pixelbreite: %10.2f %s\n
_msg        -1  145  Neue Pixelh”he  : %10.2f %s\n
_msg        -1  146  vic_watch_count = %d\n
_msg        -1  150  Image Editor
_msg        -1  151  Draw Box
_msg        -1  152  Draw line & arc
_msg        -1  153  Enter text string:~
_msg        -1  154  Enter color index:~
_msg        -1  155  Draw into Overlay
_msg        -1  156  Draw into VRAM
_msg        -1  157  Image Editor w%d
;
_msg         0    1  Enter TSR mode
_msg         0    2  Exit TSR mode
_msg         0    3  initialize system, n=%d\n
_msg         0    4  Video Display size is %d,%d\n
_msg         0    5  Alloc frame # %d
_msg         0    6  ~not possible
_msg         0    7  %d image frames available\n
_msg         0    8  Select device %s\n
_msg         0    9  %ld bytes free\n
_msg         0   10  Change opcode
_msg         0   11  bgnd task:~
_msg         0   12  Completed
_msg         0   13  VIC WATCHDOG set to %d milliseconds!\n
_msg         0   14  VIC WATCHDOG disabled!
_msg         0   15  Select task # %d\n
_msg         0   16  Sync to task # %d\n
_msg         0   17  Inquire status of task # %d:~
_msg         0   18  Define VIC program # %d in VIC channel # %d:\n
_msg         0   19  Terminate VIC program definition
_msg         0   20  Exec VIC program # %d\n
_msg         0   21  Output 32 bit code %x\n
_msg         0   22  Input 32 bit, mask with %x, and wait until value=%x is reached\n
_msg         0   23  Index stepper motors %d, nstep = %d, mode = %d\n
_msg         0   24  Stepper motors %d at constant speed %d\n
_msg         0   25  Input 32 bit, mask with %x, and wait until nonzero\n
;
_msg         1    1  Tv - input to %s board\n
_msg         1    2  Allocate new image %d, size %d x %d\n
_msg         1    3  Get frame # %d from %s board\n
_msg         1    4  Put frame # %d into %s board\n
_msg         1    5  copy image %d to %d\n
_msg         1    6  copy image window imsrc=%d xs=%d ys=%d widht=%d height=%d imdest=%d xd=%d yd=%d\n
_msg         1    7  Set camera online
_msg         1    8  Set camera offline
_msg         1    9  zoom image %d to image %d\n
_msg         1   10  Calc histogram frame # %d from %s board\n
_msg         1   11  Window %d %d %d %d\n
_msg         1   12  Histogram gliding average %d terms\n
_msg         1   13  %d Image input and 16 bit averaging to image %d\n
_msg         1   14  Image Comparison image %d against reference %d\n
_msg         1   15  Image Editor
_msg         1   16  Histogram display
_msg         1   17  Histogram table:
_msg         1   18  Grey scale to image %d, height %d\n
_msg         1   19  Set window parameters: x=%d y=%d widht=%d height=%d\n
_msg         1   20  Histogram min/max calculation: nhphase=%d after filter=%d\n
_msg         1   21  Phase count from min/max calc, %d phases\n
_msg         1   22  phase %d: cnt=%d\n
_msg         1   23  Absolute value of image subtraction: %d=|%d-%d|\n
_msg         1   24  Multi-phase thresholding imsrc=%d imdest=%d nphases=%d\n
_msg         1   25  copy overlay with image %d to %d planes=%d\n
_msg         1   26  Clear video memory
_msg         1   27  Clear overlay memory
_msg         1   28  Fill overlay window with color %d, drawing mode %d\n
_msg         1   29  Print image %d on Shinko 65 typ %d\n
_msg         1   30  Release image %d\n
;
_msg         2    1  Load filter matrix from file %s\n
_msg         2    2  Exec linear filter: imsrc=%d imdest=%d div=%d mode=%d\n
_msg         2    3  Load neighborhood matrix from file %s\n
_msg         2    4  Exec Neighborhood filter: imsrc=%d imdest=%d threshol=%d\n
_msg         2    5  Read image window %d from bin file %s\n
_msg         2    6  Write image window %d to bin file %s\n
_msg         2    7  Read image %d from img file %s\n
_msg         2    8  Write image %d to img file %s format %d\n
_msg         2    9  Load video input lookup table %s\n
_msg         2   10  Load video output lookup table %s\n
_msg         2   11  Load overlay lookup table %s\n
_msg         2   12  Edit lookup table %d sections, write LUT %s\n
_msg         2   13  Load parameter file
_msg         2   14  Load bitmap font file
_msg         2   15  Interactive intensity adjust
_msg         2   16  disco calibration of angles
_msg         2   17  xy dimension calibration
_msg         2   18  Load cursor font file
_msg         2   19  Segmentation set #%d used\n
_msg         2   20  segment data: iseg=%d nphase=%d dseg=%d\nsegpoints:~
_msg         2   21  \n         Segment Directory\n         =================\n
_msg         2   22  Set %d: phases %d; dseg %d; %sline; thresholds(<=)~
;
_msg         5    1  %s %d : %.3f seconds\n
_msg         5    2  latch
_msg         5    3  timer
_msg         5    4  Histogram gliding average %d terms, no scaling\n
_msg         5    5  Manual segmentation from %d to %d, seg=%d, nphase=%d, dseg=%d, loop=%d\n
_msg         5    6  Automatic segmentation from %d to %d, seg=%d\n
_msg         5    7  input %s from port 0x%x = 0x%x\n
_msg         5    8  output %s 0x%x to port 0x%x\n
_msg         5    9  median filter: imsrc=%d, imdest=%d, size=%dx%d, #=%d, typ=%d\n
_msg         5   10  enter coordinates (%d%d)\n
_msg         5   11  enter coordinates (%.3f/%.3f)\n
_msg         5   12  Reading message file %s\n
;
_msg         9    1  Enter command error value
_msg	     9	  2  set command error to %d\n
_msg	     9	  3  transform %d points with TRV%s[%d] from %s to %s\n
_msg	     9	  4  set TRV%s[%d] to dx = %.3f, dy = %.3f, rot = %.3f\n
_msg	     9	  5  polyline from %s (%d points), scaling %f\n
_msg	     9	  6  old: %s\n
_msg	     9	  7  really redefine? (Y/N)
_msg	     9	  8  *** NOT DEFINED! ***
;
_msg	    10	  1  load mask(s) from file %s,~
_msg	    10	  2  group=%d, root id=%d\n
_msg	    10	  3  msk_get_rootid of %s: group=%d, id=%d\n
_msg	    10	  4  mask interaction for group %d, id %d\n
_msg	    10	  5  msk_tree_act leaved with object %d\n
_msg	    10	  6  msk_tree_act escaped\n
_msg	    10	  7  mask draw for mask group %d\n
_msg	    10	  8  init mask group %d\n
_msg	    10	  9  last mask keys: ascii  = %d~
_msg	    10	 10  ~~~~~~~~~~~~~~~~scan   = %d\n
_msg	    10	 11  ~~~~~~~~~~~~~~~~status = %d\n
_msg	    10	 12  ~~~~~~~~~~~~~~~~x, y   = %d %d\n
_msg	    10	 13  group %d, id %d %sset attribute %x\n
_msg	    10	 14  re
_msg	    10	 15  group %d, id %d, attribute %x is %sset\n
;
err_msg     -2   -1  error %d: %s\n
err_msg     -2   -2  %s error %d\n
err_msg     -2   -3  error: group %d code # %d not in command file!\n"
err_msg     -2   -4  Invalid (expect %s only); repeat\n
err_msg     -2   -5  Invalid range [%d..%d]; repeat\n
err_msg     -2   -6  Invalid range [%f..%f]; repeat\n
;
err_msg     -1   -1  Read parameter definition file error %d !\n\n
err_msg     -1   -2  Read configuration file error %d !\n\n
err_msg     -1   -3  Read command configuration file error %d !\n\n
err_msg     -1   -4  Can't load cursor font file
err_msg     -1   -5  invalid format parameter %c\n
err_msg     -1   -6  Error: command %s unknown, get help with %s\n
err_msg     -1   -7  Error in Command Processor: Invalid parameter
err_msg     -1   -8  tsr_exec error %d\n
err_msg     -1   -9  invalid binary digit %c, conversion breaked\n
err_msg     -1  -10  Can't open macro file %s; ignore\n
err_msg     -1  -11  Error in ITV system: TSR function code %d unknown\n
err_msg     -1  -12  Can't get memory for macro file %s; ignore\n
err_msg     -1  -13  Can't get memory
err_msg     -1  -14  read mask file error %d, abort!\n
err_msg     -1  -15  get mask root ID error %d, abort!\n
err_msg     -1  -16  error, flag.log reset
err_msg     -1  -17  flag %c does not exist\n
err_msg     -1  -18  can't load bitmap font
err_msg     -1  -19  Invalid cursor type %d\n
err_msg     -1  -20  error: device %d not implemented; ignore\n
err_msg     -1  -21  Can't write lookup table %s to file\n
err_msg     -1  -22  Can't merge image and overlay
err_msg     -1  -23  Can't write image %s to file\n
err_msg     -1  -24  Error in graph font file %s.grf line %d: odd number of points\n
err_msg     -1  -31  %s : incomplete parameters\n
err_msg     -1  -32  %s : no line identifier count\n
err_msg     -1  -33  ERROR pcode:%d not allowed\n
err_msg     -1  -34  double line identifier %s\n
err_msg     -1  -35  invalid format in %s\n
err_msg     -1  -36  %s : illegal format parameter %c\n
err_msg     -1  -41  Invalid mode %d in v_setframe\n
;
err_msg      0 -102  flow_control error %d\n
err_msg      0 -103  Mouse driver not loaded!!
;
err_msg      1 -101  i_imcopy error # %d\n
err_msg      1 -102  i_wincopy error # %d\n
err_msg      1 -103  i_zoom error
err_msg      1 -104  histogram error # %d\n
err_msg      1 -105  %d errors\n
;
err_msg      2 -101  filter parameter file read error # %d\n
err_msg      2 -102  Optimized routine could not be created, error %d!\n
err_msg      2 -103  Convolution filter exec error # %d\n
err_msg      2 -104  neighborhood parameter file read error # %d\n
err_msg      2 -105  Can't load LUT
err_msg      2 -106  Can't load parameter definition file 'cnfg.prm', error %d\n
err_msg      2 -107  Can't load parameter file, error %d\n
err_msg      2 -108  SMCODE OVERFLOW!
err_msg      2 -109  not more than %d segments possible!\n
err_msg      2 -110  seg_rll: i_rllrealloc error %d\n
err_msg      2 -111  BOX TOO LARGE!
;
err_msg      9	 -1  flow_labelset error %d\n
err_msg      9	 -2  flow_loopset error %d\n
err_msg      9	 -3  flow_ifset error %d\n
err_msg      9	 -4  label %s not found, goto ignored\n
err_msg      9	 -5  loop %s not found, ignored\n
err_msg      9	 -6  if command not found, ignored
err_msg      9	 -7  loop may only jump backwards!
err_msg      9	 -8  loop error label %s, loop ignored\n
err_msg      9	 -9  gosub error label %s, gosub ignored\n
err_msg      9	-10  flow_gosubset error %d\n
err_msg      9	-11  too deep nested gosub (%s), ignored\n
err_msg      9	-12  return without gosub, ignored
err_msg      9	-13  too deep nested macro calls
err_msg      9	-14  else not found, ignored
err_msg      9  -15  expression could not be evaluated (buffer overflow)
err_msg      9  -16  expression could not be evaluated (bracket level)
err_msg      9  -17  expression could not be evaluated (division by 0)
err_msg      9  -18  expression could not be evaluated (operator error)
;
err_msg     10	 -2  mask name not in mask directory
err_msg     10	 -3  invalid mask id
err_msg     10	 -4  mask object not edible
err_msg     10	 -5  mask object not a variable
err_msg     10	 -6  invalid mask object type
err_msg     10	 -7  invalid mask group
err_msg     10	 -8  wrong mask object type
err_msg     10	 -9  error %d during u_fileselect\n
err_msg     10	-11  mask definition file could not be opened
err_msg     10	-12  no memory left
err_msg     10	-13  invalid mask data
err_msg     10	-14  wrong mask definition file revision
err_msg     10	-16  unused parent object
err_msg     10	-17  invalid line specifier in mask definition file
err_msg     10	-41  coordinate type invalid for the mask device
err_msg     10	-42  mask pointer unused
err_msg     10	-43  no variable pointer given in pointer list
err_msg     10	-44  no function pointer given in pointer list (unused)
err_msg     10	-45  no memory left
err_msg     10	-92  mode invalid in fileselect box (only r/w)
err_msg     10	-94  system error in fileselect box
err_msg     10	-95  system error in fileselect box
err_msg     10 -101  no mask with name %s found\n
;
;
_msg	50	1	RCA Test1
_msg	50	2	RCA Test2
;
;       16.11.93 kw: messages group 40 GIP.C
;
_msg	40	1   Histogram: min %d max %d at %d\n
_msg	40	2   Can't get memory for histogram\n
_msg	40	3   This type %d algorithm not implemented in i_noisetest\n
_msg	40	4   Error in i_chipos: Determinant is zero; incomplete window definition!!\n
_msg	40	5   Determinant is zero; incomplete window definition!!\n
_msg	40	6   chipos3 error: no edges!!\n
_msg	40	7   Error in chipos3 *n1=%d *n2=%d\n
_msg	40	8   Can't get memory for image averaging\n
_msg	40	9   Image %4d input & sum\r
_msg	40	10  \nNormalize result image     \n
_msg	40	11  Draw Box
_msg	40	12  Image Editor
_msg	40	13  Draw line & arc
_msg	40	14  Enter text string: 
_msg	40	15  Enter color index: 
_msg	40	16  Draw into Overlay
_msg	40	17  Draw into VRAM
_msg	40	18  Image Editor w%d
_msg	40	19  %2d:%s, group=%d, %s led, camera=%d, level=%d
_msg	40	20  error %d in disco_set\n
_msg	40	21  phase %d (%s) copied to clipboard\n
_msg	40	22  phase %d (%s) camera %d copied to clipboard\n
_msg	40	23  phase %d (%s) camera %d copied from clipboard\n
_msg	40	24  phase %d (%s) copy phase to clipboard\n
_msg	40	25  Enter sphere box
_msg	40	26  Measure sphere center
_msg	40	27  Enter reflection position
_msg	40	28  CALIBRATION OF CAMERA %:\n
_msg	40	29  Do you want to do calibration for this camera y/n :\n
_msg	40	30  enter sphere diameter [mm]
_msg	40	31  Sphere radius =%f\n
_msg	40	32  adjust the intensities of top, bottom & circle interactively\n
_msg	40	33  with mouse such that the sphere circumference s clearly seen\n 
_msg	40	34  bottom light (left button = change, right button = end)\n
_msg	40	35  top light (left button = change, right button = end)\n
_msg	40	36  circle light (left button = change, right button = end)\n
_msg	40	37  Enter sphere box\n
_msg	40	38  adjust the top intensities interactively\n
_msg	40	39  with mouse such that the spot at sphere centre is nice\n 
_msg	40	40  left button = change, right button = end\n
_msg	40	41  Measure sphere center\n
_msg	40	42  Top led invisible, try to continue \n
_msg	40	43  to continue with circle led's press any key\n
_msg	40	44  adjust the circle led intensity interactively\n
_msg	40	45  with mouse such that the spots are nice\n 
_msg	40	46  are you content with circle led intensity y/n :\n
_msg	40	47  Measure spot centres\n
_msg	40	48  LED # %d is defect; do not use this!\n
_msg	40	49  LED # %d: theta=%f phi=%f, area=%d\n
_msg	40	50  kled=%d, dtheta(deg)=%f, spotdiam(pixel)=%d\n
_msg	40	51  LED  # %d is rather weak, but result may be ok\n
_msg	40	52  \n===========Calibration of camera %d ===========\n
_msg	40	53  --->Error: Calculated angle of led # %d negative!!\n
_msg	40	54  LED # %d:  thetafinit=%f  thetaextrap=%f phi=%f\n
_msg	40	55  l[mm]=%f h[mm]=%f\n
_msg	40	56  enter box with left button, finish with right button
_msg	40	57  new pixelwidth:  %10.2f %s\n
_msg	40	58  new pixelheight: %10.2f %s\n
_msg	40	59  dimension %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %s %f %s %f %f %f %f %f %f %f %f\n
_msg	40	60  Macro Pixel Editor
_msg	40	61  macro pixel array display: nx=%d ny=%d dx=%d dy=%d\n
_msg	40	62  Image Pan & Zoom
_msg	40	63  Error in graph font file %s.grf line %d: odd number of points\n
_msg	40	64  Invalid cursor type %d\n
_msg	40	65  i_cluster_pntdel: cluster=x%x, pnt=x%x\n
_msg	40	66  i_cluster_pntins: cluster=x%x, pnt=x%x, xyv=%d/%d, before=%d\n
_msg	40	67  Error in gr_scanpanel\n
_msg	40	68  RLL %d generated; nsect=%d\n
_msg	40	69  RLV %d generated; nsect=%d\n
_msg	40	70  Autofocus\n
_msg	40	71  Can't get memory\n
_msg	40	72  Can't write lookup table %s to file\n
_msg	40	73  Can't merge image and overlay\n
_msg	40	74  Can't write image %s to file\n
_msg	40	75  left button: draw box ³ right button: insert box ³ END
_msg	40	76  change size with mouse ³ left button: confirm size

_msg    41       1  \n          Image Directory\n          ===============\n
_msg    41       2  Image %3d: width %5d height %5d size %10d mode %d scale %.2f %.2f\n
_msg    41       3  \n        Runlength List Image Directory\n          ==============================\n
_msg    41       4  RLL %3d: width %5d height %5d size %10d [records] mask %4x\n
_msg    41       5  \n\nCurrent device=# is %d: %s\nWidth %d Height %d [pixel]\n\n


;       15.3.92 kw: group 113 CYTO Software added (german Version)
;==========================================================================
;
;	 group	 id  text
;
_msg	113	 1	Window standard size
_msg	113	 2	Increase window size
_msg	113	 3	Error %d at cell separation
_msg	113	 4	%c%d: Online; select a cell
_msg	113	 5	Image is digitized
_msg	113	 6	Measurement finished
_msg	113	 7	Bad MAK file: ID=%d
_msg	113	 8	Error: no bimodal histogram (bad contrast..)
_msg	113	 9	Histogram in measurement window: %d phases; threshold=%d, ref-grey-value=%d
_msg	113	10	Cell measurement step 1: threshold=%d
_msg	113	11	avg DNA-grey value nucleus: %d nrll1=%d
_msg	113	12	Dilated nucleus, length=%d
_msg	113	13	Background ring histo; ref. grey value=%d threshold=%d nrll2=%d
_msg	113	14	Draw separation line, or increase measurement window
_msg	113	15	Change threshold, draw separation line, or increase window
_msg	113	16	Area = %.1f %sý  Form factor = %.2f DNA-content = %.1f freemem = %d nfvv = %d
_msg	113	17	%c%d#%d: Area = %.1f %sý  Form factor = %.2f DNA-content = %.1f Ploidy = %.2f
_msg	113	18	Set threshold interactive by cursor X motion
_msg	113	19	Threshold = %d
_msg	113	20	Delete object completed
_msg	113	21	Delete: No object found
_msg	113	22	Select background
_msg	113	23	Reference threshold = %d
_msg	113	24	CUT: Draw a line
_msg	113	25	New measurement display
_msg	113	26	Save image in data base; enter name
_msg	113	27	Load image from data base; enter name
_msg	113	28	Select color table
_msg	113	29	Next image
_msg	113	30	Error in median filter:     ploidy=%f not found     
_msg	113	31	DNA-content
_msg	113	32	Form-factor
_msg	113	33	Area
_msg	113	34	Micro
_msg	113	35	Archive
_msg	113	36	Manual
_msg	113	37	auto
_msg	113	38	Last Z.
_msg	113	39	Any Z.
_msg	113	40	---------
_msg	113	41	Store
_msg	113	42	File_name: %s, Side %d: Nuclear images; PgUp, PgDn or ESC
_msg	113	43	Out of memory for cell images; ignore!
_msg	113	44	Can't store cell images; buffer full or undefined
_msg	113	45	Can't store cell images; buffer full or undefined
_msg	113	46	Write data to disc...
_msg	113	47	Error at disc access: cannot write image(s)
_msg	113	48	cell nucleus below glare-limit!
_msg	113	49	Image brightness out of spec; please configure light!
_msg	113	50	~~~~red~~~~~
_msg	113	51	~~~~green~~~
_msg	113	52	~Histogram~~
_msg	113	53	No valid cell type
_msg	113	54	~MOD Histo~
_msg	113	55      Cell deleted. Further measurements available.
_msg	113	56	#%d area: %.2f³%.2f³%.2f³ Vol %.2f³%.2f³%.2f
_msg	113	57	*
_msg	113	58	Connect cells: Left button to select, middle button to deselect; right button to terminate
_msg	113	59	Cells were connected
;
;
;       17.3.92 kw: group 122 Walter Saake messages (german Version)
;==========================================================================
;
;
;
_msg	122	 1	weiter mit Taste...
_msg	122	 2	Grnfilter einlegen
_msg	122	 3	Kalibrierblende einlegen
_msg	122	 4	Objektiv-Revolver wieder arretieren!
_msg	122	 5	Kalibrierblende herausnehmen 
_msg	122	 6	Bitte Transmissionsfilter herausnehmen (Transmission T =1)
_msg	122	 7	Taste tippen, dann Lampenhelligkeit auf Grauwert 230-240 regeln!
_msg	122	 8	%d. Filter einsetzen; Transmission eingeben (0 -> Ende):
_msg	122	 9	Filter %d. einsetzen; Transmission %f
_msg	122	10	Schwarzwert=%.1f Hintergrund-Grauwert=%.1f   
_msg	122	11	Grauwert bitte manuell eingeben [0..255]:
_msg	122	12	Bild v”llig schwarz schalten
_msg	122	13	Rotieren Sie den Objektiv-Revolver etwas
_msg	122	14	und bitte eine Taste drcken
_msg	122	15	    #      Gi     TR_calc  TR_mess  rel.error   
_msg	122	16	*** Achtung: Transmissionsfilter berprfen! ***
_msg	122	17	~*** Zu dunkel! ***
_msg	122	18	~*** Zu hell! ***
_msg	122	19	Fenster=%.1f  Abweichung=%6.2f v.H.   bitte Taste drcken
_msg	122	20	T=%5.3f: Messwert = %6.2f
_msg	122	21	Schwarzwert ist %d     weiter mit Taste
_msg	122	22	Streulichtkorrektur : s = %8.4f  s0 = %8.4f
_msg	122	23	--- FERTIG ---
_msg	122	24	Alle Transmissionsfilter getestet ? (J/N)
_msg	122	25	    *** Der gemessene Grauwert ist zu groá!!! ***
_msg	122	26	Bitte Objektivstellung berprfen.
_msg	122	27	Kennlinie
_msg	122	30	box %2d gv: %6.1f  tr: %6.3f  trref: %6.3f
_msg	122	31	delta: %6.4f
_msg	122	32	Zur Referenzwertmessung 'r' eingeben!!!
_msg	122	33	Die Referenztransmission wird gemessen!!!
_msg	122	34	Die Referenztransmission ist %6.4f
;
_msg	122	100	YES~
_msg	122	101	~NO~
;
;

;       17.3.92 kw: group 1000 General purpose messages (german Version)
;==========================================================================
;
_msg  1000	1		OK
_msg  1000	2		Fehler Histogramm-Analyse
_msg  1000	3		aborted
_msg  1000	4		finished

;       19.3.92 kw: group 213 additinal CYTO Software added (german Version)
;==========================================================================
;
;       	 group	 id  text
;
_msg	213	 1	read mask file error %d, abort!\n
_msg	213	 2	Write image error %d\n
_msg	213	 3	Read image error %d\n
_msg	213	 4	get mask root id error %d, abort!\n
_msg	213	 5	Mask ID not found\n
;
;       19.3.92 kw: group 313 additinal CYTO Software added (german Version)
;==========================================================================
;
;	 group	 id  text
;
_msg	313	 1	Fehler Histogramm-Analyse
_msg	313	 2	%sError: file %s not found%s\n
_msg	313	 3	Fehler bei Objektmessung Step 1
_msg	313	 4	chain_ch_to_rll error %d\n
_msg	313	 5	chain_ch_resize error %d
_msg	313	 6	chain_ch_to_rll phase 2 error %d\n
_msg	313	 7	closeholes error\n
_msg	313	 8	Can't get memory\n
_msg	313	 9	%s%s error %d%s\n
_msg	313	10	%sError: group %d code # %d not in command file!%s\n
_msg	313	11	%sError: group 4 code # %d unknown%s\n
_msg	313	12	%sError: group 6 code # %d unknown%s\n
_msg	313	13	%sError: group 7 code # %d unknown%s\n
_msg	313	14	%sError: group 8 code # %d unknown%s\n
_msg	313	15	%sError: group 12 code # %d unknown%s\n
_msg	313	16	%sError: group 13 code # %d unknown%s\n
_msg	313	17	i_pgtorll error\n
_msg	313	18	Can't load bitmap font
_msg	313	19	i_avginp error; abort\n
_msg	313	20	i_chiscx error\n
_msg	313	21	rotdiffw error %d\n
_msg	313	22	glue_detect error %d\n
_msg	313	23	Can't load parameter file\n
_msg	313	24	memory overflow!
_msg	313	25	Error: device %d not implemented; ignore\n


;       22.3.92 kw: group 413 RCA Software added (german. Version)
;==========================================================================
;
;	 group	 id  text

_msg	413	 1	Fehler %d in Masken Analyse
_msg	413	 2	Maske erstellt. %d Objekte gefunden
_msg	413	 3	Wasserscheide, Filtern der Bilder ....
_msg	413	 4	Wasserscheide, Testversion l„uft ...
_msg	413	 5	Editor beendet
_msg	413	 6	Messung nicht moeglich, keine Maske vorhanden
_msg	413	 7	Messung l„uft...
_msg	413	 8	Fehler %d in Objekt Messung
_msg	413	 9	Messung OK; %d Objekte gefunden
_msg	413	10	Bitte Nummer eingeben # (0..99):
_msg	413	11	Ergebnisse werden gespeichert
_msg	413	12	Fehler beim Schreiben, Abbruch
_msg	413	13	Can't store; mask definition or measurement incomplete
_msg	413	14	Not enough reference images; continue!
_msg	413	15	Terminate reference calibration; ref. threshold = %f ref mod = %f
_msg	413	16	Live: Set RED filter
_msg	413	17	Live image aborted
_msg	413	18	RLL size reduced from %d to %d entries
_msg	413	19	error in chain_to_rll of rca_measure2
_msg	413	20	count=%d, threshold=%d, nfvv=%d"
_msg	413	21	ERROR in OBJ_FX # %d
_msg	413	22	count=%d, dna_gv=%d, back_gv=%d, nfvv=%d, rca.nfvv_mask=%d, rca.nfvv_mess=%d
_msg	413	23	No objects to edit
_msg	413	24	Mask Editor: select function
_msg	413	25	select with left button - deselect with center button - delete with right button  %d objects
_msg	413	26	Max line length exceeded
_msg	413	27	Reorganize mask image; wait..
_msg	413	28	Out of memory; can't alloc RLL
_msg	413	29	Bad conversion bigline_torll
_msg	413	30	Bad rll_sort in rca_rlledit
_msg	413	31	Can't merge RLL's
_msg	413	32	No objects to edit
_msg	413	33	Mask Editor -> REPLACE
_msg	413	34	Mask Editor -> CUT; move cursor; left:right button to edit
_msg	413	35	Mask Editor -> CONNECT
_msg	413	36	Draw mask with left button - close with right button - leave with right double click 
_msg	413	37	*** Termination accepted ***
_msg	413	38	RLL buffer overflow; skip rest
_msg	413	39	rca_morpho: out of memory; can't execute morphology
_msg	413	40	Erosion error; can't execute morphology
_msg	413	41	Dilatation error; can't execute morphology
_msg	413	42	Object deleted
_msg	413	43	Threshold found = %d
_msg	413	44	th = %d histo = %f %\n
_msg	413	45	Insert RED filter manually; press F1 or ESC
_msg	413	46	Insert GREEN filter manually; press F1
_msg	413	47	Grab RED filter image
_msg	413	48	Grab GREEN filter image
_msg	413	49	Error in Spectralink interface: out=%x in=%x\n
_msg	413	50	Filterwheel error = %d
_msg	413	51	error=%d in rca_measure
_msg	413	52	chain_ch_replace error %d
_msg	413	53	chain_ch_add error %d
_msg	413	54	error=%d in chain_to_rllall
_msg	413	55	Error: rll overflow
_msg	413	56	LPT%d  does not exist; change 'io_monodev' in ITV.CFG
_msg	413	57	Lptadr:= %x green = %d red = %d timeout = %d delay = %d
_msg	413	57	ERROR: invalid device# for monochromator in CFG
_msg	413	59      ~~~~MOD~~~~
_msg	413	60      ~greyvalue~

_msg	415	 1      print %s
_msg	415	 2      del %s
_msg	415	 3      ~~~~#:~
_msg	415	 4      record Nr: %d of %d: F1:Load, PgUp,PgDn: next, END~
_msg	415	 5      loading image..
_msg	415	 6      record # %d of %d: F1:Edit, DEL:Delete, UP/DOWN: next, END~
_msg	415	 7      edit record # %d of %d
_msg	415	 8      new record in database; confirm with END 
_msg	415	 9      ready
_msg	415	10      change view: select with cursor
_msg	415	11      startpoint left button ³ endpoint right button
_msg	415	12      point-position: enter point (left or right button)
_msg	415	13      2-point-distance: enter first point (left button)
_msg	415	15      point-vector: enter point (left button)
_msg	415	16      point-vector: 1. enter vector-point (left button)
_msg	415	17      point-vector: 2. enter vector-point (L/R button)
_msg	415	18      2P-direction: enter first point
_msg	415	19      3-point-angle: startpoint 1. enter vector (left button)
_msg	415	20      3-point-angle: input centerpoint (left button)
_msg	415	21      3-point-angle: endpoint 2. enter vector (L/R button)
_msg	415	22      4-point-angle: startpoint 1. enter vector (left button)
_msg	415	23      4-point-angle: endpoint 1. enter vector (left button)
_msg	415	25      4-point-angle: startpoint 2. enter vector (left button)
_msg	415	26      4-point-angle: endpoint 2. enter vector (L/R button)
_msg	415	27      Box: press left button to draw box
_msg	415	28      Box: left button: new start ³ right button : confirm box ³ ESC
_msg	415	29      record Nr: %d of %d
_msg	415	30      scroll: arrows  load: ENTER         cancel: ESC
_msg	415	31      scroll: arrows ³ edit: ENTER ³ delete image: DELETE ³   cancel: ESC
_msg	415	32      darker <-- MOUSE --> bright ³  OK = left button END ³ standard = right button ESC
_msg	415	33      ^ more ³v less contrast³® bright³¯ darker³OK = left button³standard = right button
_msg    415     34      press mouse button to change size ³ press right button to measure
_msg    415     35      select position
_msg    415     36      select radius (mouse left or right)


;       10.08.93 mm: group 416 Max Software messages added (engl. Version)
;==========================================================================
;
;	 group	 id  text

_msg	 416	 1   error #%d in i_alloc (called in polar_pageview)
_msg	 416	 2   error #%d in i_zoom, imno_d1=%d, imno_d=%d (called in polar_pageview)
_msg     416     3   error #%d in polar_imedit
_msg     416     4   draw box
_msg     416     5   image editor
_msg     416     6   draw line & arc
_msg     416     7   enter text, complete with RETURN/ENTER
_msg     416     8   draw into overlay
_msg     416     9   draw into video ram
_msg     416    10   error ESC in i_drwregion  ???
_msg     416    11   error # %d in draw_ellipse 
_msg     416    12   please enter length in configuration
_msg     416    13   color scan completed
_msg     416    14   monochrom scan completed
_msg     416    15   camera image online; not impl.
_msg     416    16   camera input; not impl.
_msg     416    17   image cleared
_msg     416    18   error # %d in scsi_inquiry
_msg     416    19   error # %d in scsi_scan
_msg     416    20   error # %d in scsi_request_sense
_msg     416    21   CYTO record is missing in ITV.CFG. finish POLARMESS
_msg     416    22   error: Polar.msk has wrong  mask-ID=%d
_msg     416    23   error: wrong mask-ID # %d
_msg     416    24   invalid mask entry; error=%d
_msg     416    25   error  code=%d: finish polar-function
_msg     416    26   wrong mask file POLAR.MSK
_msg     416    27   invalid mask entry; error=%d
_msg     416    28   storno
_msg     416    29   no object selected
_msg     416    30   cancelled
_msg     416    31   error %d writing to disk; aborted
_msg     416    32   OK; data is stored
;_msg     416    33   error # %d in polar_rdimg()
_msg     416    34   error # %d in polar_storimg()
_msg     416    35   error # %d in idb_store()
_msg     416    36   error # %d in polar_storimrgb()
_msg     416    37   error # %d in idb_store()
_msg     416    38   error # %d im Druckertreiber
_msg     416    39   plotter output; no plotter connected
_msg     416    40   error # %d in idb_list
_msg     416    41   error # %d in idb_edit
_msg     416    42   error # %d in idb_store()
_msg     416    43   scan color...
_msg     416    44   scan monochrom...
_msg     416    45   error # %d in dimmer
_msg     416    46   error # %d in contrast
_msg     416    47   error # %d in gray_scale()
_msg     416    48   error # %d in false color
_msg     416    49   calibration OK
_msg     416    50   file %s invalid for filter matrix
_msg     416    51   error at linear filter
_msg     416    52   error %d in conversion polar_mkmono
_msg     416    53   error %d at segmentation
_msg     416    54   segmentation OK
_msg     416    55   error # %d measurement window
_msg     416    56   error # %d automatic measurement
_msg     416    57   error # %d manual measurement
_msg     416    58   PNT error # %d
_msg     416    59   PPDIST error # %d
_msg     416    60   PVDIST error # %d
_msg     416    61   ANGLE3 error # %d
_msg     416    62   ANGLE4 error # %d
_msg     416    63   BOX error # %d
_msg     416    64   CIRCLE error # %d
_msg     416    65   RULER error # %d
_msg     416    66   not deleted
_msg     416    67   error %d writing to disk; aborted
_msg     416    68   OK; data is stored
_msg     416    69   delete overlay
_msg     416    70   error # %d in msk_getvar  xmin
_msg     416    71   error # %d in msk_getvar  xmax
_msg     416    72   error # %d in msk_getvar  ncls
_msg     416    73   error %d in class_histogram
_msg     416    74   2-parameter-histogramm: not implemented
_msg     416    75   meanvalues: not implemented
_msg     416    76   result list: not implemented
_msg     416    77   %d bytes free (%d %%)
_msg     416    78   left button: 1. click enter box³ 2. click confirm size³ right button insert
_msg     416    79   left button: select 1. point³ left button select 2. point³ right button END
_msg     416    80   move cursor to input position, confirm text with ENTER
_msg     416    81   color
_msg     416    82   Video ramr / overlay
_msg     416    83   marking
_msg     416    84   left button draw³ right button get grayvalue³ 1..9 change brushsize³ END
_msg     416    85   terminate Polaroid-program
_msg     416    86   error # %d in idb_store()
_msg     416    87   error # %d: terminate Polar-program
_msg     416    88   selected object class set to %c
_msg     416    89   RGB mixture ...
_msg     416    90   RGB mixture completed...
_msg     416    91   RGB mixture error # %d
_msg     416    92   error # %d storing RGB image
_msg     416    93   RGB-image stored
_msg     416    94   error # %d storing monochrom image
_msg     416    95   monochrom image stored
_msg     416    96   image loaded
_msg     416    97   error # %d in idb_rdimg
_msg     416    98   obj_fx %d error at measurement
_msg     416    99   measurement finished; %d objects found
_msg     416   100   manual threshold = %d
_msg     416   101   no object found
_msg     416   102   OK; %d new objects found; total=%d
_msg     416   103   no existing results
_msg     416   104   error # %d in u_menu 
_msg     416   105   file %s invalid for filter matrix
_msg     416   106   cannot create filter; error=%d
_msg     416   107   cannot execute filter operation; error=%d
_msg     416   108   scanner resetted
_msg     416   109   no more records
_msg     416   110   no image for this probe
_msg     416   111   measuring, please wait...
_msg     416   112   position: x = %-8.2f my   y = %-8.2f my to left top image border
_msg     416   113   distance = %8.2f my ³ left button: new startpoint ³ right button: endpoint
_msg     416   114   diameter: x = %-8.2f my     y = %-8.2f my ³ area = %-8.2f myý
_msg     416   115   radius = %-8.2f my  area = %-8.2f myý
_msg     416   116   delete, insert: right button   change: press left button and move    terminate: END
_msg     416   117   Storno OK; %d objects found
_msg     416   118   zoom %4.1f times
_msg     416   119   distance = %8.2f my
_msg     416   120   angle = %8.2f ø   
_msg     416   121   You must select or enter a probename !
_msg     416   122   ~~~S T A T U S   SCALE: %4.2f my/pixel ³ PROBE: %-8s ³ OBJECTS: %d ³ SCANAREA %d * %d
_msg     416   123   %5.2f * %5.2f cm
_msg     416   124   left button: 1. click enter box³ 2. click confirm size³ right button insert
_msg     416   125   Press any key or mouse button to continue.
_msg     416   126   Press any key to continue.
_msg     416   127   Klasse

;       28.3.96 bs: group 417 ST software: SOD, SOT, DPACK... for Ismeca
;==========================================================================
;
;	 group	 id  text
_msg	417		0	~HOTKEYS~~~
_msg	417		1	ESC:Stop~~~~~
_msg	417		2	F2:Statistics
_msg	417		3	F3:Display~~~
_msg	417		4	SF5/6:WireTh~
_msg	417		5	SF9/10:MarkTh
_msg	417		6	SF2/3/4:Histo
_msg	417		7	SF7/8:PadTh+-
_msg    417     8       AF3:DspOff~~~
_msg    417     9       F1:SPC,CPK
_msg    417    20       Last Unit Result
_msg    417    21       Lot Summary
_msg    417    22       SPC counters
_msg    417    23       SPC mean values
_msg    417    24       SPC standard dev
_msg    417    25       SPC CPK values
_msg    417    26       Performance

_msg    417   100	Teach %s; Select any menu for input or edit
_msg    417   101       ONLINE; please place device
_msg    417   102	ONLINE finished
_msg    417   103	Configure illumination
_msg    417   104	Image input
_msg    417   105	Brightness check in nest cutout
_msg    417   106	Finished
_msg    417   107	Pin-1 detection on mold surface
_msg    417   108	Device position detection
_msg    417   109	All positions
_msg    417   110	Package Outline Contour
_msg    417   111	Lead XY measurement area
_msg    417   112	Define VBA macro
_msg    417   113	Define leads
_msg    417   114	Define lead tip coplanarity area
_msg    417   115	Define mold surface topside
_msg    417   116	Define mold surface bottom side
_msg    417   117	Define marking
_msg    417   118	Define marking with prec
_msg    417   119	Cut/connect marking pattern
_msg    417   120	Problem: calibration is far out of range; check DIMENSION record in PAR file
_msg    417   121	Abort teach; don't store data
_msg    417   122	Don't write data
_msg    417   123	Teach finished; store data...
_msg    417   124	Draw box around the whole area where you accept the marking
_msg    417   125	Abort
_msg    417   126	Incorrect box input
_msg    417   127	Error in manual threshold; take automatic
_msg    417   128	Max 15 chars allowed!
_msg    417   129	Missing data definition >st_par< in ITV.CFG; abort
_msg    417   130	Measurement
_msg    417   131	obrld overflow; skip
_msg    417   132	idv overflow; skip
_msg    417   133	Error: Too many nidvec; skip
_msg    417   134	setup markpatts: rll exceeded
_msg    417   135	Too many reference characters from teach; skip
_msg    417   136	Stop after this measurement
_msg    417   137	Full screen image; histogram disabled
_msg    417   138	Camera online
_msg    417   139	Start inspection..
_msg    417   140	Audit mode
_msg    417   141	Ismeca: Start Image Input
_msg    417   142	Key break
_msg    417   143	in st_sps_reject: from Ismeca Start Image OFF
_msg    417   144	Key break in st_sps_reject
_msg    417   145	ERROR: air cylinder for mirror motion invalid position!!
_msg    417   146	Caution: Mirror moves to IN position; check nest to be empty
_msg    417   147	Error %d in vba macro definition
_msg    417   148	Define marking of pattern type = %d
_msg    417   149	Draw box around char line %d
_msg    417   150	Error %d in obj_fx; skip
_msg    417   151	Device %d in position
_msg    417   152	Out of memory error %d
_msg    417   153	IXPOS detection of ipart=%d fail; errcode=%d\n
_msg    417   154	cluster of lead tip: cannot be measured; err=
_msg    417   155	st_mold_mess error # 
_msg    417   156	Can't find reflex on lead # %d
_msg    417   157	objfx error %d in marking inspection
_msg    417   158	Problem in markpatt: Rotation angle > 45 degrees; mm=%.3f
_msg    417   159	dilatation error %d
_msg    417   160	Erosion error %d
_msg    417   161	Histogram of %s; iclass = %d
_msg    417   162	Curve of the histogram, type : %s; histyp = %d
_msg    417   163	Increment scale for y axis to %d percent
_msg    417   164	Decrement scale for y axis to %d percent
_msg    417   165	Display of Images %s
_msg    417   166	Increment mirror lead tip threshold offset to %d
_msg    417   167	Decrement mirror lead tip threshold  offset to %d
_msg    417   168	Increment marking threshold offset to %d
_msg    417   169	Decrement marking threshold offset to %d
_msg    417   170	Marking type %d selected
_msg    417   171	Error %d: Can't read PAR file!\n
_msg    417   172	VIC error: bad interrupt # in vicflg; abort\n
_msg    417   173	edit %s.vba
_msg    417   174	Calibration error\n\7
_msg    417   175	The size of the char is too big !!! (nbox_tot > table definie)\n
_msg    417   176	Error %d reading PAR-File!\n
_msg    417   177	Error %d in st_x_setup!\n
_msg    417   178	No VBA macro file available; do interactive\n
_msg    417   179	Error %d in vba\n
_msg    417   180	Time delays:  1 -  4: %5.2f %5.2f %5.2f %5.2f\n
_msg    417   181	Error: Imagbe 0 or 1 not defined\n
_msg    417   182	could not allocate meshist ...
_msg    417   183	Cam=%d device position finding
_msg    417   184	Cam=%d IXPOS position finding OK; result=(%d %d %.2f), (%d %d %.2f), (%d %d %.2f)	
_msg    417   185	Measure all positions
_msg    417   186	Edge detect error at bep-ID=%d\n
_msg    417   187	Positions measured
_msg    417   188	Error in st_x_objects: iphase=%d unknown\n
_msg    417   189	Camera=%d: Lead inspection...
_msg    417   190	Lead inspection finished
_msg    417   191	Lead coplanarity measurement finished; %d errors
_msg    417   192	obj_fx error # %d\n
_msg    417   193	%d number of leads found; must be %d leads
_msg    417   194	Cam=%d: Nest (spots) brightness test
_msg    417   195	Nest (spot)=%d part=%d pos=%d %d gv=%d gvref=%d\n
_msg    417   196	Cam=%d: Nest (spot) test finished; %d faults detected
_msg    417   197	Top surface mold test
_msg    417   198	Bottom surface mold test
_msg    417   199	Mold compount measurement finished; %d faults detected
_msg    417   200	Segmentation; %d lead spots found; reference=%d leads
_msg    417   201	Lead shift measurement finished; %d defects
_msg    417   202	Camera=%d: OCR Marking Inspection...
_msg    417   203	Camera=%d: OCR Marking inspection finished; %d defects
_msg    417   204	Error: obrlmask ID=%d imrll=%d OBRLL-mask unknown\n
_msg    417   205	Char %d: Min and Max refence mask
_msg    417   206	Char %d: Measured Mask
_msg    417   207	Char %d marking result: under=%.2f over=%.2f percent
_msg    417   208	markpatt result ichar=%d under=%.2f over=%.2f percent\n
_msg    417   209	Marking inspection finished; %d defects
_msg    417   210	Error: rlmask ID=%d imrll=%d RLL-mask unknown\n
_msg    417   211	Camera SYNC timeout! Check camera interface, clock cable
_msg    417   212	Image %d not defined; abort\n
_msg    417   213	Results of measurements :\n
_msg    417   214   REJECT device Stop; press any key
_msg    417   215   Marking inspection: Reference mask 
_msg    417   216   Lead shift inspection: Reference mask 
_msg    417   217   Segmented marking inspection: Reference mask 
_msg    417   218   Segmentation result 
_msg    417   219   Marking inspection: Reference mask 
_msg    417   220   Segmentation result 
_msg    417   221   Min and Max refence mask (rotation=%d)
_msg    417   222   Measured Mask
_msg    417   223   ERROR in position finding / no part
_msg    417   224   ERROR in measurement positions
_msg    417   225   ERROR in lead colinearity measurement
_msg    417   226   ERROR in lead tip coplanarity measurement
_msg    417   227   ERROR in package mold inspection
_msg    417   228   ERROR in lead shift (plcc) measurement
_msg    417   229   ERROR in OCR character measurement
_msg    417   230   ERROR in marking inspection
_msg    417   231   ERROR in segmented marking inspection
_msg    417   232   ERROR in phase-2 (bottom side) mold inspection
_msg    417   233   ERROR in Spot (pin-1 orientation) brightness check
_msg    417   234   Lead # %d not found
_msg    417   235   Wire loop count test on camera %d
_msg    417   236   Wire loop count test finished; %d defect(s) detected
_msg    417   237   Dambar removal teach
_msg    417   238   ERROR in dambar measurement
_msg    417   239   ERROR in wire count measurement
_msg    417   240	Cam=%d: Pin-1 (spots) orientation test
_msg    417   241	Pin-1 (spot)=%d part=%d pos=%d %d gv=%d gvref=%d\n
_msg    417   242	Cam=%d: Pin-1 (spot) orientation test finished; %d faults detected
_msg    417   243	Cam=%d: Dambar (spots) removal test
_msg    417   244	Dambar (spot)=%d part=%d pos=%d %d gv=%d gvref=%d\n
_msg    417   245	Cam=%d: Dambar (spot) removal test finished; %d faults detected
_msg    417   246   Nest is contaminated! clean and press any button! ESC to abort
_msg    417   247   System stopped; Please clean the nest!
_msg    417   248   Contact surface inspection... 
_msg    417   249	Contact surface measurement finished; %d errors
_msg    417   250	Lead contact surface measurement area
_msg    417   251	Wire scan lines
_msg    417   252	Top side wire scan
_msg    417   253	Lead tip shift measurement area
_msg    417   254       PACKAGE Inspection Teach; file=%s
_msg    417   255       Error %d in PACKAGE Inspection Teach
_msg    417   256       FEDERN Messung, xcode=%x xcode2=%x teach file=%s
_msg    417   257       Fehler %d in FEDERN Messung
_msg    417   258       FEDERN Teach; file=%s
_msg    417   259       Error %d in FEDERN Teach
_msg    417   260		Error in surface cluster: cannot be measured; err=
_msg    417   261       ERROR in Pad surface inspection
_msg    417   262       ERROR in bond inspection
_msg    417   263       BOND surface test on camera %d
_msg    417   264       BOND surface test finished; %d defect(s) detected
_msg    417   265       ERROR in wire location measurement
_msg    417   266       WIRELOC wire loop test finished; %d defect(s) detected
_msg    417   267       WIRELOC wire loop test on camera %d
_msg    417   268       Start 2 Calibration Cycles
_msg    417   269       Please move device in nest: AWAY FROM MIRROR 
_msg    417   270       Please move device in nest: TOWARDS THE MIRROR 
_msg    417   271       Calibration cycle processing...
_msg    417   272       Boundary of measurement cannot be set; error
_msg    417   273       BOUNDARY set finished
_msg    417   274       BOUNDARY setting on camera %d..
_msg    417   275       ContourPos inspection on camera=%d
_msg    417   276       ContourPos inspection finished; %d errors detected
_msg    417   277       ERROR in soft solder measurement
_msg    417   278       ERROR in laser cutting
_msg    417   279		Execute laser calibration
_msg    417   280       ERROR in Pcorr correlation measurement
_msg    417   281       ERROR in lead width measurement
_msg    417   282       SfPit surface test on camera %d
_msg    417   283       SfPit surface test finished; %d defect(s) detected
_msg    417   284       ERROR in shape analysis
_msg    417   285       ERROR in SfPit measurement
_msg    417   286	    Camera=%d: Lead width measurement..
_msg    417   287	    Lead width measurement finished
_msg    417   288       WIRE ball test finished; %d defect(s) detected
_msg    417   289       WIRE ball test on camera %d
_msg    417   290       DiePos test on camera %d
_msg    417   291       DiePos test finished; %d defect(s) detected
_msg    417   292       ERROR in die surface measurement
_msg    417   293       Error: Task %d Die surface inspection has no reference image
_msg    417   294       Die surface inspection # 3 via correlation
_msg    417   295       Die surface correlation finished; %d errors

_msg    417   300       LEFT boundary of inspection area
_msg    417   301       RIGHT boundary of inspection area
_msg    417   302       TOP boundary of inspection area
_msg    417   303       BOTTOM boundary of inspection area
_msg    417   304       MOLDCORNER test on mold corner contour camera %d
_msg    417   305       MOLDCORNER test finished; %d defect(s) detected
_msg    417   306       ERROR in splane positions
_msg    417   307       ERROR in BGA-copla inspection
_msg    417   308       Seating plane calculated; %d error(s) detected
_msg    417   309       Dispense-A Defect!!!!
_msg    417   310       Dispense-B Defect!!!!
_msg    417   311       HOLES measurement finished; %d defect(s) detected
_msg    417   312       WIDTH test on camera %d
_msg    417   313       WIDTH test finished; %d defect(s) detected
_msg    417   314       ERROR in HOLES inspection
_msg    417   315       ERROR in WIDTH inspection
_msg    417   316       ERROR in Soft Solder Height inspection
_msg    417   317       Soft Solder height measurement on camera %d
_msg    417   318       Soft Solder height measurement finished; %d defect(s) detected
_msg    417   319       Laser writing start
_msg    417   320       Laser writing end
_msg    417   321       Online Teach for Contour
_msg    417   322       Online Teach finished.
_msg    417   323       DegaTest Degating Test finished.
_msg    417   324       Error in ivo_mark
_msg    417   325       Error in ivo_mark: No laser contour found in current version
_msg    417   326       Error in ivo_TeachOnline
_msg    417   327       Error in ivo_DegaTest
_msg    417   328       Laser not activated
_msg    417   329       Laser writing completed
_msg    417   330       Laser init completed
_msg    417   331       obj_fx error # %d 
_msg    417   332       Table Calibration ok. dxy=%.2f %.2f rot=%.2f nsteps=%d
_msg    417   333       Calibration ok. dxy=%.2f %.2f area=%.2f size=%.2f rot=%.2f
_msg    417   334       Home 1 finished
_msg    417   335       Homing done. Init now..
_msg    417   336       Homing complete.       
_msg    417   337       Rotate to load pos
_msg    417   338       Lifter to load pos
_msg    417   339       Lift to pickup pos
_msg    417   340       Move to first position
_msg    417   341       Rotate to load pos
_msg    417   342       Lifter to pickup pos
_msg    417   343       Index to position # %d
_msg    417   344       Index back to position # %d
_msg    417   345       IVO_SYNC finished
_msg    417   346       Error: no IVO file defined. cant write results
_msg    417   347       Error: Interface Power Off! Connect Cable!! %d
_msg    417   348       Waiting for next START signal %d...transponder=%s. >>> ahead=%s
_msg    417   349       product loading. Wait COM1 download %d...
_msg    417   350       Error: Cannot read transponder.txt file
_msg    417   351       Problem: Transponder code %s does not match an existing teach file; check TRANSPONDER.TXT. Repeat?
_msg    417   352       Product name %s does not exist. Check TRANSPONDER.TXT file and teach data files. Repeat?
_msg    417   353       Teach file %s from transponder %s loaded
_msg    417   354       Measure next table %d
_msg    417   355		Homing step # %d       .
_msg    417   356       Eco initialization step # %d
_msg    417   357       Pcorr pattern correlation start
_msg    417   358       Pcorr pattern correlation finished; %d defect(s) detected
_msg    417   359       Error in die surface inspection function i_imcmp1.
_msg    417   360       Error in die surface inspection: cannot create log file imcmp1.txt
_msg    417   361		General shape comparison of phase=%d camera=%d       
_msg    417   362       Error in shape analysis
_msg    417   363       General shape comparison finished; %d errors detected
_msg    417   364       Error in s7_write_packet
_msg    417   365       Start machine cycle %d
_msg    417   366       S7 Modul=%s status error # %d
_msg    417   367       Problem: Vision is OFFLINE!!!
_msg    417   368       Machine Error Breakdown
_msg    417   369       \nContinue?
_msg    417   370       Cycle finished. Move motors to ServicePos
_msg    417   371       Servcice position reached. Disable power now...
_msg    417   372       power on motors is down. You may open the door(s) now...
_msg    417   373       Close the doors when you are done, and click OK button
_msg    417   374       Init the individual modules
_msg    417   375       error in s7_write s7_modul
_msg    417   376       S7 Modul=%s status error # %d
_msg    417   377       error in s7_read s7_modul
_msg    417   378		Machine Start    
_msg    417   379       Machine Stop
_msg    417   380       Machine Cycle
_msg    417   381       Change Setup Mode
_msg    417   382       Exit setup mode?
_msg    417   383       Machine setup
_msg    417   384       Machine Setup complete. Production!
_msg    417   385       Inspection finished
_msg    417   386       System automatic production
_msg    417   387       System stop
_msg    417   388       System local run
_msg    417   389       System single cycle
_msg    417   390       System EndOfLot
_msg    417   391       Pin-# display enabled
_msg    417   392       Pin-# display disabled
_msg    417   393       Not permitted at current password level
_msg    417   394       Automatic teach for the next table activated
_msg    417   395       Switch OFF automatic teach
_msg    417   396       Reference results deleted
_msg    417   397       Continue task %d
_msg    417   398       This task is not defined. Cannot run Audit.
_msg    417   399       Help on function=%d
_msg    417   400       Handler Homing
_msg    417   401       MOVE... Press again to fix
_msg    417   402       MOVE terminated
_msg    417   403       MOVE other corner..press again to finish
_msg    417   404       POINTEDIT. Move point with cursor. Press button to fix position
_msg    417   405       POINTEDIT finished.
_msg    417   406       Click the end of the section..press again to finish
_msg    417   407       Section shift completed
_msg    417   408       Moving single point of object..
_msg    417   409       Teach is finished
_msg    417   410       Enter new object
_msg    417   411       Snap all selected objects...
_msg    417   412       Undo..done
_msg    417   413       All objects de-selected
_msg    417   414       All (%d) objects selected
_msg    417   415       Draw 2 points for pick box
_msg    417   416       Move picked elements
_msg    417   417       Cannot copy to buffer; out of memory
_msg    417   418       Copy %d picked elements to Clipboard
_msg    417   419       Paste elements from Clipboard
_msg    417   420       Error: Can't alloc memory for copy vector
_msg    417   421       Point editing.... Click the point now and move cursor..
_msg    417   422       Lowpass error
_msg    417   423       Low pass filter applied
_msg    417   424       Vector interpolation error
_msg    417   425       Vector interpolation applied
_msg    417   426       Shift contour section.... Click two points to define the section now..
_msg    417   427       Spline filter: not yet impl.
_msg    417   428       Pin# display is %s
_msg    417   429       Zoom in (magnify)
_msg    417   430       Zoom out (demagnify)
_msg    417   431       Move to version %d
_msg    417   432       Move to device# %d
_msg    417   433       error during image load
_msg    417   434       Editing device# %d of version %d
_msg    417   435       Move to version# %d
_msg    417   436       error during image load
_msg    417   437       Editing device# %d of version# %d
_msg    417   438       Params of selected object # %d
_msg    417   439       %d objects picked
_msg    417   440       Move to next part-Id # %s
_msg    417   441       Move to previous part-ID # %s
_msg    417   442       %d objects cannot snap! They are invalid! 
_msg    417   443       %d objects snapped. OK
_msg    417   444       %d Objects deleted.
_msg    417   445       DELETE all old versions
_msg    417   446       Execute gliding average, and replace current teach?
_msg    417   447       Wirklich die Quadranten ueberschreiben? 
_msg    417   448       Define new marking pattern
_msg    417   449       Finish lot and reset counters?
_msg    417   450       Save this position as new?
_msg    417   451       Teller vom HubDrehtisch entfernt?
_msg    417   452       Motore wirklich abschalten? (j/n)?
_msg    417   453       Accept the current point?
_msg    417   454       S7 Error
_msg    417   455       PRO File Error
_msg    417   456       Cannot see the calibration hole. Bad focus or plate missing! Repeat
_msg    417   457       Warning: big variation in calibration measurement. You must discard!
_msg    417   458       Error
_msg    417   459       Finish?
_msg    417   460       Homing
_msg    417   461       Radial Results
_msg    417   462       Continue?
_msg    417   463       Z Aial Results; Push and continue?
_msg    417   464       Axial Align Results
_msg    417   465       X Axial Results. Continue align?
_msg    417   466       Finish?
_msg    417   467       Rotation
_msg    417   468       AX first pass finished
_msg    417   469       AX-2 second pass finished
_msg    417   470       Error: laser driver not found; abort
_msg    417   471       SynRad Initialization Error
_msg    417   472       Calib results
_msg    417   473       Blank dark image
_msg    417   474       White tooth display
_msg    417   475       Chain contour is calculated
_msg    417   476       Chain code direct display
_msg    417   477       XY pixel contour list result
_msg    417   478       Sub-pixel contour list result
_msg    417   479       Make distortions into contour
_msg    417   480       Low pass filter result
_msg    417   481       Contour interpolation result
_msg    417   482       Dilatation result
_msg    417   483       Camera tilt correction result
_msg    417   484       Camera Z correction result
_msg    417   485       Chaindiff evaluation finished, result=%.2f %.2f %.2f %.2f
_msg    417   486       Ecostep Motore %x arbeiten nicht; blockiert? 
_msg    417   487       DELETE all picked objects
_msg    417   488       Delete
_msg    417   489       PROBLEM: Lead # %d is out of image; delete?
_msg    417   490       Select
_msg    417   491       PROBLEM: Pad # %d is out of image; delete?
_msg    417   492       Double software start, or Port32 Initialization not OK. Cannot run.
_msg    417   493       Initialization Error
_msg    417   494       Error: File ITV.PRM missing
_msg    417   495       Error: File ITV.CFG bad format or missing
_msg    417   496       Error: File ITV.MSG missing
_msg    417   497       Error: File ITV.CMD missing
_msg    417   498       Not deleted
_msg    417   499       Old teach versions deleted
_msg    417   500       No modification
_msg    417   501       Gliding average executed
_msg    417   502       Begin Laser writing....
_msg    417   503       Laser writing finished
_msg    417   504       Begin Laser calibration....
_msg    417   505       Begin table calibration....
_msg    417   506       Calibration saved
_msg    417   507       Abbruch
_msg    417   508       Copy device positions on table including height..
_msg    417   509       Previous device....
_msg    417   510       Next device
_msg    417   511       Calibration finished. Result replaces the current QFP XY AutoTeach parameters
_msg    417   512       Calibration finished. Result replaces the current QFP Copla AutoTeach parameters
_msg    417   513       Error: Camera %d wrong number of devices found. abort
_msg    417   514       Isa_grab error
_msg    417   515       Isa_review error
_msg    417   516       cogtest nvar=%d var=%d %d %d %d
_msg    417   517       Load new teach file
_msg    417   518       Save teach file
_msg    417   519       Teach file saved
_msg    417   520       Error: file cannot be written; write-protect. Select another name
_msg    417   521       Too many errors; teach file not saved
_msg    417   522       Save teach file as...
_msg    417   523       Too many errors; teach file not saved
_msg    417   524       Load new image file
_msg    417   525       Save image as...
_msg    417   526       Load new product
_msg    417   527       Save product as..
_msg    417   528       Select histogram #1 for parameter: %d
_msg    417   529       Select histogram #2 for parameter: %d
_msg    417   530       Lot finished; new lot started.
_msg    417   531       New Lot # 0
_msg    417   532       Enter the new lot code
_msg    417   533       New lot code is: %s
_msg    417   534       New Lot # 1
_msg    417   535       New Lot # 2
_msg    417   536       New Lot # 3
_msg    417   537       New Lot # 4
_msg    417   538       error in s7_read s7_modul
_msg    417   539       error in s7_read s7_motorpoint
_msg    417   540       error in s7_read s7_io
_msg    417   541       Motor # %d selected
_msg    417   542       Move to point %d
_msg    417   543       Fix point %d
_msg    417   544       Output toggled
_msg    417   545       Previous inputs: begin at sensor # %d
_msg    417   546       Next inputs: begin at sensor # %d
_msg    417   547       Previous outputs: begin at sensor # %d
_msg    417   548       Next outputs: begin at sensor # %d
_msg    417   549       S7 diagnostics
_msg    417   550       error in s7_write s7_modul
_msg    417   551       error in s7_write s7_motorpoint
_msg    417   552       error in s7_write s7_io
_msg    417   553       S7 status
_msg    417   554       error in s7_write s7_modul
_msg    417   555       error in s7_write s7_io
_msg    417   556       Start calibration of scaling for camera %d. Enter 2 points in X first, then 2 points for Y
_msg    417   557       Error in X calibration (points 1,2): edge not found; calibration aborted
_msg    417   558       Error in Y calibration (points 3,4): edge not found; calibration aborted
_msg    417   559       New pixel size is: X=%.2f Y=%.2f. Calibration OK
_msg    417   560       Start calibration of Alpha angles (mirror orientation)
_msg    417   561       Copla calibration finished
_msg    417   562       Teach Automatic
_msg    417   563       Teach Manual
_msg    417   564       Edit of marking pattern
_msg    417   565       Automatic laser / Shape contour editing
_msg    417   566       Automatic Pattern Correlation: Auto-convert contours into vectors
_msg    417   567       Lead AutoTeach error; aborted
_msg    417   568       BGA AutoTeach error; aborted
_msg    417   569       Error in Dispense AutoTeach; aborted
_msg    417   570       AutoTeach Finished
_msg    417   571       Descriptor not defined. Abort
_msg    417   572       Autoteach step 1: generate leads
_msg    417   573       Error in conversion to leads; abort!
_msg    417   574       Autoteach step 2: generate package mold contour
_msg    417   575       Error in conversion to mold cluster; abort!
_msg    417   576       out of memory; abort!
_msg    417   577       Error in conversion to RLL; abort!
_msg    417   578       Autoteach step 3: Find position of device in image (coarse correlation...)
_msg    417   579       Error in PatternMatch; abort!
_msg    417   580       Autoteach step 4: Transform leads & mold contour into acual position..
_msg    417   581       Finished; Device position is at: xyanf=%d %d
_msg    417   582       Boxes cannot find new position. Autoteach aborted
_msg    417   583       AutoTeach error: Cannot update ixpos; abort
_msg    417   584       AutoTeach error: transformation verify is not ok; abort
_msg    417   585       Boxes cannot find new position. Autoteach aborted
_msg    417   586       AutoTeach OK
_msg    417   587       Autoteach UpdatePos error.
_msg    417   588       Image # %d finished
_msg    417   589       Not defined
_msg    417   590       Can Bus busy; cannot move
_msg    417   591       index...
_msg    417   592       Index done
_msg    417   593       Table position # %d saved
_msg    417   594       Table Z position saved
_msg    417   595       Homing beendet
_msg    417   596       Kein Homing durchgefuehrt
_msg    417   597       Motor stromlos. Durch jede andere Taste wieder aktiv schalten!
_msg    417   598       Motor power nicht ausgeschaltet
_msg    417   599       Lifter to load position
_msg    417   600       Table to Load position
_msg    417   601       Lifter to pickup pos
_msg    417   602       Table to Calibration position
_msg    417   603       Table to Pickup position
_msg    417   604       Rotation to pickup pos
_msg    417   605       Table to Pickup position
_msg    417   606       Sorry; password fail
_msg    417   607       Testmode logfile cannot be opened
_msg    417   608       i_cur_gets not implemented
_msg    417   609       VBA finished; cmd_err=%d
_msg    417   610       Select SPS device # %d: %s
_msg    417   611       Error %d in ST inspection
_msg    417   612       Error: # of specified balls=%d does not match the true teach ball count=%d! Corrected
_msg    417   613       Error: number of balls in x=%d and y=%d inconsistent to total # of balls=%d. Correct!
_msg    417   614       BGA XY measurement error # %d
_msg    417   615       Out of memory in seating plane calculation. Abort
_msg    417   616       Error in splane calculation: Too many points
_msg    417   617       Error in dci_vec_dist
_msg    417   618       Automatic BGA Ball Teach.
_msg    417   619       Define the measurement region (box). Enter UL and LR corners
_msg    417   620       Cannot find the holes in pedestal. Possible reason: pedestal not empty or no illumination
_msg    417   621       Problem in AutoTeach: no pedestal holes found. Remove the device, apply illumination, and try again
_msg    417   622       Automatic teach with calibration finished.
_msg    417   623       Select teach image; press ESC key to grab
_msg    417   624       Enter boxes now
_msg    417   625       Execute edge detection from stored image once
_msg    417   626       Execute edge detection and grab new image once
_msg    417   627       Execute edge detection # %d from online images
_msg    417   628       Enter object contour line
_msg    417   629       How many measurements per side? 1, 2 or 3 ? 
_msg    417   630       st_x_pcor result: dxy=%.1f %.1f xyoff=%d %d
_msg    417   631       Error in grabbing thread creation
_msg    417   632       Can't end the grabbing thread; does not exist
_msg    417   633       Error %d during edit; skip
_msg    417   634       Pixel size calibration finished.
_msg    417   635       Generate automatic marking pattern for object-ID=%d.
_msg    417   636       Error in pattern mask redefinition id=%d; skip
_msg    417   637       Marking test with pattern # %d id=%d rot=%.2f
_msg    417   638       ERROR in marking: No marking model for this binning type! Abort!
_msg    417   639       Character mask %s loaded...
_msg    417   640       Out of memory
_msg    417   641       Error: Mask %s could not be loaded
_msg    417   642       Finished; %d RLL font characters loaded
_msg    417   643       st_mark_gen error %d
_msg    417   644       Automatic marking pattern definition with next inspection cycle
_msg    417   645       Object measurement empty; cannot define new marking object
_msg    417   646       Colinearity: Undetected vectors; type v0: %d, v1: %d, v2: %d
_msg    417   647       Coplanarity: Undetected vectors; type v0(lead): %d, v2(package): %d
_msg    417   648       Ërror in dci_vec_dist # 1, no result
_msg    417   649       Ërror in dci_vec_dist # 2, no result
_msg    417   650       Error in definition of background inspection
_msg    417   651       Audit, do step
_msg    417   652       Inspection running already...
_msg    417   653       No teach loaded. Abort
_msg    417   654       Error in image check: bad focus or brightness; correct!
_msg    417   655       Position empty
_msg    417   656       Reject; execute iteration # %d
_msg    417   657       Save sheet %s
_msg    417   658       Error in profile write, file=%s: abort
_msg    417   659       Save data of table %s
_msg    417   660       Error in IVO results write, file=%s: abort
_msg    417   661       Repeat same table again; table # %d
_msg    417   662       time task=%d: sync=%.3f measure=%.3f output=%.3f time_scale=%.3f 
_msg    417   663       Position empty
_msg    417   664       Error during teach data write to PAR file
_msg    417   665       seating plane: no edge boxes; nothing to do
_msg    417   666       Error in st_splane_prep # %d
_msg    417   667       Error in st_copla_bestplane # %d
_msg    417   668       Camera %d: no frame
_msg    417   669       Caution: phase=%d: ixpos not successful; disable camera %d
_msg    417   670       nlead=%d xytip=%.2f %.2f stoff_corr=%.2f
_msg    417   671       Colinearity disabled; cannot run lead surface test
_msg    417   672       Problem: Device at position x=%d and y=%d has no teach contour! Correct teach!
_msg    417   673       st_disp_mess error # %d
_msg    417   674       Invalid dispense parameter type>> dispens_type=%d; ignore
_msg    417   675       Load image %s from file..
_msg    417   676       Cannot load image %s; skip and continue
_msg    417   677       Store image %s nto file
_msg    417   678       Problem: cannot log images
_msg    417   679       Load image %s from file..
_msg    417   680       Error: cannt oread file %s
_msg    417   681       Save image %s...
_msg    417   682       loop=%d: st_thread_grab error %d
_msg    417   683       loop=%d: phase=%d st_thread_grabsync error %d
_msg    417   684       Grab loop # %d times: grab=%f sync=%f complete
_msg    417   685       Load image %s
_msg    417   686       Write image %s
_msg    417   687       Begin image writing..
_msg    417   688       End image writing
_msg    417   689       fcluster contour not found; correct teach
_msg    417   690       Problem: fcluster contour in current version# %d not found; previous %d found
_msg    417   691       Continue operation...
_msg    417   692       Retry # %d: E8003 cable problem!! 
_msg    417   693       Error: You must define a valid # of devices per image in teach; now is %d
_msg    417   694       Cam%d start: bad polarity (always HIGH). Timeout!
_msg    417   695       Ismeca: Start1 Image Input
_msg    417   696       Ismeca: Start2 Image Input
_msg    417   697       Copla calibration process; %.2f percent complete. Alpha=%.2f stoff=%.2f
_msg    417   698       Error in st_copla_bestplane: Zero determinant; can't calc coplanarity plane
_msg    417   699       Seating plane: Number of positions center->side view does not match!
_msg    417   700       PointPrep Error: lead # %d not found 
_msg    417   701       GLARE calibration: Insert carbon probe
_msg    417   702       Select 10 times dark portions of carbon only
_msg    417   703       Left button to resize box, right to accept
_msg    417   704       Carbon average grey val.= %.2f
_msg    417   705       Select 10 times white background only
_msg    417   706       White bgnd average grey val.= %.2f
_msg    417   707       Close optics & measure 10 times dark camera
_msg    417   708       Dark camera average grey val.= %.2f
_msg    417   709       DENS camera calibration: Enter box
_msg    417   710       Place box without ANY particles!
_msg    417   711       GLARE calibration: Insert carbon probe
_msg    417   712       Select 10 times dark portions of carbon only
_msg    417   713       Carbon average grey val.= %.2f
_msg    417   714       Select 10 times white background only
_msg    417   715       HORIZONTAL calibration; right button to finish
_msg    417   716       VERTICAL calibration; right button to finish
_msg    417   717       Calibration result discarded
_msg    417   718       New pixel size is x=%.3f y=%.3f [%s]; ok? (Y/N)?
_msg    417   719       Error in camera calibration: icamera=%d invalid\n
_msg    417   720       New pixel size is x=%.3f y=%.3f [%s].
_msg    417   721       Box not ok; total=%d boxes
_msg    417   722       Box ok; total=%d boxes
_msg    417   723       Lead # %d has been deleted
_msg    417   724       Lead input OK
_msg    417   725       Error: this lead is not OK
_msg    417   726       Lead ok; total=%d of leads
_msg    417   727       pad # %d has been deleted
_msg    417   728       Pad input OK
_msg    417   729       Input %d. point for pad
_msg    417   730       Vector input OK
_msg    417   731       Inputpoint: Invalid message
_msg    417   732       Vector input failed
_msg    417   733       Disabled from coplanarity
_msg    417   734       Enabled for coplanarity
_msg    417   735       COPL set (on selected leads): F1:Disable  F2:Enable  F3:Set as reference  END
_msg    417   736       Spot test failed
_msg    417   737       Contour line input OK
_msg    417   738       Enter contour point # %d now
_msg    417   739       Glue test failed
_msg    417   740       Out of memory: Too many clusters; ignore
_msg    417   741       Cluster line input OK
_msg    417   742       Enter cluster contour point # %d now
_msg    417   743       Can't allocate new cluster
_msg    417   744       Out of memory: Too many rlmask; ignore
_msg    417   745       Out of memory; ignore
_msg    417   746       Bridge/pit region input OK
_msg    417   747       Enter Bridge/pit input point # %d now
_msg    417   748       Can't alloc bridge mask
_msg    417   749       BRIDGE/PIT test failed
_msg    417   750       Out of memory: Too many obrlmask; ignore
_msg    417   751       OBRL region input OK
_msg    417   752       OBRL input region point # %d now
_msg    417   753       OBRLMASK test failed
_msg    417   754       OBRL region %d points finished
_msg    417   755       obobinit: buffer limit exceeded; skip
_msg    417   756       Invalid box
_msg    417   757       FVBOX test failed
_msg    417   758       Out of memory: Too many SVEC; ignore
_msg    417   759       Vector test failed
_msg    417   760       Out of memory: Too many balls; ignore
_msg    417   761       Ball check failed
_msg    417   762       Ball test failed
_msg    417   763       Out of memory: Too many clusters; ignore
_msg    417   764       FCluster line input OK
_msg    417   765       Enter cluster contour point # %d now
_msg    417   766       Can't allocate new fcluster
_msg    417   767       Out of memory: Too many clusters; ignore
_msg    417   768       PLISTD vector input OK
_msg    417   769       Enter PLISTD vector point # %d now
_msg    417   770       Can't allocate new PLISTD vector
_msg    417   771       Out of memory: Too many WIRE; ignore
_msg    417   772       Wire test failed
_msg    417   773       %d points of %d are defined; go on
_msg    417   774       All points defined
_msg    417   775       LVGAP measurement on camera %d
_msg    417   776       LVGAP measurement finished. %d errors detected
_msg    417   777       COMB measurement on camera %d
_msg    417   778       COMB measurement finished. %d errors detected
_msg    417   800       Enter four vectors on die first (point# %d)
_msg    417   801       Enter vectors 5..8 on pad now (point# %d)
_msg    417   802       All vectors defined
_msg    417   803       ERROR in HOLE Surface inspection
_msg    417   804		InkJet Surface inspection on camera %d
_msg    417   805		InkJet Surface inspection on camera %d finished; %d faults detected
_msg    417   806		InkJet Global Surface inspection on camera %d
_msg    417   807		InkJet Global Surface inspection on camera %d finished; %d faults detected

_msg    417   999	    Cam=%d: Nest (spots) removal test
_msg    417  1001	    Cam=%d: Nest (spots) removal test finished; %d defect(s) found

_msg    418     0       SPS0
_msg    418     1       SPS1
_msg    418     2       SPS2
_msg    418     3       SPS3
_msg    418     4       SPS4
_msg    418     5       SL9003 Interface (Alphasem)
_msg    418     6       SPS6
_msg    418     7       E8003 Interface (Alphasem)
_msg    418     8       LIAS Interface
_msg    418     9       BOS / Epson Interface
_msg    418    10       BOS / Elmos Interface
_msg    418    11       Ivoclar Interface
_msg    418    12       SPS12
_msg    418    13       SPS13
_msg    418    14       SPS14
_msg    418    15       SPS15
_msg    418    16       SPS16
_msg    418    17       SPS17
_msg    418    18       SPS18
_msg    418    19       SPS19
_msg    418    20       SPS12
_msg    418    21       SPS20
;
;
;       6.Feb99 bs: group 419 dci1..8 LF3 software
;=================================================
;
;	 group	 id  text

_msg    419    1  Really want to delete all existing teach data? (y/n):
_msg    419    2  Cancelled
_msg    419    3  All data deleted
_msg    419    4  error occured on DOWNLOAD command
_msg    419    5  error occured on UPLOAD command
_msg    419    6  Really override CAM1 tolerances (Y/N)?
_msg    419    7  Really override CAM2 tolerances (Y/N)? 
_msg    419    8  Really override CAM1 tolerances (Y/N)? 
_msg    419    9  Really override CAM2 tolerances (Y/N)? 
_msg    419   10  do not find
_msg    419   11  LD: Set Y position to pick leadframe from indexer
_msg    419   12  LD: Set Y position to drop L/F into first box
_msg    419   13  LD: Set Y to position of Z1 to last box
_msg    419   14  OLD: Set Y position to pick leadframe from indexer
_msg    419   15  OLD: Set Y position to drop L/F into first box
_msg    419   16  OLD: Set Y to position of Z1 to last box
_msg    419   17  Offload cycle: Place strip on indexer
_msg    419   18  Complete index cycle incl. offload
_msg    419   19  Really want to reorganize box organization? (Y/N) :
_msg    419   20  LD: Initialize Loader
_msg    419   21  Can't init Z1/2 axes
_msg    419   22  Can't init; sensor problem
_msg    419   23  Finished
_msg    419   24  OLD: Initialize Offloader
_msg    419   25  Can't init Z1/2 axes
_msg    419   26  Can't init; sensor problem
_msg    419   27  Finished
_msg    419   28  Ok
_msg    419   29  Terminate this reel? (Y/N):
_msg    419   30  Error opening temporary output file report.txt
_msg    419   31  Print Report to a file ...
_msg    419   32  Error opening mask file report.dsp
_msg    419   33  Error opening temporary output file report.tmp
_msg    419  34  Error opening mask file report.prn
_msg    419  35  Printing report.tmp...
_msg    419  36  Really override CAM1 tolerances (Y/N)? 
_msg    419  37  Really override CAM2 tolerances (Y/N)? 
_msg    419  38  Really override CAM1 tolerances (Y/N)? 
_msg    419  39  Really override CAM2 tolerances (Y/N)? 
_msg    419  40  Changing dci_xec.x_mode
_msg    419  41  Changing dci_xec.x_mode2
_msg    419  42  do not find
_msg    419  43  Problem: Reject bin sorting cannot be executed; insufficient reject boxes
_msg    419  44  Use arrow keys, Ctrl-arrows, PgUp, PgDown, F1:Vacuum; F2:PaperToggle; End,ESC:Finish
_msg    419  45  Loading...
_msg    419  46  Select any menu for input or edit
_msg    419  47  Indexer Manual
_msg    419  48  Calibrate camera 0,1,2 or all? (0/1/2/a):
_msg    419  49  Enter Length of calibrate distance:
_msg    419  50  Problem: calibration is far out of range; check DIMENSION record in PAR file
_msg    419  51  Repeat, Continue or eXit?
_msg    419  52  Flat or Downset unit? (F/D): 
_msg    419  53  Can't get memory; skip calibration
_msg    419  54  adjust cameras
_msg    419  55  Not configured
_msg    419  56  IXPOS camera %d: Leadframe placement in indexer
_msg    419  57  Correct all elements this camera to the new leadframe position? Y/N: 
_msg    419  58  PLATING camera %d: Silver plating position measurement
_msg    419  59  SPOT camera %d: Surface analysis
_msg    419  60  TAPE camera %d: Tape position
_msg    419  61  COIN camera %d: Coining area
_msg    419  62  PAD camera %d: Die pad
_msg    419  63  TIPS camera %d: Finger tips position
_msg    419  64  COPLA camera %d: Coplanarity setting
_msg    419  65  BRIDGE camera %d: Detect Etching Defects
_msg    419  66  BRIDGES camera %d: Detect Etching Defects
_msg    419  67  BRIDGES Contour camera %d: Teach Contour CLuster
_msg    419  68  Convert into masks? (Y/N): 
_msg    419  69  PITHOLES camera %d: Detect Etching Defects
_msg    419  70  MOUSE BITES camera %d: Detect Etching Defects
_msg    419  71  MBite Contour camera %d: Teach Contour CLuster
_msg    419  72  Convert into masks? (Y/N): 
_msg    419  73  BLACK CONTAMINATION camera %d: Detect Contamination Defects
_msg    419  74  WHITE CONTAMINATION camera %d: Detect White Contamination Defects
_msg    419  75  LVEC camera %d: General Shape
_msg    419  76  PINHOLE measurement camera %d
_msg    419  77 Define VBA macro
_msg    419  78  Error %d in vba macro definition
_msg    419  79  ORIENTATION camera %d: Set spots
_msg    419  80  DOWNSET Check camera %d: Set spots
_msg    419  81  ZLINE Dambar Height camera %d: Set line(s  
_msg    419  82  ALIGNMENT measurement camera %d
_msg    419  83  Exit from teach mode? (y/n):
_msg    419  84  Teach continued
_msg    419  85  Exit from teach
_msg    419  86  Don't write data
_msg    419  87  File exists; overwrite? (Y/N): 
_msg    419  88  File preserved
_msg    419  89  Not allowed to modify DEFAULT.PAR
_msg    419  90  Problem: Camera CAM%d, %s: Teach data are inconsistent! Continue teach (y/n)?
_msg    419  91  OK; continue teach
_msg    419  92  Please wait; lead sequence is reorganized
_msg    419  93  Please wait, writing data to teach file
_msg    419  94  Compressed mask save? (Y/N): 
_msg    419  95  File name is write protected! You destroy your master teach! SAVE AS.. another name please!
_msg    419  96  Finished; data written to teach file
_msg    419  97  PAR file write error %d: cannot store teach data
_msg    419  98  Error: Too many die pads; skip rest
_msg    419  99  You must specify the die pad(s) first!
_msg    419  100  Can't find position: err=%d
_msg    419  101  Download CFG
_msg    419  102  Download PAR
_msg    419  103  Loading PAR...
_msg    419  104  Setup data tables...
_msg    419  105  Cameras to destination..
_msg    419  106  LF2 Operator Menu; Setup & start system
_msg    419  107  User break 2
_msg    419  108  On Measurement
_msg    419  109  Slave: inspection wait loop
_msg    419  110  No VBA macro file available; do interactive
_msg    419  111  Break from ATI Handler Sync
_msg    419  112  Conveyor jam 9
_msg    419  113  Loadstk empty
_msg    419  114  Tray table full
_msg    419  115  Paper stack empty
_msg    419  116  OK stack full
_msg    419  117  REJECT stack full
_msg    419  118  AutoStop: Too many defect parts!
_msg    419  119  Autostop at error; press any key or F6
_msg    419  120  Autostop at error; press any key or F6
_msg    419  121  Correct the mask or Automatic? (y/n/a):
_msg    419  122  Final bridging threshold?
_msg    419  123  Final pit threshold?
_msg    419  124  Stop; press any key or F6
_msg    419  125  Keyboard break 12
_msg    419  126  Retry after mscom stop
_msg    419  127  Master-Slave or bad position: 
_msg    419  128  Teach reference data were modified (Autoteach). Store? (y/n):
_msg    419  129  Don't write data
_msg    419  130  Bad position or missing part
_msg    419  131  Inspection error %d
_msg    419  132  Next cycle is task # %d
_msg    419  133  Warning: No more images; AUDIT is incomplete
_msg    419  134  Warning: No more images; AUDIT is incomplete
_msg    419  135  Conveyor jam 29
_msg    419  136  Trays Load / Unload
_msg    419  137  Master-Slave sync fail
_msg    419  138  Index step fail %d
_msg    419  139  Track not empty
_msg    419  140  Trays empty / full
_msg    419  141  Can't input image
_msg    419  142  Load / Unload trays
_msg    419  143  Master-Slave:
_msg    419  144  Loop # %d processing
_msg    419  145  Loop %d phase=%d processing
_msg    419  146  Loop %d phase=%d wait for grabsync
_msg    419  147  PITHOLES TOP camera %d: Detect Etching Defects
_msg    419  148  Meshist corrupted
_msg    419  149  Calibrate camera %d; verify size
_msg    419  150  Bad position; repeat or ESC
_msg    419  151  Caution: Any edge detect was not OK; result maybe inaccurate
_msg    419  152  Focus optics, or use UP/DOWN key to move camera or END
_msg    419  153  accept? y/n/ESC: 
_msg    419  154  Focus optics, or use UP/DOWN key to move camera or END
_msg    419  155  Center light calibration
_msg    419  156  lf2_x_centercal: theta=%.2f phi=%.2f\n
_msg    419  157  Cam%d Center to top light calibration
_msg    419  158  lf2_x_toptrafo nhor=%d nvert=%d dx=%.2f dy=%.2f scx=%.4f scy=%.4f scale=%.4f\n
_msg    419  159  Load stop after this unit!
_msg    419  160  Release load stop; continue inspection
_msg    419  161  Open doors: Wait until handler stops...
_msg    419  162  Force strip feed
_msg    419  163  Camera %d image display enabled
_msg    419  164  Increment %s threshold to %d
_msg    419  165  Decrement %s threshold to %d
_msg    419  166  Increment bridging threshold offset to %d
_msg    419  167  Decrement bridging threshold offset to %d
_msg    419  168  Increment pit threshold offset to %d
_msg    419  169  Decrement pit threshold offset to %d
_msg    419  170  Enter Your Password:
_msg    419  171  Invalid password; retry! (max. 3 retries) 
_msg    419  172  Sorry, permission denied
_msg    419  173  meshist out of range: nmeshist=%d, i=%d, meshist[i].p=%x (hex), ((float *)&dci_mess+(sizeof(DCI_MESS)/4))=%8x (hex  
_msg    419  174  Can't write measurements to disc!
_msg    419  175  Can't write measurements to disc!
_msg    419  176  Enter Lot #:
_msg    419  177  Meshist corrupted
_msg    419  178  Press any key to return to operator's menu
_msg    419  179  Error: Disc Full
_msg    419  180  Error in CFG file: Inconsistent sequence of CMDFLT records; incomplete definition!
_msg    419  181  Write error in line %d, file %s
_msg    419  182  LF2 Light Cal: Camera=%d Phase=%d: F1..F10:phase; S3,S4,S5:camera
_msg    419  183  Camera 0 not implemented in configuration
_msg    419  184  Camera 1 not implemented in configuration
_msg    419  185  Move camera focus UP/DOWN
_msg    419  186  Place edge boxes (4 x hor., 4 x vert) now! 
_msg    419  187  Bad position measurement; abort
_msg    419  188  Move Z axis to perfect focus now! 
_msg    419  189  Corner light requires %d steps offset
_msg    419  190  height_plate is %d steps
_msg    419  191  Measure four corner coplanarity lamps
_msg    419  192  Place windows for image lamp=%d
_msg    419  193  Can't find edge; repeat with better box placement
_msg    419  194  Can't find position; Ignore, Repeat or ESC (i/r/esc
_msg    419  195  Position detected
_msg    419  196  Calibrated height of frosted glass to L/F is %.1f micron
_msg    419  197  Can't write back results to ITV.CFG\n
_msg    419  198  Error %d during read PAR-file!\n
_msg    419  199  Machine Testrun; Clear system & setup
_msg    419  200  Strip %d frame %d==%d: Processed
_msg    419  201  Configuration Error: 'mot' units=%s differ from 'dimension units %s\n
_msg    419  202  (F1:ZoomIn F2:ZoomOut F3:Dimmer)  
_msg    419  203  Place leadframe
_msg    419  205  ixpos imno=%d cam%d ipart=%d 
_msg    419  206  Camera=%d: Lframe position detection
_msg    419  207  Camera=%d: Lframe position measured, dx=%.2f, dy=%.2f rot=%.3f
_msg    419  208  tipspace imno=%d cam%d lo_part=%d 
_msg    419  209  Camera=%d: Lframe XY finger tip spacing measurement
_msg    419  210  Camera=%d: Lframe XY finger tip spacing calculated
_msg    419  211  Keyboard break 33
_msg    419  212  tippos imno=%d cam%d lo_part=%d 
_msg    419  213  Camera=%d: Lead tip abs. position measurement
_msg    419  214  Camera=%d: Lead tip abs. pos. measured; %d faults
_msg    419  215  Keyboard break 34
_msg    419  216  tippos imno=%d cam%d lo_part=%d 
_msg    419  217  Camera=%d: Lframe XY finger tip to die pad spacing measurement
_msg    419  218  Camera=%d: Lframe XY finger tip to die pad spacing measured
_msg    419  219  Keyboard break
_msg    419  220  tippos imno=%d cam%d lo_part=%d 
_msg    419  221  Camera=%d: XY tip-to-INSIDE-diepad spacing measurement
_msg    419  212  tippos imno=%d cam%d lo_part=%d 
_msg    419  213  Camera=%d: Lead tip abs. position measurement
_msg    419  214  Camera=%d: Lead tip abs. pos. measured; %d faults
_msg    419  215  Keyboard break 34
_msg    419  216  tippos imno=%d cam%d lo_part=%d 
_msg    419  217  Camera=%d: Lframe XY finger tip to die pad spacing measurement
_msg    419  218  Camera=%d: Lframe XY finger tip to die pad spacing measured
_msg    419  219  Keyboard break
_msg    419  220  tippos imno=%d cam%d lo_part=%d 
_msg    419  221  Camera=%d: XY tip-to-INSIDE-diepad spacing measurement
_msg    419  222  Camera=%d: XY tip-to-INSIDE-diepad spacing measurement
_msg    419  223  Keyboard break
_msg    419  224  tippos imno=%d cam%d lo_part=%d 
_msg    419  225  Leads undefined in Coplanarity!
_msg    419  226  Pad undefined in Coplanarity!
_msg    419  227  Leads not measured in Coplanarity!
_msg    419  228  Pads not measured in Coplanarity!
_msg    419  229  Copl discophase=%d image=%d camera=%d: reference leads
_msg    419  230  Camera=%d Lamp=%d: Copl. edges calculated
_msg    419  231  Keyboard break 37
_msg    419  232  Camera=%d: Lead tip coplanarity measurement
_msg    419  233  Camera=%d: Lead tip coplanarity measured
_msg    419  234  Keyboard break 39
_msg    419  235  dci_x_coin imno=%d cam%d lo_part=%d 
_msg    419  236  Camera=%d: Coining position measurement
_msg    419  237  Camera=%d: Coining position measured; %d faults detected
_msg    419  238  Keyboard break 41
_msg    419  239  dci_x_sfpadhist imno=%d cam%d lo_part=%d 
_msg    419  240  Camera=%d: Die pad surface inspection
_msg    419  241  Camera=%d: Die pad surface measured; %d faults detected
_msg    419  242  Keyboard break 42
_msg    419  243  dci_x_sfpadx imno=%d cam%d lo_part=%d 
_msg    419  244  Camera=%d: Die pad surface inspection
_msg    419  245  Camera=%d: Die pad surface measured; %d faults detected
_msg    419  246  Keyboard break 43
_msg    419  247  dci_x_sfpadsect_hist imno=%d cam%d lo_part=%d 
_msg    419  248  Camera=%d: Die pad surface (sector histo) inspection
_msg    419  249  ix=%d iy=%d avg=%d pitoff=%d pitsize=%d contasize=%d\n
_msg    419  250  Camera=%d: Die pad sectorhist surface measured; %d faults detected
_msg    419  251  Keyboard break 42
_msg    419  252  dci_x_sflead imno=%d cam%d lo_part=%d 
_msg    419  253  Camera=%d: Lead surface inspection
_msg    419  254  Camera=%d: Lead surface measured; %d faults detected
_msg    419  255  Keyboard break 44
_msg    419  256  dci_x_brtip imno=%d cam%d lo_part=%d 
_msg    419  257  Camera=%d: tip bridge inspection
_msg    419  258  Camera=%d: tip bridges measured, %d faults detected
_msg    419  259  Keyboard break 44
_msg    419  260  dci_x_spot imno=%d cam%d lo_part=%d 
_msg    419  261  Camera=%d: Spot surface inspection
_msg    419  262  Camera=%d: Spot surface measured; %d faults detected
_msg    419  263  >>>>>Illumination<<<<<
_msg    419  264  Illumination bad! Please clean the illumination, adjust the aperture etc. Press button
_msg    419  265  Keyboard break 45
_msg    419  266  dci_x_spot imno=%d cam%d lo_part=%d 
_msg    419  267  Camera=%d: Spot surface inspection
_msg    419  268  Camera=%d: Spot surface measured; %d faults detected
_msg    419  269  Keyboard break 45
_msg    419  270  dci_x_orientation imno=%d cam%d lo_part=%d 
_msg    419  271  Camera=%d: Orientation test
_msg    419  272  Camera=%d: Orientation test finished; %d faults detected
_msg    419  273  Keyboard break 45
_msg    419  274  Out of memory in downset check
_msg    419  275  dci_x_downset imno=%d cam%d lo_part=%d 
_msg    419  276  Camera=%d: DownsetChk test
_msg    419  277  Camera=%d: DownsetChk test finished; %d faults detected
_msg    419  278  Keyboard break 45
_msg    419  279  dci_x_zline imno=%d cam%d lo_part=%d 
_msg    419  280  Camera=%d: Dambar height measurement
_msg    419  281  Camera=%d: Dambar height measured; %d faults detected
_msg    419  282  Keyboard break
_msg    419  283  dci_x_contamb imno=%d cam%d lo_part=%d 
_msg    419  284  Camera=%d: Black contamination analysis
_msg    419  285  Camera=%d: Black contamination Measured; %d faults detected
_msg    419  286  Keyboard break 45
_msg    419  287  dci_x_contamw imno=%d cam%d lo_part=%d 
_msg    419  288  Camera=%d: White contamination analysis
_msg    419  289  Camera=%d: White Contamination Measured; %d faults detected
_msg    419  290  Keyboard break 45
_msg    419  292  Camera=%d: Bridge Etching Test
_msg    419  291  dci_x_bridge imno=%d cam%d lo_part=%d 
_msg    419  293  Identical rlmaskp->no
_msg    419  294  Camera=%d: Bridge Etching Measured; %d faults detected
_msg    419  295  Keyboard break 45
_msg    419  296  dci_x_sfpit imno=%d cam%d lo_part=%d 
_msg    419  297  Camera=%d: Surface pithole Test
_msg    419  298  Identical rlmaskp->no
_msg    419  299  Error in dci_setup_rlmask_erosion
_msg    419  300  Camera=%d: Surface Pits Measured; %d faults detected
_msg    419  301  Keyboard break 45
_msg    419  302  Problem: One of the pit/bridge mask boxes is inconsistent; ignore
_msg    419  304  Surface pithole Test after Correlation
_msg    419  303  Problem: One of the pit/bridge mask boxes is inconsistent; ignore
_msg    419  305  dci_x_tape1 imno=%d cam%d lo_part=%d 
_msg    419  306  dci_x_tape2 imno=%d cam%d lo_part=%d 
_msg    419  307  dci_x_tape3 imno=%d cam%d lo_part=%d 
_msg    419  308  dci_x_plating imno=%d cam%d lo_part=%d 
_msg    419  309  dci_x_plating2 imno=%d cam%d lo_part=%d 
_msg    419  310  dci_x_pinhole imno=%d cam%d lo_part=%d 
_msg    419  311  Camera=%d: Pinhole avg size measurement
_msg    419  312  Error in i_pgtorll of dci_x_pinhole
_msg    419  313  Camera=%d: Pinhole size measured; %d faults detected
_msg    419  314  Keyboard break 43
_msg    419  315  dci_x_align imno=%d cam%d lo_part=%d 
_msg    419  316  Camera=%d: Mask alignment measurement
_msg    419  317  Error in i_pgtorll of dci_x_align
_msg    419  318  Camera=%d: Mask alignment measured; %d faults detected
_msg    419  319  Keyboard break 43
_msg    419  320  Error in microspace, code=%d
_msg    419  321  Error; pin # %d is twice; please edit
_msg    419  322  Error during finger sort: can't write temp file
_msg    419  323  Error during finger sort: can't read temp file
_msg    419  324  Result plot of Lead Coplanarity Analysis
_msg    419  325  Iteration=%d: height_plate=%.1f chisum2=%.1f
_msg    419  326  Store results to ITV.CFG? (Y/N):
_msg    419  327  continue iteration
_msg    419  328  Store results and stop after this iteration

_msg    419  501  %s\7>>>>> Transport system timeout! Clear the system! \n\n\n%s
_msg    419  502  Move Tables DOWN
_msg    419  503  Can't work; Tray is OPEN !
_msg    419  504  All stacks moved to bottom position
_msg    419  505  Move Tables UP
_msg    419  506  Can't work; Tray is OPEN!
_msg    419  507  All stacks moved to top position
_msg    419  508  %s\7>>>>> Transport system timeout! Clear the system! \n\n\n%s
_msg    419  509  Warning: Paper stack EMPTY
_msg    419  510  %s\7>>>>> Transport system timeout! Clear the system! \n\n\n%s
_msg    419  511  Timeout
_msg    419  512  All boxes full/empty or insert paper in offload. Press key
_msg    419  513  All boxes full/empty; unload!
_msg    419  514  Waiting for Load Transversor .... (Pickup fail?) - <press 'c' to interrupt>
_msg    419  515  Exit load conveyor loop ... (y/n)  
_msg    419  516  Waiting for offload transversor .... (pickup fail?) - <press 'c' to interrupt>
_msg    419  517  Exit offload conveyor loop ... (y/n)  
_msg    419  518  Offload blocked; release? Y/N):
_msg    419  519  Wait load cycle to complete..
_msg    419  520  All boxes full/empty; stop
_msg    419  521  %s\7>>>>> Transport system timeout! Clear the system! \n\n\n%s
_msg    419  522  eject
_msg    419  523  Unload strip to reject ...
_msg    419  524  estop checked - ok
_msg    419  525  Pull the Emergency Stop Switch!
_msg    419  526  air pressure checked - ok
_msg    419  527  Please check your air pressure - too low   
_msg    419  528  doors closed - ok
_msg    419  529  Please check that your doors are closed   
_msg    419  530  Wait the handler to finish..(then press key  
_msg    419  531  Open the doors now and load unload the boxes ...
_msg    419  532  Aborted
_msg    419  533  Close the drawer first!
_msg    419  534  You can start again
_msg    419  535  You may safely open doors now ...
_msg    419  536  Door(s) are open ... Please close ...
_msg    419  537  Sorry you have to wait until the omron timeout is over - wait %d seconds
_msg    419  538  Door closed - don't open another door without request
_msg    419  539  There is still something running in background  ?
_msg    419  540  Do you want to reset load (L), offload (O) or both (B) counters or no (N) counters? (l/o/b/n  
_msg    419  541  You can start again
_msg    419  542  Motor %d - position restoring
_msg    419  543  Please wait until motor %d finished - or <ESC>
_msg    419  544  All motor positions are restored - ok
_msg    419  545  leave function ...
_msg    419  546  Waiting for background process %d
_msg    419  547  All background processes finished ...
_msg    419  548  heads are checked and in upper position - ok
_msg    419  549  waiting until all heads are up ... and sending new head up signal (!) - ESC for hard interruption
_msg    419  550  leave function cs_wait_heads_up ...
_msg    419  551  Motor power switched off - Escaped cs_wait_heads_up function
_msg    419  552  Wait until heads are up or press ESC to leave this waiting function
_msg    419  553  YOU CANNOT OPEN THE DRAWERS, BECAUSE THE HEADS ARE NOT ALL UP !!!!!
_msg    419  554  Open one or both drawers now ...
_msg    419  555  Close both drawers now to continue...
_msg    419  556  Load new boxes to LOAD magazines and close (key  
_msg    419  557  Unload all REJECT all FINISHED OK Boxes and close (key  
_msg    419  558  leave function ...
_msg    419  559  Open one or both drawers now ...
_msg    419  560  Close both drawers now to continue...
_msg    419  561  leave function ...
_msg    419  562  waiting until both drawers are closed ...
_msg    419  563  leave function ...
_msg    419  564  PRESS ANY KEY IF *** BOTH *** DRAWERS ARE CLOSED !
_msg    419  565  Please close the drawers and repeat
_msg    419  566  HEADS ARE NOT ALL UP, CAN'T MOVE (-> CHECK SENSORS !!!!!!) 
_msg    419  567  waiting for sensor unload_paper position or timeout (!) ...
_msg    419  568  USER INTERRUPTION WHILE WAITING FOR FINISHING BACKGROUND PROCESS 
_msg    419  569  TIMEOUT WHILE WAITING FOR FINISHING BACKGROUND PROCESS
_msg    419  570  There is no paper available for the offloaded strip ... putting without paper into reject   
_msg    419  571  No more empty reject box ... 
_msg    419  572  There is a frame on the ix_unload_pos sensor but vacuum cannot pick it (!  
_msg    419  573  There is no paper available for the offloaded strip ... putting without paper into reject (!  
_msg    419  574  waiting for sensor ix_unload_pos or timeout (!) ...
_msg    419  575  There is a frame on the ix_unload_pos sensor but vacuum cannot pick it (!  
_msg    419  577  HEADS ARE NOT ALL UP, CAN'T MOVE (-> CHECK SENSORS !!!!!!) 
_msg    419  578  waiting until move is finished ...
_msg    419  579  HEADS ARE NOT ALL UP, CAN'T MOVE (-> CHECK SENSORS !!!!!!) 
_msg    419  580  HEADS ARE NOT ALL UP, CAN'T MOVE (-> CHECK SENSORS !!!!!!) 
_msg    419  581  waiting until move is finished ...
_msg    419  583  waiting until move is finished ..._msg    419  582  HEADS ARE NOT ALL UP, CAN'T MOVE (-> CHECK SENSORS !!!!!!) 
_msg    419  584  HEADS ARE NOT ALL UP, CAN'T MOVE (-> CHECK SENSORS !!!!!!) 
_msg    419  585  waiting until move is finished ...
_msg    419  586  Open the door(s) now. Press key after doors closed.
_msg    419  587  Motors shut off; re-initialize
_msg    419  588  A door is open; please close to continue
_msg    419  589  OK; Doors are closed; system continues
_msg    419  590  Air pressure low (< 5 bar); increase to continue; press 'c' to continue
_msg    419  591  Press 'y' key, if pressure is checked and above 6 bar (!  
_msg    419  592  Air pressure is OK now; operation continued..
_msg    419  593  wait until machine stops...
_msg    419  594  You may safely open doors now ...
_msg    419  595  Door(s) are open ... Please close ...
_msg    419  596  Door closed - don't open another door one without request
_msg    419  597  MOTOR POWER SHUTDOWN! Please initialize 
_msg    419  598  Load boxes empty; reload! 
_msg    419  599  OK boxes are all full; unload! 

_msg    419  601  Strip feed
_msg    419  602  Really reset camera 0? (Y/N) 
_msg    419  603  Really reset camera 1? (Y/N)  
_msg    419  604  Really reset camera 2? (Y/N) 
_msg    419  605  Really set new L/F unit origin? (Y/N):
_msg    419  606   Press left mouse button to move XY-stage
_msg    419  607  F1: ZOOM-in ³ F2: ZOOM-out ³ press mouse button for zoomed image
_msg    419  608  Load/unload strip
_msg    419  609  Index next unit
_msg    419  610  Terminate this reel? (Y/N):
_msg    419  611  Error opening mask file report.dsp
_msg    419  612  Press any key to return to operator's menu
_msg    419  613  Error opening temporary output file report.tmp
_msg    419  614  Error opening mask file report.prn
_msg    419  615  Print report; printer selected? Active? (y/n): 
_msg    419  616  Printing report.tmp...
_msg    419  617  Really override CAM1 tolerances (Y/N)? 
_msg    419  618  Really override CAM2 tolerances (Y/N)? 
_msg    419  619  Really override CAM1 tolerances (Y/N)? 
_msg    419  620  Really override CAM2 tolerances (Y/N)? 
_msg    419  621  Changing dci_xec.x_mode\n
_msg    419  622  Changing dci_xec.x_mode2\n
_msg    419  623   scroll                             to change window  ESC to leave       
_msg    419  624  Initialization of indexer finished

_msg    419  650  REJECT boxes are all full; unload! 
_msg    419  651  All boxes full/empty or insert paper in offload. Press key
_msg    419  652  All boxes full/empty; unload!
_msg    419  653  Offload boxes are overloaded - please clear the system and reset box counters. Press key
_msg    419  654  Waiting for Load Transversor .... (Pickup fail?) - <press 'c' to interrupt>
_msg    419  655  Exit load conveyor loop ... (y/n)  
_msg    419  656  Waiting for offload transversor .... (pickup fail?) - <press 'c' to interrupt>
_msg    419  657  Exit offload conveyor loop ... (y/n)  
_msg    419  658  Offload blocked; release? Y/N):
_msg    419  659  Wait load cycle to complete..
_msg    419  660  All boxes full/empty; stop
_msg    419  661  %s\7>>>>> Transport system timeout! Clear the system! \n\n\n%s
_msg    419  662  wait until machine stops...
_msg    419  663  You may safely open doors now ...
_msg    419  664  Door(s) are open ... Please close ...
_msg    419  665  Door closed - don't open another door one without request
_msg    419  666  USER INTERRUPTION WHILE WAITING FOR FINISHING BACKGROUND PROCESS 
_msg    419  667  TIMEOUT WHILE WAITING FOR FINISHING BACKGROUND PROCESS
_msg    419  668  No more empty reject box ... 
_msg    419  669  There is a frame on the ix_unload_pos sensor but vacuum cannot pick it   
_msg    419  670  There is no paper available for the offloaded strip ... putting without paper into reject   
_msg    419  671  waiting for sensor ix_unload_pos or timeout (!) ...
_msg    419  673  Error: strip can't move out of sensor
_msg    419  674  Error: strip can't move into sensor
_msg    419  675  Problem: Incorrect Punch; check air pressure or sensors
_msg    419  676  %s\7>>>>> Transport system timeout! Clear the system! \n\n\n%s
_msg    419  677  Wait for host..
_msg    419  678  Host interface Initialized
_msg    419  679  User break->local
_msg    419  680  Error in RS495 interface: bad record >>%s<< received
_msg    419  681  results sent
_msg    419  682  General error report
_msg    419  683  Host: Eject strip OK
_msg    419  684  Host: Finished
_msg    419  685  %s\7>>>>> Transport system timeout! Clear the system! \n\n\n%s
_msg    419  686  %s\7>>>>> Transport system timeout! Clear the system! \n\n\n%s
_msg    419  687  Wait until init finished, then key
_msg    419  688  %s\7>>>>> Transport system timeout! Clear the system! \n\n\n%s
_msg    419  689  confirm download to automelec (y/n)
_msg    419  690  no download to automelec
_msg    419  691  sorry only production mode 0 or 1 allowed
_msg    419  692  download to automelec executed
_msg    419  693  error occured on PRODUCT command
_msg    419  694  error occured on PRODUCT command
_msg    419  695  error occured on UPLOAD command
_msg    419  696  %s\7>>>>> Transport system timeout! Clear the system! \n\n\n%s
_msg    419  697  Handler: Start Image Input
_msg    419  698  Key break
_msg    419  699  Wait handler START signal
_msg    419  701  Mouse bite teach; Delete existing masks? (Y/N): 
_msg    419  702  %s\7>>>>> Transport system timeout! Clear the system! \n\n\n%s
_msg    419  703  Key break
_msg    419  704  Wait handler OK/REJECT
_msg    419  705  No message from ATI
_msg    419  706  Message from ATI: %s
_msg    419  707  >>>>> Transport system timeout! Clear the system!
_msg    419  708  Magazine Wechseln! Dann eine Taste!
_msg    419  709  Weiter...
_msg    419  710  Tray table is in no definite position; -->Move LEFT NOW!
_msg    419  711  Selftest 1: Watch the lamps; press key to continue
_msg    419  712  You must see Lamp # %d burning! Key to cont
_msg    419  713  Camera # 0 (left) must be ONLINE! Key to cont
_msg    419  714  Camera # 1 (right) must be ONLINE! Key to cont
_msg    419  715  Selftest 2: Conveyor motor
_msg    419  716  Conveyor motor
_msg    419  717  Selftest 3: Transversor motor
_msg    419  718  Transversor motor
_msg    419  719  Selftest 4: Hand UP/DOWN
_msg    419  720  Hand UP
_msg    419  721  Hand DOWN
_msg    419  722  Selftest 5: Stopper UP/DOWN
_msg    419  723  Stopper UP
_msg    419  724  Stopper DOWN
_msg    419  725  Selftest 6: Lifter UP/DOWN
_msg    419  726  Lifter DOWN
_msg    419  727  Lifter UP
_msg    419  728  Selftest 7: Focus Screen UP/DOWN
_msg    419  729  Focus Screen OPEN
_msg    419  730  Focus Screen CLOSE
_msg    419  731  Selftest 8: Reject Table OPEN/CLOSE
_msg    419  732  Reject Table OPEN
_msg    419  733  Reject Table CLOSE
_msg    419  734  Selftest 9: Pass Table OPEN/CLOSE
_msg    419  735  Pass Table OPEN
_msg    419  736  Pass Table CLOSE
_msg    419  737  Selftest 10: Load Stack UP/DOWN
_msg    419  738  Load Stack DOWN"
_msg    419  739  Load Stack UP
_msg    419  740  Selftest 11: Reject Stack UP/DOWN
_msg    419  741  Reject Stack DOWN
_msg    419  742  Reject Stack UP
_msg    419  743  Selftest 12: Pass Stack
_msg    419  744  Pass Stack DOWN
_msg    419  745  Pass Stack UP
_msg    419  746  Selftest 13: Conveyor Transport System
_msg    419  747  Clear Conveyor; Remove Part
_msg    419  748  Conveyor: Feed Part; Input Sensor
_msg    419  749  Conveyor: Frame Sensor Test
_msg    419  750  Conveyor: Position Sensor Test
_msg    419  751  Conveyor: Output Sensor Test
_msg    419  752  Reject Table Sensor Test
_msg    419  753  Pass Table Sensor Test
_msg     419  801  No data

;
;	DEDIT part-ID names (application dependent)
;
_msg    420     -1      -1
_msg    420     -2      -2
_msg    420     -3      -3
_msg    420     -4      -4
_msg    420     -5      -5
_msg    420     -6      -6
_msg    420     -7      -7
_msg    420     -8      -8
_msg    420     -9      -9
_msg    420     -10     -10

_msg    420     0       0
_msg    420     1       1
_msg    420     2       2
_msg    420     3       3
_msg    420     4       4
_msg    420     5       5
_msg    420     6       6
_msg    420     7       7
_msg    420     8       8
_msg    420     9       9
_msg    420     10      10
_msg    420     11      11
_msg    420     12      12
_msg    420     13      13
_msg    420     14      14
_msg    420     15      15
_msg    420     16      16
_msg    420     17      17
_msg    420     18      18
_msg    420     19      19
_msg    420     20      20
;
_msg	421		 1	Camera 0 IXPOS: X-position finding error
_msg	421		 2	Camera 0 IXPOS: Y-position finding error
_msg	421		 3	Camera 0 IXPOS: Rotation finding error
_msg	421		 4	Camera 1 IXPOS: X-position finding error
_msg	421		 5	Camera 1 IXPOS: Y-position finding error
_msg	421		 6	Camera 1 IXPOS: Rotation finding error
_msg	421		 7	Seating plane
_msg	421		 8	Lead copla
_msg	421		 9	Lead Max copla
_msg	421		10	Standoff min
_msg	421		11	Standoff max
_msg	421		12	Standoff range
_msg	421		13	Copla best plane
_msg	421		14	Copla seating plane
_msg	421		15	Colinearity
_msg	421		16	Lead pitch
_msg	421		17	Colin top/bottom
_msg	421		18	Lead pitch t/b
_msg	421		19	Indiv lead pitch
_msg	421		20	In-tape lead colin
_msg	421		21	In-tape lead t/b colin
_msg	421		22	In-tape lead pitch
_msg	421		23	Lead tip copla
_msg	421		24	Lead tip max copla
_msg	421		25	Individual Lead tip coplanarity
_msg	421		26	Lead contact surface total integrity
_msg	421		27	Lead contact surface maximum integrity
_msg	421		28	Bond position exceed max limit
_msg	421		29	Bond position exceed min limit
_msg	421		30	Bond size too large
_msg	421		31	Bond size too small
_msg	421		32	Wire location exceed limit
_msg	421		33	Die surface
_msg	421		34	Dambar removal X pos
_msg	421		35	Dambar removal Y pos
_msg	421		36	Spot brightness
_msg	421		37	Dambar
_msg	421		38	Wire count
_msg	421		39	Lead surface
_msg	421		40	Lead surface: Max size
_msg	421		41	Lead surface: Total size
_msg	421		42	Mold surface: Max size
_msg	421		43	Mold surface: Total size
_msg	421		44	Mold edge: width
_msg	421		45	Mold edge: area
_msg	421		46	Dispense size
_msg	421		47	Dispense offset
_msg	421		48	Die chipping defect
_msg	421		49	J-lead contact point
_msg	421		50	J-lead contact point: no spot found
_msg	421		51	J-lead shift
_msg	421		52	J-lead minimum pitch defect
_msg	421		53	J-lead maximum pitch defect
_msg	421		54	Wrong hole count
_msg	421		55	Avg hole diam defect
_msg	421		56	Min hole diam defect
_msg	421		57	Max hole diam defect;
_msg	421		58	Width test fault
_msg    421     59  Alignment DX
_msg    421     60  Alignment DY
_msg    421     61  Alignment ROT
_msg    421     62  Alignment QUAL
_msg	421		63	SoftSolder Height
_msg	421		64	Mean ContourDev
_msg	421		65	Max ContourDev
_msg    421     66  AvgLeadWidthLo
_msg    421     67  AvgLeadWidthHi
_msg    421     68  PkLeadWidthLo
_msg    421     69  PkLeadWidthHi
_msg    421     70  DieSfCor
_msg    421     71	LVGAP Position
_msg    421     72  COMB darkspot count
_msg    421     73  COMB darkspot size 
_msg    421     74  COMB darkspot
_msg    421     75  COMB whitespot count
_msg    421     76  COMB whitespot size
_msg    421     77  COMB whitespot
_msg    421     78  COMB darkcell count
_msg    421     79  COMB darkcell size
_msg    421     80  COMB darkcell
_msg    421     81  COMB whitecell count
_msg    421     82  COMB whitecell size
_msg    421     83  COMB whitecell
_msg    421     84  HOLE surface largest
_msg    421     85  HOLE surface total



;       30. Jan 2003 bs: group 422 InkJet
;=================================================
;
;	 group	 id  text
_msg    422      0   Teach file %s"
_msg    422      1   Error: cannot load teach file %s
_msg    422      2   Product and teach file loaded. %d holes found
_msg    422      3   Teach file %s load finished
_msg    422      4   Error in PRO file %s: record >>> %s <<<. system stop!
_msg    422      5   Error in PRO file %s, group %s: record >>> %s <<<. system stop!
_msg    422      6   Error: no PRO file defined. stop processing
_msg    422      7   Write IJ file %s
_msg    422      8   IJ file %s write finished
_msg    422      9   Error: no IJX file name defined. stop processing
_msg    422     10   Write IJX file %s
_msg    422     11   IJX file %s write finished
_msg    422     12   obj_fx error # %d
_msg    422     13   ij_contour error
_msg    422     14   ij_flats error
_msg    422     15   Timeout during initialization; abort
_msg    422     16   Initialization finished
_msg    422     17   Initialize Table; %.1f sec
_msg    422     18   Reference measurement # %d, retry=%d
_msg    422     19   XY Table is initialized. wait...
_msg    422     20   Index to subunit su_x=%d su_y=%d, pilot=%d Unit x=%d y=%d total=%d of total=%d
_msg    422     21   Move pos=%d (of %d), status=%d
_msg    422     22   Error: Interface Power Off! Connect Cable!! %d
_msg    422     23   Waiting for next START signal %d...
_msg    422     24   Product loading. Wait COM2 download %d...
_msg    422     25   Product loaded
_msg    422     26   Product name %s does not exist. abort.
_msg    422     27   Measure next sheet %d
_msg    422     28   Black image; autofocus not possible
_msg    422     29   Brightness=%d; Focus=%d. OK
_msg    422     30   Focus value is: %d. Too low. Execute autofocus now
_msg    422     31   Image far out of focus; execute linear raw autofocus first..
_msg    422     32   Iteration %d: Focus value is: %d (threshold is %.1f)
_msg    422     33   Execute gradient autofocus now
_msg    422     34   Iteration %d: Focus value is: %d (threshold is %.1f)
_msg    422     35   Error in ij_genflash
_msg    422     36   Error: no cluster defined
_msg    422     37   Error in st_holes_mess
;
;       30. Jan 2003 bs: group 423 IVO
;=================================================
;
;	 group	 id  text
_msg    423      0   SvecTeachOnline error
_msg    423      1   Bad device; no laser!
_msg    423      2   Warten bis der Schmauch vergeht...
_msg    423      3   Laser writing pass# %d
_msg    423      4   Calibration accepted
_msg    423      5   Keep old values
_msg    423      6   Error in calibration: aborted
_msg    423      7   Tooth # %d is protected; keep contour
_msg    423      8   Error SVEC autoteach vector snap
_msg    423      9   Start grabbing all images all devices on the current plate...
_msg    423     10   Error during Image grabbing; ecostep indexer not oparable. abort
_msg    423     11   obj_fx error # %d
_msg    423     12   Chain is calculated
_msg    423     13   Chain is written red with chain_ch_draw
_msg    423     14   xy pixel contour is written in pickcol
_msg    423     15   sub pixel contour finished
_msg    423     16   Make distortions into contour
_msg    423     17   Low pass filter contour finished
_msg    423     18   Interpolation of contour finished
_msg    423     19   Dilatation of contour finished
_msg    423     20   Camera tilt correction of contour finished
_msg    423     21   Camera Z correction of contour finished
_msg    423     22   Eject the table: move down and place on rotary
_msg    423     23   Load a new table to laser position
_msg    423     24   Move table to position %d
_msg    423     25   Problem: Weiss Tisch nicht in Position. Abbruch Homing!
_msg    423     26   CAN bus write error
_msg    423     27   Homing sync %d..
_msg    423     28   Home of LIFT complete
_msg    423     29   CAN bus write error
_msg    423     30   ROT Homing sync %d..
_msg    423     31   Home of TURN complete
_msg    423     32   ROT 2ND Homing sync %d..
_msg    423     33   Home of TURN complete
_msg    423     34   Homing sync %d..
_msg    423     35   Home of LIFT complete
_msg    423     36   Problem: Weiss Tisch nicht in Position. Abbruch Homing!
_msg    423     37   Power enabled
_msg    423     38   Power disabled
_msg    423     39   Problem: Weiss Tisch nicht in Position. Abbruch Index!
_msg    423     40   ivo_sync: wait ecostep # %d
_msg    423     41   Transponder read error; empty table
_msg    423     42   No transponder code; cannot start; abort the laser cycle
_msg    423     43   Automatische Kalibrierung
_msg    423     44   Wait to finish index cycle
_msg    423     45   Transponder waiting... %d
_msg    423     46   TransCode#%d: %s
_msg    423     47   Transponder waiting... %d
_msg    423     48   Error in shape_measure

_msg    424      1   Camera=%d: Tissue inspection...
_msg    424      2	 Tissue inspection finished; %d errors detected
_msg    424      3   ERROR in tissue inspection

_msg    426     18  Error! 
_msg    426     19  Double software start \n Or Strobe Illumination does not work!  

_msg     998    10      Enter contour with excluding areas.
_msg     998    11      Cluster test failed

_msg     2000    2   ESC pressed
_msg     2000    3   fast load stack
_msg     2000    4   toggle online statistic
_msg     2000    5   display selected images
_msg     2000    6   display NO images
_msg     2000    7   display all images
_msg     2000    8   Autostop
_msg     2000    9   NO STOP hit any key
_msg     2000   10   scroll up
_msg     2000   11   scroll down
_msg     2000   12   automelec Stand-by, ready to produce
_msg     2000   13   automelec in manual mode
_msg     2000   14   automelec AUTOmatic production running
_msg     2000   15   automelec AUTOmatic production in END mode running
_msg     2000   16   automelec change of product running
_msg     2000   17   automelec teaching running
_msg     2000   18   Press PANIC and then CONT on AUTOMELEC terminal and try again
_msg	 2000   20   Pass:   %5d units
_msg	 2000   21   Reject: %5d units
_msg	 2000   22   Yield:%3d%% Total:%5d units
_msg	 2000   23   LF2 frame=%5d  phase=%2d  camera=%1d                             Hit ESC to break
_msg	 2000   24   Pass:   %5d strips
_msg	 2000   25   Reject: %5d strips
_msg	 2000   26   Yield:%3d%% Total:%5d strips
_msg     2000   27   Enter Your Password
_msg     2000   28   Invalid password; retry (max 3 retries)
_msg     2000   29   Sorry; permission denied
_msg     2000   30   Stop after every cycle
_msg     2000   31   Focus table error: check air or sensor(s); press any key

_msg	 2001    1   LeadSpacing
_msg	 2001    2   LeadWidth
_msg	 2001    3   ExtLeadSpacing
_msg	 2001    4   LeadPadSpacing
_msg	 2001    5   TapeLeft
_msg	 2001    6   TapeRight
_msg	 2001    7   TapeTop
_msg	 2001    8   TapeBottom
_msg	 2001    9   Coplanarity
_msg	 2001   10   Planarity
_msg	 2001   11   Downset
_msg	 2001   12   PlatingPos
_msg	 2001   13   PlatingSize
_msg	 2001   14   PadSfPits
_msg	 2001   15   PadSfContam
_msg	 2001   16   CoiningPos
_msg	 2001   17   LeadSurface
_msg	 2001   18   LeadSfGrad
_msg	 2001   19   Spots
_msg	 2001   20   BridgeCnt
_msg	 2001   21   BridgeArea
_msg	 2001   22   TipBridges
_msg	 2001   23   PitCnt
_msg	 2001   24   PitArea
_msg	 2001   25   Fins
_msg	 2001   26   LeadPosition
_msg	 2001   27   vba0
_msg	 2001   28   vba1
_msg	 2001   29   vba2
_msg	 2001   30   vba3
_msg	 2001   31   vba4
_msg	 2001   32   vba5
_msg	 2001   33   vba6
_msg	 2001   34   vba7

;      20.07.94 kw: group 2010 for dedit messages
;==========================================================================
;
;	 group	 id  text
_msg	 2010    1   INPUT part=%d³F1:inp³F2:Pick³F3:Prv- F4:Nxt-Part³F5:Dim³F6:Zoom³END³ESC
_msg	 2010    2   PICK | F1:inp³F2:Pick³F3:Unpk³F4:BoxP³F5:Mv³F6:Ed³F7:Cp³F8:Del³F9:Snap³F10:Attr³END³ESC
_msg	 2010    3   Enter pick box
_msg	 2010    4   >>>>> Incorrect check
_msg	 2010    5   MOVE mode: F1:Rotate F2:Zoom F3:Aspect_Ratio F4:Mirror Position END
_msg	 2010    6   COPY mode: F1:Rotate F2:Zoom F3:Aspect_Ratio F4:Mirror Position END
_msg	 2010    7   ATTRIB: F1:width F2:spacing F3/F4:renumber clock/ctrclock F5:BRTIP F6:SfLead END
_msg	 2010    8   EDIT mode: Use left button to replace rubber point, or END-key
_msg	 2010    9   Enter 3 lines for finger tip
_msg	 2010   10   Enter 2 lines for tie_bar, ext. or general leads
_msg	 2010   11   You must enter three lines: one per side
_msg	 2010   12   You must enter two lines: one per side
_msg	 2010   13   Enter position on back of finger
_msg	 2010   14   Automatic last point
_msg	 2010   15   Error: this pin is not OK
_msg	 2010   16   Enter 4 .. 8 lines for pad contour, every side
_msg	 2010   17   You must enter one line per side min; repeat!
_msg	 2010   18   Error: this die pad is not OK 
_msg	 2010   19   Enter vector(s)
_msg	 2010   20   Insufficient input
_msg	 2010   21   Enter spot position & size
_msg	 2010   22   Enter line (max. 10 points)   
_msg	 2010   23   Enter box for bridge etching operation
_msg	 2010   24   Automode = %d , Finger, Tie_Bar, eXternal, General Lead or ESC
_msg	 2010   25   EDIT rlmask ³ F1-enter tolerance index ³ ESC-Cancel
_msg	 2010   26   Enter tolerance index [0..5]:
_msg	 2010   27   tolerance index =  %d
_msg 	 2010   28   Init
_msg     2010   29   Error %d in dedit surface
_msg     2010   30   move to start position
_msg     2010   31   Problem in lsc_mskx(): ID=%d of LSC.MSK unknown
_msg     2010   32   Result of MBITE inspection: %d defect pixel; xyoff=%d %d 
_msg     2010   33   ia_segrlb error
_msg     2010   34   ia_segrlb/w error
_msg     2010   35   Error: rlmask ID=%d imrll=%d RLL-mask unknown
_msg     2010   36   Surface pithole Test after Correlation
_msg     2010   37   Error: rlmask ID=%d imrll=%d RLL-mask unknown
_msg     2010   38   Surface pithole Test after Correlation
_msg     2010   39   Problem: One of the pit/bridge mask boxes is inconsistent; ignore
_msg     2010   40   Region 0/1/2/3/4/5, or Cancel region, or ESC
_msg     2010   41   Draw cancel region
_msg     2010   42   Pattern too large; skip rest..
_msg     2010   43   Input finished; system calculates pattern...
_msg     2010   50   Pit tolerance region 0
_msg     2010   51   Pit tolerance region 1
_msg     2010   52   Pit tolerance region 2
_msg     2010   53   Pit tolerance region 3
_msg     2010   54   Pit tolerance region 4
_msg     2010   55   Pit tolerance region 5

_msg     2010  100   LeadSpace
_msg     2010  101   LeadWidth
_msg     2010  102   LeadPos
_msg     2010  103   ExtLeadSpace
_msg     2010  104   Bridging
_msg     2010  105   BridgeArea
_msg     2010  106   LeadTipBridging
_msg     2010  107   LeadPad
_msg     2010  108   LeadCoinPos
_msg     2010  109   Tape_left
_msg     2010  110   Tape_right
_msg     2010  111   Tape_top
_msg     2010  112   Tape_bottom
_msg     2010  113   Plating_l/r
_msg     2010  114   Plating_t/b
_msg     2010  115   Pad_Sf_ofst
_msg     2010  116   Pad_Sf_size
_msg     2010  117   Pad_Sf_wdth
_msg     2010  118   LeadSurfaceGrad
_msg     2010  119   LeadSurfaceTot
_msg     2010  120   SpotSurface
_msg     2010  121   PitCount
_msg     2010  122   PitDiameter
_msg     2010  123   Pinhole
_msg     2010  124   Planarity
_msg     2010  125   Downset
_msg     2010  126   Coplanarity
_msg     2010  127   Fin
_msg     2010  128   Contam_blk_ofst
_msg     2010  129   Contam_blk_size
_msg     2010  130   Contam_blk_wdth
_msg     2010  131   Contam_wht_ofst
_msg     2010  132   Contam_wht_size
_msg     2010  133   Contam_wht_wdth
_msg     2010  134   vba0
_msg     2010  135   vba1
_msg     2010  136   vba2
_msg     2010  137   vba3
_msg     2010  138   vba4
_msg     2010  139   vba5
_msg     2010  140   vba6
_msg     2010  141   vba7
_msg     2010  142   vba8
_msg     2010  143   vba9
_msg     2010  144   vba10
_msg     2010  145   vba11
_msg     2010  146   vba12
_msg     2010  147   vba13
_msg     2010  148   vba14
_msg     2010  149   vba15
_msg     2010  150   vba16
_msg     2010  151   vba17
_msg     2010  152   vba18
_msg     2010  153   vba19
_msg     2010  154   Orientation
_msg     2010  155   DownsetChk
_msg     2010  156   PPH

_msg    2010  201  Error %d exit
_msg    2010  202  Select any menu for input or edit
_msg    2010  203  Select any menu for input or edit
_msg    2010  204  Select any menu for input or edit
_msg    2010  205  LEFT button: pick | RIGHT button: unpick
_msg    2010  206  Pick only one object for multiple copy
_msg    2010  207  CUT selected objects into paste buffer
_msg    2010  208  PASTE: insert selected objects from paste buffer
_msg    2010  209  Select any menu for input or edit
_msg    2010  210  LEFT button: move | RIGHT button: end
_msg    2010  211  Enter angle [degrees]:
_msg    2010  212  Enter zoom factor:
_msg    2010  213  Enter ratio (Y/X):
_msg    2010  214  Enter number of interpolated copies:
_msg    2010  215  DELETE all picked objects (Y/N)?
_msg    2010  216  Cancelled
_msg    2010  217  Lead # %d has been deleted
_msg    2010  218  Enter additional spacing:
_msg    2010  219  Enter pin number:
_msg    2010  220  BRTIP Tip bridging: F1:Set F2:Reset tip bridging  END/ESC:quit
_msg    2010  221  SFLEAD Lead Surface: F1:Set F2:Reset measurement  END/ESC:quit
_msg    2010  222  Change part#; from %d to (%d .. %d):
_msg    2010  223  PROBLEM: Pad # %d is out of image; delete?
_msg    2010  224  pad # %d has been deleted
_msg    2010  225  Disabled from coplanarity
_msg    2010  226  No copla
_msg    2010  227  Copla active
_msg    2010  228  Invalid
_msg    2010  229  This lead is for copla reference height
_msg    2010  231  COPL set (on selected leads): F1:Disable  F2:Enable  F3:Set as reference  END
_msg    2010  232  <E>poxy, <R>eference or <ESC>ape
_msg    2010  233  Out of memory: Too many masks; ignore
_msg    2010  234  Out of memory; ignore
_msg    2010  235  Left:Set nearest pixel; Right:Reset nearest pixel; End: Terminate correction
_msg    2010  236  Delete this section? (y/n): 
_msg    2010  237  obobinit: buffer limit exceeded; skip
_msg    2010  238  Draw 2 points CUT vector
_msg    2010  239  Enter box for objekt measurement
_msg    2010  240  no further box available

_msg     2011    0   bridging
_msg     2011    1   pit
_msg     2011    2   contamBlk
_msg     2011    3   contamWhite
_msg     2011    4   Dimples

;							3000: Handler module 0 error messages
_msg     3000    0   Weiss error 24
_msg     3000    1   Weiss error 25
_msg     3000    2   Weiss error 26
_msg     3000    3   Weiss error 27
_msg     3000    4   Weiss error 28
_msg     3000    5   Weiss error 29
_msg     3000    6   Weiss error 30
_msg     3000    7   Weiss error 31
_msg     3000    8   Weiss error 16
_msg     3000    9   Weiss error 17
_msg     3000   10   Weiss error 18
_msg     3000   11   Weiss error 19
_msg     3000   12   Weiss error 20
_msg     3000   13   Weiss error 21
_msg     3000   14   Weiss error 22
_msg     3000   15   Weiss error 23
_msg     3000   16   Weiss error 8
_msg     3000   17   Weiss error 9
_msg     3000   18   Weiss error 10
_msg     3000   19   Weiss error 11
_msg     3000   20   Weiss error 12
_msg     3000   21   Weiss error 13
_msg     3000   22   Weiss error 14
_msg     3000   23   Weiss error 15
_msg     3000   24   Weiss error 0
_msg     3000   25   Weiss error 1
_msg     3000   26   Weiss error 2
_msg     3000   27   Weiss error 3
_msg     3000   28   Weiss error 4
_msg     3000   29   Weiss error 5
_msg     3000   30   Weiss error 6
_msg     3000   31   Weiss error 7
;
;							3001: Handler module 1 error messages
_msg     3001    0   Oyster Feeder error 0
_msg     3001    1   Oyster Feeder error 1
_msg     3001    2   Oyster Feeder error 2
_msg     3001    3   Oyster Feeder error 3
_msg     3001    4   Oyster Feeder error 4
_msg     3001    5   Oyster Feeder error 5
_msg     3001    6   Oyster Feeder error 6
_msg     3001    7   Oyster Feeder error 7
_msg     3001    8   Oyster Feeder error 8
_msg     3001    9   Oyster Feeder error 9
_msg     3001   10   Oyster Feeder error 10
_msg     3001   11   Oyster Feeder error 11
_msg     3001   12   Oyster Feeder error 12
_msg     3001   13   Oyster Feeder error 13
_msg     3001   14   Oyster Feeder error 14
_msg     3001   15   Oyster Feeder error 15
_msg     3001   16   Oyster Feeder error 16
_msg     3001   17   Oyster Feeder error 17
_msg     3001   18   Oyster Feeder error 18
_msg     3001   19   Oyster Feeder error 19
_msg     3001   20   Oyster Feeder error 20
_msg     3001   21   Oyster Feeder error 21
_msg     3001   22   Oyster Feeder error 22
_msg     3001   23   Oyster Feeder error 23
_msg     3001   24   Oyster Feeder error 24
_msg     3001   25   Oyster Feeder error 25
_msg     3001   26   Oyster Feeder error 26
_msg     3001   27   Oyster Feeder error 27
_msg     3001   28   Oyster Feeder error 28
_msg     3001   29   Oyster Feeder error 29
_msg     3001   30   Oyster Feeder error 30
_msg     3001   31   Oyster Feeder error 31
;							3002: Handler module 2
_msg     3002    0   Jubilee Feeder error 0
_msg     3002    1   Jubilee Feeder error 1
_msg     3002    2   Jubilee Feeder error 2
_msg     3002    3   Jubilee Feeder error 3
_msg     3002    4   Jubilee Feeder error 4
_msg     3002    5   Jubilee Feeder error 5
_msg     3002    6   Jubilee Feeder error 6
_msg     3002    7   Jubilee Feeder error 7
_msg     3002    8   Jubilee Feeder error 8
_msg     3002    9   Jubilee Feeder error 9
_msg     3002   10   Jubilee Feeder error 10
_msg     3002   11   Jubilee Feeder error 11
_msg     3002   12   Jubilee Feeder error 12
_msg     3002   13   Jubilee Feeder error 13
_msg     3002   14   Jubilee Feeder error 14
_msg     3002   15   Jubilee Feeder error 15
_msg     3002   16   Jubilee Feeder error 16
_msg     3002   17   Jubilee Feeder error 17
_msg     3002   18   Jubilee Feeder error 18
_msg     3002   19   Jubilee Feeder error 19
_msg     3002   20   Jubilee Feeder error 20
_msg     3002   21   Jubilee Feeder error 21
_msg     3002   22   Jubilee Feeder error 22
_msg     3002   23   Jubilee Feeder error 23
_msg     3002   24   Jubilee Feeder error 24
_msg     3002   25   Jubilee Feeder error 25
_msg     3002   26   Jubilee Feeder error 26
_msg     3002   27   Jubilee Feeder error 27
_msg     3002   28   Jubilee Feeder error 28
_msg     3002   29   Jubilee Feeder error 29
_msg     3002   30   Jubilee Feeder error 30
_msg     3002   31   Jubilee Feeder error 31
;							3003: Handler module 3
_msg     3003    0   Unused module error 0
_msg     3003    1   Unused module error 1
_msg     3003    2   Unused module error 2
_msg     3003    3   Unused module error 3
_msg     3003    4   Unused module error 4
_msg     3003    5   Unused module error 5
_msg     3003    6   Unused module error 6
_msg     3003    7   Unused module error 7
_msg     3003    8   Unused module error 8
_msg     3003    9   Unused module error 9
_msg     3003   10   Unused module error 10
_msg     3003   11   Unused module error 11
_msg     3003   12   Unused module error 12
_msg     3003   13   Unused module error 13
_msg     3003   14   Unused module error 14
_msg     3003   15   Unused module error 15
_msg     3003   16   Unused module error 16
_msg     3003   17   Unused module error 17
_msg     3003   18   Unused module error 18
_msg     3003   19   Unused module error 19
_msg     3003   20   Unused module error 20
_msg     3003   21   Unused module error 21
_msg     3003   22   Unused module error 22
_msg     3003   23   Unused module error 23
_msg     3003   24   Unused module error 24
_msg     3003   25   Unused module error 25
_msg     3003   26   Unused module error 26
_msg     3003   27   Unused module error 27
_msg     3003   28   Unused module error 28
_msg     3003   29   Unused module error 29
_msg     3003   30   Unused module error 30
_msg     3003   31   Unused module error 31
;							3004: Handler module 4
_msg     3004    0   Dispenser error 24
_msg     3004    1   Dispenser error 25
_msg     3004    2   Dispenser error 26
_msg     3004    3   Dispenser error 27
_msg     3004    4   Dispenser error 28
_msg     3004    5   Dispenser error 29
_msg     3004    6   Dispenser error 30
_msg     3004    7   Dispenser error 31
_msg     3004    8   Dispenser error 16
_msg     3004    9   Dispenser error 17
_msg     3004   10   Dispenser error 18
_msg     3004   11   Dispenser error 19
_msg     3004   12   Dispenser error 20
_msg     3004   13   Dispenser error 21
_msg     3004   14   Dispenser error 22
_msg     3004   15   Dispenser error 23
_msg     3004   16   Dispenser error 8
_msg     3004   17   Dispenser error 9
_msg     3004   18   Dispenser error 10
_msg     3004   19   Dispenser error 11
_msg     3004   20   Dispenser error 12
_msg     3004   21   Dispenser error 13
_msg     3004   22   Dispenser error 14
_msg     3004   23   Dispenser error 15
_msg     3004   24   Dispenser error 0
_msg     3004   25   Dispenser error 1
_msg     3004   26   Dispenser error 2
_msg     3004   27   Dispenser error 3
_msg     3004   28   Dispenser error 4
_msg     3004   29   Dispenser error 5
_msg     3004   30   Dispenser error 6
_msg     3004   31   Dispenser error 7

;							3005: Handler module 5
_msg     3005    0   Screwer-1 error 0
_msg     3005    1   Screwer-1 error 1
_msg     3005    2   Screwer-1 error 2
_msg     3005    3   Screwer-1 error 3
_msg     3005    4   Screwer-1 error 4
_msg     3005    5   Screwer-1 error 5
_msg     3005    6   Screwer-1 error 6
_msg     3005    7   Screwer-1 error 7
_msg     3005    8   Screwer-1 error 8
_msg     3005    9   Screwer-1 error 9
_msg     3005   10   Screwer-1 error 10
_msg     3005   11   Screwer-1 error 11
_msg     3005   12   Screwer-1 error 12
_msg     3005   13   Screwer-1 error 13
_msg     3005   14   Screwer-1 error 14
_msg     3005   15   Screwer-1 error 15
_msg     3005   16   Screwer-1 error 16
_msg     3005   17   Screwer-1 error 17
_msg     3005   18   Screwer-1 error 18
_msg     3005   19   Screwer-1 error 19
_msg     3005   20   Screwer-1 error 20
_msg     3005   21   Screwer-1 error 21
_msg     3005   22   Screwer-1 error 22
_msg     3005   23   Screwer-1 error 23
_msg     3005   24   Screwer-1 error 24
_msg     3005   25   Screwer-1 error 25
_msg     3005   26   Screwer-1 error 26
_msg     3005   27   Screwer-1 error 27
_msg     3005   28   Screwer-1 error 28
_msg     3005   29   Screwer-1 error 29
_msg     3005   30   Screwer-1 error 30
_msg     3005   31   Screwer-1 error 31
;							3006: Handler module 6
_msg     3006    0   Screwer-2 error 0
_msg     3006    1   Screwer-2 error 1
_msg     3006    2   Screwer-2 error 2
_msg     3006    3   Screwer-2 error 3
_msg     3006    4   Screwer-2 error 4
_msg     3006    5   Screwer-2 error 5
_msg     3006    6   Screwer-2 error 6
_msg     3006    7   Screwer-2 error 7
_msg     3006    8   Screwer-2 error 8
_msg     3006    9   Screwer-2 error 9
_msg     3006   10   Screwer-2 error 10
_msg     3006   11   Screwer-2 error 11
_msg     3006   12   Screwer-2 error 12
_msg     3006   13   Screwer-2 error 13
_msg     3006   14   Screwer-2 error 14
_msg     3006   15   Screwer-2 error 15
_msg     3006   16   Screwer-2 error 16
_msg     3006   17   Screwer-2 error 17
_msg     3006   18   Screwer-2 error 18
_msg     3006   19   Screwer-2 error 19
_msg     3006   20   Screwer-2 error 20
_msg     3006   21   Screwer-2 error 21
_msg     3006   22   Screwer-2 error 22
_msg     3006   23   Screwer-2 error 23
_msg     3006   24   Screwer-2 error 24
_msg     3006   25   Screwer-2 error 25
_msg     3006   26   Screwer-2 error 26
_msg     3006   27   Screwer-2 error 27
_msg     3006   28   Screwer-2 error 28
_msg     3006   29   Screwer-2 error 29
_msg     3006   30   Screwer-2 error 30
_msg     3006   31   Screwer-2 error 31
;							3007: Handler module 7
_msg     3007    0   Height control error 0
_msg     3007    1   Height control error 1
_msg     3007    2   Height control error 2
_msg     3007    3   Height control error 3
_msg     3007    4   Height control error 4
_msg     3007    5   Height control error 5
_msg     3007    6   Height control error 6
_msg     3007    7   Height control error 7
_msg     3007    8   Height control error 8
_msg     3007    9   Height control error 9
_msg     3007   10   Height control error 10
_msg     3007   11   Height control error 11
_msg     3007   12   Height control error 12
_msg     3007   13   Height control error 13
_msg     3007   14   Height control error 14
_msg     3007   15   Height control error 15
_msg     3007   16   Height control error 16
_msg     3007   17   Height control error 17
_msg     3007   18   Height control error 18
_msg     3007   19   Height control error 19
_msg     3007   20   Height control error 20
_msg     3007   21   Height control error 21
_msg     3007   22   Height control error 22
_msg     3007   23   Height control error 23
_msg     3007   24   Height control error 24
_msg     3007   25   Height control error 25
_msg     3007   26   Height control error 26
_msg     3007   27   Height control error 27
_msg     3007   28   Height control error 28
_msg     3007   29   Height control error 29
_msg     3007   30   Height control error 30
_msg     3007   31   Height control error 31
;							3008: Handler module 8
_msg     3008    0   Unloader error 0
_msg     3008    1   Unloader error 1
_msg     3008    2   Unloader error 2
_msg     3008    3   Unloader error 3
_msg     3008    4   Unloader error 4
_msg     3008    5   Unloader error 5
_msg     3008    6   Unloader error 6
_msg     3008    7   Unloader error 7
_msg     3008    8   Unloader error 8
_msg     3008    9   Unloader error 9
_msg     3008   10   Unloader error 10
_msg     3008   11   Unloader error 11
_msg     3008   12   Unloader error 12
_msg     3008   13   Unloader error 13
_msg     3008   14   Unloader error 14
_msg     3008   15   Unloader error 15
_msg     3008   16   Unloader error 16
_msg     3008   17   Unloader error 17
_msg     3008   18   Unloader error 18
_msg     3008   19   Unloader error 19
_msg     3008   20   Unloader error 20
_msg     3008   21   Unloader error 21
_msg     3008   22   Unloader error 22
_msg     3008   23   Unloader error 23
_msg     3008   24   Unloader error 24
_msg     3008   25   Unloader error 25
_msg     3008   26   Unloader error 26
_msg     3008   27   Unloader error 27
_msg     3008   28   Unloader error 28
_msg     3008   29   Unloader error 29
_msg     3008   30   Unloader error 30
_msg     3008   31   Unloader error 31
;							3009: Handler module 9
_msg     3009    0   SyncModul error 0
_msg     3009    1   SyncModul error 1
_msg     3009    2   SyncModul error 2
_msg     3009    3   SyncModul error 3
_msg     3009    4   SyncModul error 4
_msg     3009    5   SyncModul error 5
_msg     3009    6   SyncModul error 6
_msg     3009    7   SyncModul error 7
_msg     3009    8   SyncModul error 8
_msg     3009    9   SyncModul error 9
_msg     3009   10   SyncModul error 10
_msg     3009   11   SyncModul error 11
_msg     3009   12   SyncModul error 12
_msg     3009   13   SyncModul error 13
_msg     3009   14   SyncModul error 14
_msg     3009   15   SyncModul error 15
_msg     3009   16   SyncModul error 16
_msg     3009   17   SyncModul error 17
_msg     3009   18   SyncModul error 18
_msg     3009   19   SyncModul error 19
_msg     3009   20   SyncModul error 20
_msg     3009   21   SyncModul error 21
_msg     3009   22   SyncModul error 22
_msg     3009   23   SyncModul error 23
_msg     3009   24   SyncModul error 24
_msg     3009   25   SyncModul error 25
_msg     3009   26   SyncModul error 26
_msg     3009   27   SyncModul error 27
_msg     3009   28   SyncModul error 28
_msg     3009   29   SyncModul error 29
_msg     3009   30   SyncModul error 30
_msg     3009   31   SyncModul error 31
;							3010: Handler module 10
_msg     3010    0   eror3010-0

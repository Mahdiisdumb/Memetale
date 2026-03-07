.localvar 0 arguments
.localvar 1 lang 9592
.localvar 2 sb_i 9593
.localvar 3 b0_i 9594
.localvar 4 b1_i 9595
.localvar 5 b2_i 9596
.localvar 6 as_i 9597
.localvar 7 jd_i 9598
.localvar 8 analog_sense 9599
.localvar 9 j_xpos 9604
.localvar 10 j_ypos 9605
.localvar 11 angle 9606
.localvar 12 now_idle 9608

:[0]
push.v self.started
pushi.e 0
cmp.i.v LTE
bf [49]

:[1]
pushglb.v global.savedata_async_id
pushi.e 0
cmp.i.v GTE
bf [3]

:[2]
exit.i

:[3]
pushi.e -1
pop.v.i self.started
call.i trophy_init(argc=0)
conv.v.b
not.b
bf [7]

:[4]
push.v self.trophy_ts
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
pushbltn.v self.current_time
pop.v.v self.trophy_ts

:[6]
exit.i

:[7]
push.s "config.ini"@47633
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
push.s ""@36
conv.s.v
push.s "lang"@47678
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v local.lang
pushi.e -1
conv.i.v
push.s "sb"@47680
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.sb_i
pushi.e -1
conv.i.v
push.s "b0"@47634
conv.s.v
push.s "joypad1"@47635
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.b0_i
pushi.e -1
conv.i.v
push.s "b1"@47636
conv.s.v
push.s "joypad1"@47635
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.b1_i
pushi.e -1
conv.i.v
push.s "b2"@47637
conv.s.v
push.s "joypad1"@47635
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.b2_i
pushi.e -1
conv.i.v
push.s "as"@47639
conv.s.v
push.s "joypad1"@47635
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.as_i
pushi.e -1
conv.i.v
push.s "jd"@47641
conv.s.v
push.s "joypad1"@47635
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.jd_i
pushloc.v local.lang
call.i string_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
pushloc.v local.lang
pop.v.v global.language

:[9]
pushloc.v local.sb_i
pushi.e 0
cmp.i.v GTE
bf [11]

:[10]
pushloc.v local.sb_i
pop.v.v global.screen_border_id

:[11]
pushloc.v local.b0_i
pushi.e 0
cmp.i.v GTE
bf [13]

:[12]
pushloc.v local.b0_i
pop.v.v global.button0

:[13]
pushloc.v local.b1_i
pushi.e 0
cmp.i.v GTE
bf [15]

:[14]
pushloc.v local.b1_i
pop.v.v global.button1

:[15]
pushloc.v local.b2_i
pushi.e 0
cmp.i.v GTE
bf [17]

:[16]
pushloc.v local.b2_i
pop.v.v global.button2

:[17]
pushloc.v local.as_i
pushi.e 0
cmp.i.v GTE
bf [19]

:[18]
pushloc.v local.as_i
pop.v.v global.analog_sense

:[19]
pushloc.v local.jd_i
pushi.e 0
cmp.i.v GTE
bf [21]

:[20]
pushloc.v local.jd_i
pop.v.v global.joy_dir

:[21]
call.i ossafe_ini_close(argc=0)
popz.v
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
conv.b.v
call.i scr_enable_screen_border(argc=1)
popz.v
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
bf [25]

:[22]
push.d 0.15
pop.v.d global.analog_sense
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [24]

:[23]
push.d 0.9
pop.v.d global.analog_sense

:[24]
pushi.e 0
pop.v.i global.joy_dir

:[25]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e -1
conv.i.v
push.s "E"@47762
conv.s.v
push.s "FFFFF"@47763
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.fskip
pushi.e -1
conv.i.v
push.s "F"@47599
conv.s.v
push.s "FFFFF"@47763
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.ftime
pushi.e -1
conv.i.v
push.s "EndF"@47578
conv.s.v
push.s "EndF"@47578
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.true_end
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 0
pop.v.i self.sksk
push.v self.ftime
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
pushi.e 1
pop.v.i self.sksk
pushi.e 290
conv.i.v
call.i room_goto(argc=1)
popz.v

:[27]
push.v self.true_end
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
push.v self.sksk
pushi.e 0
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushi.e 1
pop.v.i self.sksk
pushi.e 320
conv.i.v
call.i room_goto(argc=1)
popz.v

:[32]
push.v self.fskip
pushi.e 1
cmp.i.v GTE
bf [34]

:[33]
push.v self.sksk
pushi.e 0
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [41]

:[36]
pushi.e 8
pop.v.i global.filechoice
call.i scr_load(argc=0)
popz.v
push.v self.fskip
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
pushi.e 319
conv.i.v
call.i room_goto(argc=1)
popz.v

:[38]
push.v self.fskip
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushi.e 238
conv.i.v
call.i room_goto(argc=1)
popz.v

:[40]
b [43]

:[41]
push.v self.sksk
pushi.e 0
cmp.i.v EQ
bf [43]

:[42]
call.i room_goto_next(argc=0)
popz.v

:[43]
push.s "system_information_962"@3398
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [45]

:[44]
push.s "system_information_963"@3403
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
not.b
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 324
conv.i.v
call.i room_goto(argc=1)
popz.v

:[48]
pushi.e 1
pop.v.i self.started
exit.i

:[49]
push.v self.paused
conv.v.b
not.b
bf [51]

:[50]
push.v self.time
pushi.e 1
add.i.v
pop.v.v self.time

:[51]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [66]

:[52]
push.v self.jt
pushi.e 0
cmp.i.v EQ
bf [58]

:[53]
push.v self.j_ch
pushi.e 2
cmp.i.v NEQ
bf [58]

:[54]
pushi.e 1
conv.i.v
call.i joystick_exists(argc=1)
conv.v.b
bf [56]

:[55]
pushi.e 1
pop.v.i self.j_ch
b [58]

:[56]
push.v self.j_ch
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
pushi.e 0
pop.v.i self.j_ch

:[58]
push.v self.jt
pushi.e 4
cmp.i.v EQ
bf [64]

:[59]
push.v self.j_ch
pushi.e 1
cmp.i.v NEQ
bf [64]

:[60]
pushi.e 2
conv.i.v
call.i joystick_exists(argc=1)
conv.v.b
bf [62]

:[61]
pushi.e 2
pop.v.i self.j_ch
b [64]

:[62]
push.v self.j_ch
pushi.e 2
cmp.i.v EQ
bf [64]

:[63]
pushi.e 0
pop.v.i self.j_ch

:[64]
push.v self.jt
pushi.e 1
add.i.v
pop.v.v self.jt
push.v self.jt
pushi.e 8
cmp.i.v GTE
bf [66]

:[65]
pushi.e 0
pop.v.i self.jt

:[66]
call.i control_update(argc=0)
popz.v
push.v self.j_ch
pushi.e 0
cmp.i.v GT
bf [195]

:[67]
push.v self.j_fr
pop.v.v self.j_fr_p
push.v self.j_fl
pop.v.v self.j_fl_p
push.v self.j_fu
pop.v.v self.j_fu_p
push.v self.j_fd
pop.v.v self.j_fd_p
pushi.e 0
pop.v.i self.j_fr
pushi.e 0
pop.v.i self.j_fl
pushi.e 0
pop.v.i self.j_fu
pushi.e 0
pop.v.i self.j_fd
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
bf [100]

:[68]
push.i 32781
conv.i.v
push.v self.j_ch
pushi.e 1
sub.i.v
call.i gamepad_button_check(argc=2)
conv.v.b
bt [72]

:[69]
push.i 32782
conv.i.v
push.v self.j_ch
pushi.e 1
sub.i.v
call.i gamepad_button_check(argc=2)
conv.v.b
bt [72]

:[70]
push.i 32783
conv.i.v
push.v self.j_ch
pushi.e 1
sub.i.v
call.i gamepad_button_check(argc=2)
conv.v.b
bt [72]

:[71]
push.i 32784
conv.i.v
push.v self.j_ch
pushi.e 1
sub.i.v
call.i gamepad_button_check(argc=2)
conv.v.b
b [73]

:[72]
push.e 1

:[73]
bf [75]

:[74]
push.i 32781
conv.i.v
push.v self.j_ch
pushi.e 1
sub.i.v
call.i gamepad_button_check(argc=2)
pop.v.v self.j_fu
push.i 32782
conv.i.v
push.v self.j_ch
pushi.e 1
sub.i.v
call.i gamepad_button_check(argc=2)
pop.v.v self.j_fd
push.i 32783
conv.i.v
push.v self.j_ch
pushi.e 1
sub.i.v
call.i gamepad_button_check(argc=2)
pop.v.v self.j_fl
push.i 32784
conv.i.v
push.v self.j_ch
pushi.e 1
sub.i.v
call.i gamepad_button_check(argc=2)
pop.v.v self.j_fr
b [99]

:[75]
pushglb.v global.joy_dir
pushi.e 2
cmp.i.v NEQ
bf [99]

:[76]
push.i 32785
conv.i.v
push.v self.j_ch
pushi.e 1
sub.i.v
call.i gamepad_axis_value(argc=2)
pop.v.v local.j_xpos
push.i 32786
conv.i.v
push.v self.j_ch
pushi.e 1
sub.i.v
call.i gamepad_axis_value(argc=2)
pop.v.v local.j_ypos
pushglb.v global.analog_sense
pop.v.v local.analog_sense
pushloc.v local.j_xpos
call.i sqr(argc=1)
pushloc.v local.j_ypos
call.i sqr(argc=1)
add.v.v
call.i sqrt(argc=1)
pushloc.v local.analog_sense
cmp.v.v GTE
bf [99]

:[77]
pushloc.v local.j_xpos
pushloc.v local.j_ypos
call.i darctan2(argc=2)
pop.v.v local.angle
pushloc.v local.angle
pushi.e 0
cmp.i.v LT
bf [79]

:[78]
push.v local.angle
pushi.e 360
add.i.v
pop.v.v local.angle

:[79]
pushloc.v local.angle
push.d 67.5
cmp.d.v LT
bt [81]

:[80]
pushloc.v local.angle
push.d 292.5
cmp.d.v GT
b [82]

:[81]
push.e 1

:[82]
bf [84]

:[83]
pushi.e 1
pop.v.i self.j_fr

:[84]
pushloc.v local.angle
push.d 22.5
cmp.d.v GT
bf [86]

:[85]
pushloc.v local.angle
push.d 157.5
cmp.d.v LT
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
pushi.e 1
pop.v.i self.j_fd

:[89]
pushloc.v local.angle
push.d 112.5
cmp.d.v GT
bf [91]

:[90]
pushloc.v local.angle
push.d 247.5
cmp.d.v LT
b [92]

:[91]
push.e 0

:[92]
bf [94]

:[93]
pushi.e 1
pop.v.i self.j_fl

:[94]
pushloc.v local.angle
push.d 202.5
cmp.d.v GT
bf [96]

:[95]
pushloc.v local.angle
push.d 337.5
cmp.d.v LT
b [97]

:[96]
push.e 0

:[97]
bf [99]

:[98]
pushi.e 1
pop.v.i self.j_fu

:[99]
b [155]

:[100]
pushglb.v global.joy_dir
pushi.e 0
cmp.i.v EQ
bt [102]

:[101]
pushglb.v global.joy_dir
pushi.e 1
cmp.i.v EQ
b [103]

:[102]
push.e 1

:[103]
bf [105]

:[104]
push.v self.j_ch
call.i joystick_xpos(argc=1)
pop.v.v local.j_xpos
push.v self.j_ch
call.i joystick_ypos(argc=1)
pop.v.v local.j_ypos

:[105]
push.v self.j_ch
call.i joystick_direction(argc=1)
pop.v.v self.j_dir
pushglb.v global.joy_dir
pushi.e 0
cmp.i.v EQ
bt [107]

:[106]
pushglb.v global.joy_dir
pushi.e 1
cmp.i.v EQ
b [108]

:[107]
push.e 1

:[108]
bf [118]

:[109]
push.v self.j_dir
pushi.e 101
cmp.i.v EQ
bf [118]

:[110]
pushloc.v local.j_xpos
pushglb.v global.analog_sense
cmp.v.v GTE
bf [112]

:[111]
pushi.e 1
pop.v.i self.j_fr

:[112]
pushloc.v local.j_xpos
pushglb.v global.analog_sense
neg.v
cmp.v.v LTE
bf [114]

:[113]
pushi.e 1
pop.v.i self.j_fl

:[114]
pushloc.v local.j_ypos
pushglb.v global.analog_sense
cmp.v.v GTE
bf [116]

:[115]
pushi.e 1
pop.v.i self.j_fd

:[116]
pushloc.v local.j_ypos
pushglb.v global.analog_sense
neg.v
cmp.v.v LTE
bf [118]

:[117]
pushi.e 1
pop.v.i self.j_fu

:[118]
push.v self.j_dir
pushi.e 101
cmp.i.v NEQ
bf [135]

:[119]
push.v self.j_dir
pushi.e 100
cmp.i.v EQ
bf [121]

:[120]
pushi.e 1
pop.v.i self.j_fl

:[121]
push.v self.j_dir
pushi.e 98
cmp.i.v EQ
bf [123]

:[122]
pushi.e 1
pop.v.i self.j_fd

:[123]
push.v self.j_dir
pushi.e 102
cmp.i.v EQ
bf [125]

:[124]
pushi.e 1
pop.v.i self.j_fr

:[125]
push.v self.j_dir
pushi.e 104
cmp.i.v EQ
bf [127]

:[126]
pushi.e 1
pop.v.i self.j_fu

:[127]
push.v self.j_dir
pushi.e 99
cmp.i.v EQ
bf [129]

:[128]
pushi.e 1
pop.v.i self.j_fr
pushi.e 1
pop.v.i self.j_fd

:[129]
push.v self.j_dir
pushi.e 97
cmp.i.v EQ
bf [131]

:[130]
pushi.e 1
pop.v.i self.j_fd
pushi.e 1
pop.v.i self.j_fl

:[131]
push.v self.j_dir
pushi.e 103
cmp.i.v EQ
bf [133]

:[132]
pushi.e 1
pop.v.i self.j_fu
pushi.e 1
pop.v.i self.j_fl

:[133]
push.v self.j_dir
pushi.e 105
cmp.i.v EQ
bf [135]

:[134]
pushi.e 1
pop.v.i self.j_fu
pushi.e 1
pop.v.i self.j_fr

:[135]
pushglb.v global.joy_dir
pushi.e 0
cmp.i.v EQ
bt [137]

:[136]
pushglb.v global.joy_dir
pushi.e 2
cmp.i.v EQ
b [138]

:[137]
push.e 1

:[138]
bf [155]

:[139]
push.v self.j_ch
call.i joystick_pov(argc=1)
pop.v.v self.j_pov
push.v self.j_pov
pushi.e 0
cmp.i.v EQ
bf [141]

:[140]
pushi.e 1
pop.v.i self.j_fu

:[141]
push.v self.j_pov
pushi.e 270
cmp.i.v EQ
bf [143]

:[142]
pushi.e 1
pop.v.i self.j_fl

:[143]
push.v self.j_pov
pushi.e 90
cmp.i.v EQ
bf [145]

:[144]
pushi.e 1
pop.v.i self.j_fr

:[145]
push.v self.j_pov
pushi.e 180
cmp.i.v EQ
bf [147]

:[146]
pushi.e 1
pop.v.i self.j_fd

:[147]
push.v self.j_pov
pushi.e 315
cmp.i.v EQ
bf [149]

:[148]
pushi.e 1
pop.v.i self.j_fu
pushi.e 1
pop.v.i self.j_fl

:[149]
push.v self.j_pov
pushi.e 45
cmp.i.v EQ
bf [151]

:[150]
pushi.e 1
pop.v.i self.j_fu
pushi.e 1
pop.v.i self.j_fr

:[151]
push.v self.j_pov
pushi.e 225
cmp.i.v EQ
bf [153]

:[152]
pushi.e 1
pop.v.i self.j_fd
pushi.e 1
pop.v.i self.j_fl

:[153]
push.v self.j_pov
pushi.e 135
cmp.i.v EQ
bf [155]

:[154]
pushi.e 1
pop.v.i self.j_fd
pushi.e 1
pop.v.i self.j_fr

:[155]
push.v self.j_fr
push.v self.j_fr_p
cmp.v.v NEQ
bf [157]

:[156]
push.v self.j_fr
pushi.e 1
cmp.i.v EQ
b [158]

:[157]
push.e 0

:[158]
bf [160]

:[159]
pushi.e 39
conv.i.v
call.i keyboard_key_press(argc=1)
popz.v

:[160]
push.v self.j_fl
push.v self.j_fl_p
cmp.v.v NEQ
bf [162]

:[161]
push.v self.j_fl
pushi.e 1
cmp.i.v EQ
b [163]

:[162]
push.e 0

:[163]
bf [165]

:[164]
pushi.e 37
conv.i.v
call.i keyboard_key_press(argc=1)
popz.v

:[165]
push.v self.j_fd
push.v self.j_fd_p
cmp.v.v NEQ
bf [167]

:[166]
push.v self.j_fd
pushi.e 1
cmp.i.v EQ
b [168]

:[167]
push.e 0

:[168]
bf [170]

:[169]
pushi.e 40
conv.i.v
call.i keyboard_key_press(argc=1)
popz.v

:[170]
push.v self.j_fu
push.v self.j_fu_p
cmp.v.v NEQ
bf [172]

:[171]
push.v self.j_fu
pushi.e 1
cmp.i.v EQ
b [173]

:[172]
push.e 0

:[173]
bf [175]

:[174]
pushi.e 38
conv.i.v
call.i keyboard_key_press(argc=1)
popz.v

:[175]
push.v self.j_fr
push.v self.j_fr_p
cmp.v.v NEQ
bf [177]

:[176]
push.v self.j_fr
pushi.e 0
cmp.i.v EQ
b [178]

:[177]
push.e 0

:[178]
bf [180]

:[179]
pushi.e 39
conv.i.v
call.i keyboard_key_release(argc=1)
popz.v

:[180]
push.v self.j_fl
push.v self.j_fl_p
cmp.v.v NEQ
bf [182]

:[181]
push.v self.j_fl
pushi.e 0
cmp.i.v EQ
b [183]

:[182]
push.e 0

:[183]
bf [185]

:[184]
pushi.e 37
conv.i.v
call.i keyboard_key_release(argc=1)
popz.v

:[185]
push.v self.j_fd
push.v self.j_fd_p
cmp.v.v NEQ
bf [187]

:[186]
push.v self.j_fd
pushi.e 0
cmp.i.v EQ
b [188]

:[187]
push.e 0

:[188]
bf [190]

:[189]
pushi.e 40
conv.i.v
call.i keyboard_key_release(argc=1)
popz.v

:[190]
push.v self.j_fu
push.v self.j_fu_p
cmp.v.v NEQ
bf [192]

:[191]
push.v self.j_fu
pushi.e 0
cmp.i.v EQ
b [193]

:[192]
push.e 0

:[193]
bf [195]

:[194]
pushi.e 38
conv.i.v
call.i keyboard_key_release(argc=1)
popz.v

:[195]
pushi.e 0
pop.v.i self.up
pushi.e 0
pop.v.i self.down
pushi.e 0
pop.v.i self.left
pushi.e 0
pop.v.i self.right
pushi.e 38
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [197]

:[196]
pushi.e 1
pop.v.i self.try_up

:[197]
pushi.e 38
conv.i.v
call.i keyboard_check_released(argc=1)
conv.v.b
bf [199]

:[198]
pushi.e 0
pop.v.i self.try_up

:[199]
pushi.e 40
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [201]

:[200]
pushi.e 1
pop.v.i self.try_down

:[201]
pushi.e 40
conv.i.v
call.i keyboard_check_released(argc=1)
conv.v.b
bf [203]

:[202]
pushi.e 0
pop.v.i self.try_down

:[203]
pushi.e 39
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [205]

:[204]
pushi.e 1
pop.v.i self.try_right

:[205]
pushi.e 39
conv.i.v
call.i keyboard_check_released(argc=1)
conv.v.b
bf [207]

:[206]
pushi.e 0
pop.v.i self.try_right

:[207]
pushi.e 37
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [209]

:[208]
pushi.e 1
pop.v.i self.try_left

:[209]
pushi.e 37
conv.i.v
call.i keyboard_check_released(argc=1)
conv.v.b
bf [211]

:[210]
pushi.e 0
pop.v.i self.try_left

:[211]
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [221]

:[212]
push.v self.try_up
conv.v.b
bf [214]

:[213]
pushi.e 38
conv.i.v
call.i keyboard_check_direct(argc=1)
pop.v.v self.up

:[214]
push.v self.try_down
conv.v.b
bf [216]

:[215]
pushi.e 40
conv.i.v
call.i keyboard_check_direct(argc=1)
pop.v.v self.down

:[216]
push.v self.try_left
conv.v.b
bf [218]

:[217]
pushi.e 37
conv.i.v
call.i keyboard_check_direct(argc=1)
pop.v.v self.left

:[218]
push.v self.try_right
conv.v.b
bf [220]

:[219]
pushi.e 39
conv.i.v
call.i keyboard_check_direct(argc=1)
pop.v.v self.right

:[220]
b [229]

:[221]
push.v self.try_up
conv.v.b
bf [223]

:[222]
pushi.e 38
conv.i.v
call.i keyboard_check(argc=1)
pop.v.v self.up

:[223]
push.v self.try_down
conv.v.b
bf [225]

:[224]
pushi.e 40
conv.i.v
call.i keyboard_check(argc=1)
pop.v.v self.down

:[225]
push.v self.try_left
conv.v.b
bf [227]

:[226]
pushi.e 37
conv.i.v
call.i keyboard_check(argc=1)
pop.v.v self.left

:[227]
push.v self.try_right
conv.v.b
bf [229]

:[228]
pushi.e 39
conv.i.v
call.i keyboard_check(argc=1)
pop.v.v self.right

:[229]
pushi.e 38
conv.i.v
call.i keyboard_check_released(argc=1)
conv.v.b
bf [231]

:[230]
pushi.e 0
pop.v.i self.up

:[231]
pushi.e 40
conv.i.v
call.i keyboard_check_released(argc=1)
conv.v.b
bf [233]

:[232]
pushi.e 0
pop.v.i self.down

:[233]
pushi.e 37
conv.i.v
call.i keyboard_check_released(argc=1)
conv.v.b
bf [235]

:[234]
pushi.e 0
pop.v.i self.left

:[235]
pushi.e 39
conv.i.v
call.i keyboard_check_released(argc=1)
conv.v.b
bf [237]

:[236]
pushi.e 0
pop.v.i self.right

:[237]
push.v self.up
conv.v.b
bt [244]

:[238]
push.v self.down
conv.v.b
bt [244]

:[239]
push.v self.left
conv.v.b
bt [244]

:[240]
push.v self.right
conv.v.b
bt [244]

:[241]
pushi.e 0
conv.i.v
call.i control_check(argc=1)
conv.v.b
bt [244]

:[242]
pushi.e 1
conv.i.v
call.i control_check(argc=1)
conv.v.b
bt [244]

:[243]
pushi.e 2
conv.i.v
call.i control_check(argc=1)
conv.v.b
b [245]

:[244]
push.e 1

:[245]
not.b
pop.v.b local.now_idle
pushloc.v local.now_idle
conv.v.b
bf [247]

:[246]
push.v self.idle
conv.v.b
not.b
b [248]

:[247]
push.e 0

:[248]
bf [250]

:[249]
pushbltn.v self.current_time
pop.v.v self.idle_time

:[250]
pushloc.v local.now_idle
pop.v.v self.idle
pushi.e 2
conv.i.v
call.i control_check(argc=1)
conv.v.b
bf [263]

:[251]
pushi.e -5
pushi.e 28
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [263]

:[252]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [254]

:[253]
pushi.e 785
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [255]

:[254]
push.e 0

:[255]
bf [263]

:[256]
push.v self.h_skip
pushi.e 0
cmp.i.v EQ
bf [258]

:[257]
pushi.e 88
conv.i.v
call.i keyboard_key_press(argc=1)
popz.v
pushi.e 90
conv.i.v
call.i keyboard_key_press(argc=1)
popz.v

:[258]
push.v self.h_skip
pushi.e 1
cmp.i.v EQ
bf [260]

:[259]
pushi.e 90
conv.i.v
call.i keyboard_key_release(argc=1)
popz.v
pushi.e 88
conv.i.v
call.i keyboard_key_release(argc=1)
popz.v

:[260]
push.v self.h_skip
pushi.e 0
cmp.i.v EQ
bf [262]

:[261]
pushi.e 1
pop.v.i self.h_skip
b [263]

:[262]
pushi.e 0
pop.v.i self.h_skip

:[263]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [266]

:[264]
pushi.e 70
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [266]

:[265]
pushi.e 200
pop.v.i self.room_speed

:[266]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [269]

:[267]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [269]

:[268]
pushi.e 10
pop.v.i self.room_speed

:[269]
pushi.e 115
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [273]

:[270]
call.i window_get_fullscreen(argc=0)
conv.v.b
bf [272]

:[271]
pushi.e 0
conv.i.v
call.i window_set_fullscreen(argc=1)
popz.v
b [273]

:[272]
pushi.e 1
conv.i.v
call.i window_set_fullscreen(argc=1)
popz.v

:[273]
push.v self.canquit
pushi.e 1
cmp.i.v EQ
bf [end]

:[274]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [282]

:[275]
pushi.e 82
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [277]

:[276]
pushi.e 410
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [278]

:[277]
push.e 0

:[278]
bf [282]

:[279]
push.v self.debug_r
pushi.e 1
add.i.v
pop.v.v self.debug_r
push.v self.debug_r
pushi.e 5
cmp.i.v GT
bf [281]

:[280]
call.i game_restart(argc=0)
popz.v

:[281]
pushi.e 1
pop.v.i self.spec_rtimer

:[282]
push.v self.spec_rtimer
pushi.e 1
add.i.v
pop.v.v self.spec_rtimer
push.v self.spec_rtimer
pushi.e 6
cmp.i.v GTE
bf [284]

:[283]
pushi.e 0
pop.v.i self.debug_r

:[284]
pushi.e 27
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [288]

:[285]
push.v self.quit
pushi.e 1
add.i.v
pop.v.v self.quit
pushi.e 140
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [287]

:[286]
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[287]
b [end]

:[288]
pushi.e 0
pop.v.i self.quit

:[end]
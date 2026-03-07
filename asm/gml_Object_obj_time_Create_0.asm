.localvar 0 arguments
.localvar 1 i 9577

:[0]
pushbltn.v self.os_type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.osflavor
b [8]

:[2]
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bt [4]

:[3]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
pushi.e 4
pop.v.i global.osflavor
b [8]

:[7]
pushi.e 2
pop.v.i global.osflavor

:[8]
call.i os_get_language(argc=0)
push.s "_"@3478
add.s.v
call.i os_get_region(argc=0)
call.i string_upper(argc=1)
add.v.v
pop.v.v global.locale
pushglb.v global.osflavor
pushi.e 3
cmp.i.v GTE
bf [10]

:[9]
pushi.e 1
conv.i.v
call.i application_surface_enable(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i application_surface_draw_enable(argc=1)
popz.v

:[10]
pushi.e -1
pop.v.i global.savedata_async_id
pushi.e 0
pop.v.i global.savedata_async_load
pushi.e 0
pop.v.i global.savedata_error
push.s ""@36
pop.v.s global.savedata_debuginfo
pushi.e 0
pop.v.i global.disable_os_pause
pushi.e 0
pop.v.i self.paused
pushi.e 0
pop.v.i self.idle
pushi.e 0
pop.v.i self.idle_time
pushi.e 0
pop.v.i self.up
pushi.e 0
pop.v.i self.down
pushi.e 0
pop.v.i self.left
pushi.e 0
pop.v.i self.right
pushi.e 0
pop.v.i self.quit
pushi.e 0
pop.v.i self.try_up
pushi.e 0
pop.v.i self.try_down
pushi.e 0
pop.v.i self.try_left
pushi.e 0
pop.v.i self.try_right
pushi.e 1
pop.v.i self.canquit
pushi.e 0
pop.v.i self.h_skip
pushi.e 0
pop.v.i self.j_xpos
pushi.e 0
pop.v.i self.j_ypos
pushi.e 0
pop.v.i self.j_dir
pushi.e 0
pop.v.i self.j_fr
pushi.e 0
pop.v.i self.j_fl
pushi.e 0
pop.v.i self.j_fu
pushi.e 0
pop.v.i self.j_fd
pushi.e 0
pop.v.i self.j_fr_p
pushi.e 0
pop.v.i self.j_fl_p
pushi.e 0
pop.v.i self.j_fu_p
pushi.e 0
pop.v.i self.j_fd_p
pushi.e 0
pop.v.i local.i

:[11]
pushloc.v local.i
pushi.e 12
cmp.i.v LT
bf [13]

:[12]
pushi.e 0
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.i [array]self.j_prev
pushi.e 0
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.i [array]self.j_on
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [11]

:[13]
pushi.e 2
pop.v.i global.button0
pushi.e 1
pop.v.i global.button1
pushi.e 4
pop.v.i global.button2
push.d 0.15
pop.v.d global.analog_sense
push.d 0.01
pop.v.d global.analog_sense_sense
pushi.e 0
pop.v.i global.joy_dir
pushbltn.v self.os_type
pushi.e 14
cmp.i.v EQ
bt [15]

:[14]
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
b [16]

:[15]
push.e 1

:[16]
bf [21]

:[17]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.locale
call.i substr(argc=3)
push.s "ja"@3058
cmp.s.v EQ
bf [19]

:[18]
push.i 32770
pop.v.i global.button0
push.i 32769
pop.v.i global.button1
b [20]

:[19]
push.i 32769
pop.v.i global.button0
push.i 32770
pop.v.i global.button1

:[20]
push.i 32772
pop.v.i global.button2

:[21]
pushglb.v global.button0
pop.v.v global.default_button0
pushglb.v global.button1
pop.v.v global.default_button1
pushglb.v global.button2
pop.v.v global.default_button2
pushglb.v global.analog_sense
pop.v.v global.default_analog_sense
pushglb.v global.analog_sense_sense
pop.v.v global.default_analog_sense_sense
pushglb.v global.joy_dir
pop.v.v global.default_joy_dir
pushi.e 0
pop.v.i global.screen_border_id
pushi.e 0
pop.v.i global.screen_border_active
pushi.e 1
pop.v.i global.screen_border_alpha
pushi.e 0
pop.v.i global.screen_border_state
pushi.e 0
pop.v.i global.screen_border_dynamic_fade_id
pushi.e 0
pop.v.i global.screen_border_dynamic_fade_level
pushi.e 0
pop.v.i global.screen_border_activate_on_game_over
pushi.e 0
pop.v.i self.debug_r
pushi.e 0
pop.v.i self.debug_f
pushi.e 0
pop.v.i self.j1
pushi.e 0
pop.v.i self.j2
pushi.e 0
pop.v.i self.ja
pushi.e 0
pop.v.i self.j_ch
pushi.e 0
pop.v.i self.jt
pushglb.v global.osflavor
pushi.e 4
cmp.i.v GTE
bf [27]

:[22]
pushi.e 1
pop.v.i self.j_ch
pushi.e 0
pop.v.i local.i

:[23]
pushloc.v local.i
call.i gamepad_get_device_count(argc=0)
cmp.v.v LT
bf [27]

:[24]
pushloc.v local.i
call.i gamepad_is_connected(argc=1)
conv.v.b
bf [26]

:[25]
pushloc.v local.i
pushi.e 1
add.i.v
pop.v.v self.j_ch

:[26]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [23]

:[27]
pushi.e 0
pop.v.i self.spec_rtimer
pushi.e 0
pop.v.i global.endsong_loaded
call.i control_init(argc=0)
popz.v
call.i scr_kanatype_init(argc=0)
popz.v
push.s "text_data_en"@6325
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [29]

:[28]
pushi.e 226
conv.i.v
call.i script_execute(argc=1)
popz.v

:[29]
push.s "text_data_ja"@6326
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [31]

:[30]
pushi.e 227
conv.i.v
call.i script_execute(argc=1)
popz.v

:[31]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushglb.v global.locale
call.i substr(argc=3)
pop.v.v global.language
pushglb.v global.language
push.s "ja"@3058
cmp.s.v NEQ
bf [33]

:[32]
push.s "en"@3390
pop.v.s global.language

:[33]
push.s "trophy_init_complete"@51210
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [end]

:[34]
pushi.e 0
pop.v.i global.trophy_init_complete
pushi.e -1
pop.v.i self.trophy_ts

:[end]
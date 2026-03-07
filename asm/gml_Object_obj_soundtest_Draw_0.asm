.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 2
conv.i.v
push.s "soundtest_welcome"@31613
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 50
conv.i.v
pushi.e 120
conv.i.v
call.i scr_drawtext_icons_multiline(argc=4)
popz.v
push.v self.buffer
pushi.e 1
add.i.v
pop.v.v self.buffer
push.v self.buffer
pushi.e 20
cmp.i.v GTE
bf [4]

:[2]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e -10
pop.v.i self.buffer
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.songno
pushi.e 1
conv.i.v
pushi.e 50
conv.i.v
pushi.e 144
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[4]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [69]

:[5]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "soundtest_title"@31615
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 50
conv.i.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
push.v self.songno
pushi.e 0
cmp.i.v EQ
bf [14]

:[6]
pushi.e 144
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [8]

:[7]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [13]

:[8]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [10]

:[9]
push.v self.gaster
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 50
conv.i.v
pushi.e 144
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[13]
push.s "soundtest_track_happytown"@31617
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 200
conv.i.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered(argc=3)
popz.v

:[14]
push.v self.songno
pushi.e 1
cmp.i.v EQ
bf [23]

:[15]
pushi.e 146
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [17]

:[16]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [22]

:[17]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [19]

:[18]
push.v self.gaster
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 50
conv.i.v
pushi.e 146
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[22]
push.s "soundtest_track_meatfactory"@31619
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 200
conv.i.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered(argc=3)
popz.v

:[23]
push.v self.songno
pushi.e 2
cmp.i.v EQ
bf [32]

:[24]
pushi.e 147
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [26]

:[25]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [31]

:[26]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [28]

:[27]
push.v self.gaster
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 50
conv.i.v
pushi.e 147
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[31]
push.s "soundtest_track_troubledingle"@31621
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 200
conv.i.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered(argc=3)
popz.v

:[32]
push.v self.songno
pushi.e 3
cmp.i.v EQ
bf [41]

:[33]
pushi.e 145
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
bf [35]

:[34]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
b [40]

:[35]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [37]

:[36]
push.v self.gaster
pushi.e 0
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 1
pop.v.i self.gaster
call.i audio_stop_all(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 50
conv.i.v
pushi.e 145
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[40]
push.s "soundtest_track_him"@31623
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 200
conv.i.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered(argc=3)
popz.v

:[41]
push.v self.buffer
pushi.e 1
add.i.v
pop.v.v self.buffer
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [44]

:[42]
push.v self.buffer
pushi.e 0
cmp.i.v GT
bf [44]

:[43]
push.v self.active_l
pushi.e 0
cmp.i.v LT
b [45]

:[44]
push.e 0

:[45]
bf [52]

:[46]
push.v self.gaster
pushi.e 0
cmp.i.v EQ
bf [50]

:[47]
push.v self.songno
pushi.e 1
add.i.v
pop.v.v self.songno
push.v self.songno
pushi.e 3
cmp.i.v GT
bf [49]

:[48]
pushi.e 0
pop.v.i self.songno

:[49]
pushi.e 10
pop.v.i self.active_l
b [52]

:[50]
pushi.e 2
pop.v.i self.active_l
push.v self.songno
pushi.e 1
sub.i.v
pop.v.v self.songno
push.v self.songno
pushi.e 0
cmp.i.v LT
bf [52]

:[51]
pushi.e 3
pop.v.i self.songno

:[52]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [55]

:[53]
push.v self.buffer
pushi.e 0
cmp.i.v GT
bf [55]

:[54]
push.v self.active_r
pushi.e 0
cmp.i.v LT
b [56]

:[55]
push.e 0

:[56]
bf [61]

:[57]
pushi.e 10
pop.v.i self.active_r
push.v self.songno
pushi.e 1
add.i.v
pop.v.v self.songno
push.v self.songno
pushi.e 3
cmp.i.v GT
bf [59]

:[58]
pushi.e 0
pop.v.i self.songno

:[59]
push.v self.gaster
pushi.e 1
cmp.i.v EQ
bf [61]

:[60]
pushi.e 2
pop.v.i self.active_r

:[61]
push.v self.active_l
pushi.e 1
sub.i.v
pop.v.v self.active_l
push.v self.active_r
pushi.e 1
sub.i.v
pop.v.v self.active_r
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.active_l
pushi.e 0
cmp.i.v GT
bf [63]

:[62]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[63]
push.s "<<"@47499
conv.s.v
pushi.e 200
conv.i.v
pushi.e 50
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.active_r
pushi.e 0
cmp.i.v GT
bf [65]

:[64]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[65]
push.s ">>"@47500
conv.s.v
pushi.e 200
conv.i.v
pushi.e 580
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.gaster
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
push.v self.g_timer
pushi.e 1
add.i.v
pop.v.v self.g_timer

:[67]
push.v self.g_timer
pushi.e 600
cmp.i.v GTE
bf [69]

:[68]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 3
pop.v.i self.con

:[69]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[70]
push.s "soundtest_thanks"@31625
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 50
conv.i.v
pushi.e 150
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.seeya_timer
pushi.e 1
add.i.v
pop.v.v self.seeya_timer

:[end]
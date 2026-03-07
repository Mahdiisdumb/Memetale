.localvar 0 arguments

:[0]
push.v self.a_con
pushi.e 4
cmp.i.v EQ
bf [4]

:[1]
push.v self.asriel
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 2405
conv.i.v
pushi.e 140
conv.i.v
pushi.e 286
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.a2
push.i 100000
push.v self.a2
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 2
push.v self.a2
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.a2
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.a2
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 5
pop.v.i self.a_con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[4]
push.v self.a_con
pushi.e 6
cmp.i.v EQ
bf [6]

:[5]
pushi.e 85
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_creditsloader_449"@11345
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_creditsloader_450"@11347
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.a2
conv.v.i
push.v [stacktop]self.y
push.v self.a2
conv.v.i
push.v [stacktop]self.x
pushi.e 80
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 7
pop.v.i self.a_con

:[6]
push.v self.a_con
pushi.e 7
cmp.i.v EQ
bf [8]

:[7]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [9]

:[8]
push.e 0

:[9]
bf [12]

:[10]
push.v 784.stringno
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
push.v self.a2
conv.v.i
pop.v.i [stacktop]self.image_index

:[12]
push.v self.a_con
pushi.e 7
cmp.i.v EQ
bf [14]

:[13]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 8
pop.v.i self.a_con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1705
conv.i.v
pushi.e 300
conv.i.v
pushi.e 300
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ch
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 15
pop.v.i self.specialfade
pushi.e 1
pop.v.i self.drawbar

:[17]
push.v self.a_con
pushi.e 8
cmp.i.v EQ
bf [19]

:[18]
push.v self.a2
conv.v.i
dup.i 0
push.v [stacktop]self.image_alpha
push.d 0.06
sub.d.v
pop.i.v [stacktop]self.image_alpha

:[19]
push.v self.a_con
pushi.e 9
cmp.i.v EQ
bf [21]

:[20]
pushi.e 10
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.active
pushi.e 10
pop.v.i self.a_con

:[21]
push.v self.a_con
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
pushi.e 3
pop.v.i self.a_con
pushi.e 86
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "obj_creditsloader_492"@11349
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_creditsloader_493"@11351
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.asriel
conv.v.i
push.v [stacktop]self.y
pushi.e 20
sub.i.v
push.v self.asriel
conv.v.i
push.v [stacktop]self.x
pushi.e 80
add.i.v
call.i scr_blcon_x(argc=2)
popz.v

:[23]
push.v self.a_con
pushi.e 3
cmp.i.v EQ
bf [25]

:[24]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.v self.horror
call.i caster_stop(argc=1)
popz.v
pushi.e 4
pop.v.i self.a_con
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i snd_play(argc=1)
popz.v

:[28]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
push.v self.mytimer
pushi.e 1
add.i.v
pop.v.v self.mytimer

:[30]
push.v self.mytimer
pushi.e 10
cmp.i.v EQ
bf [32]

:[31]
push.s "music/end/express_myself.ogg"@2814
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.lastsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.lastsong
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i self.memory
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[32]
push.v self.credno
pushi.e 60
cmp.i.v GTE
bf [34]

:[33]
push.v self.memory
pushi.e 0
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
pushi.e 90
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.memory

:[37]
push.v self.memory
pushi.e 2
cmp.i.v EQ
bf [39]

:[38]
push.v self.credno
pushi.e 252
cmp.i.v GTE
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e -1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1706
conv.i.v
pushi.e 240
conv.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cb
pushi.e 60
push.v self.cb
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
push.v self.cb
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 3
pop.v.i self.memory

:[42]
push.v self.memory
pushi.e 3
cmp.i.v EQ
bf [44]

:[43]
pushi.e 1706
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
pushi.e 60
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.memory

:[47]
push.v self.memory
pushi.e 4
cmp.i.v EQ
bf [49]

:[48]
push.v self.credno
pushi.e 596
cmp.i.v GTE
b [50]

:[49]
push.e 0

:[50]
bf [52]

:[51]
pushi.e 7
pop.v.i self.memory
pushi.e 100
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[52]
push.v self.memory
pushi.e 7
cmp.i.v EQ
bf [54]

:[53]
push.v self.credno
pushi.e 716
cmp.i.v GTE
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
pushi.e 6
pop.v.i self.memory
pushi.e 160
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[57]
push.v self.memory
pushi.e 6
cmp.i.v EQ
bf [59]

:[58]
push.v self.credno
pushi.e 881
cmp.i.v GTE
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
pushi.e -2
pop.v.i self.memory
pushi.e 500
pop.v.i self.st_y
pushi.e 0
pop.v.i self.st_t
pushi.e 1
pop.v.i self.st_f
pushi.e -1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[62]
push.v self.drawbar
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.specialfade
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "credits_specialthanks"@31798
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 20
conv.i.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
push.v self.specialfade
push.d 0.05
sub.d.v
pop.v.v self.specialfade
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 450
conv.i.v
pushi.e 260
conv.i.v
pushi.e 0
conv.i.v
pushi.e 23
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.i.v
push.i 65535
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 452
conv.i.v
pushi.e 296
conv.i.v
pushi.e 0
conv.i.v
pushi.e 862
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[64]
push.v self.memory
pushi.e -2
cmp.i.v EQ
bf [66]

:[65]
pushi.e 1707
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [67]

:[66]
push.e 0

:[67]
bf [90]

:[68]
pushi.e 0
pop.v.i self.drawbar
push.v self.st_t
pushi.e 1
add.i.v
pop.v.v self.st_t
push.v self.st_t
pushi.e 150
cmp.i.v LT
bf [70]

:[69]
push.v self.st_y
pushi.e 50
cmp.i.v GT
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
push.v self.st_f
push.d 0.25
add.d.v
pop.v.v self.st_f
push.v self.st_y
push.v self.st_f
sub.v.v
pop.v.v self.st_y
pushi.e 1
pop.v.i self.st_f2

:[73]
push.v self.st_t
pushi.e 240
cmp.i.v GT
bf [75]

:[74]
push.v self.st_y
pushi.e 500
cmp.i.v LT
b [76]

:[75]
push.e 0

:[76]
bf [78]

:[77]
push.d 0.8
pop.v.d self.vol
pushi.e 0
pop.v.i self.l_alpha
push.v self.st_y
push.v self.st_f2
add.v.v
pop.v.v self.st_y
push.v self.st_f2
push.d 0.25
add.d.v
pop.v.v self.st_f2
pushi.e 0
pop.v.i self.st_f3
pushi.e 500
pop.v.i self.st_y2

:[78]
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.hitno
pushi.e 0
cmp.i.v GT
bf [82]

:[79]
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "credits_touched"@31800
conv.s.v
call.i scr_gettext(argc=1)
push.v self.st_y
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[80]
push.v self.i
push.v self.hitno
cmp.v.v LT
bf [82]

:[81]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.hitname
push.v self.st_y
pushi.e 40
add.i.v
push.v self.i
pushi.e 20
mul.i.v
add.v.v
pushi.e 320
conv.i.v
call.i scr_drawtext_centered(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [80]

:[82]
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.v self.hitno
pushi.e 0
cmp.i.v LTE
bf [84]

:[83]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "s_key"@3067
conv.s.v
push.s "reset"@3068
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
push.s "credits_door"@31802
conv.s.v
call.i scr_gettext(argc=1)
push.v self.st_y
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v

:[84]
push.v self.st_t
pushi.e 320
cmp.i.v GTE
bf [90]

:[85]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.st_y2
pushi.e 2
sub.i.v
pop.v.v self.st_y2
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.s "credits_finalthanks"@31804
conv.s.v
call.i scr_gettext(argc=1)
push.v self.st_y2
pushi.e 320
conv.i.v
call.i scr_drawtext_centered_scaled(argc=5)
popz.v
push.v self.st_y2
pushi.e -400
cmp.i.v LTE
bf [90]

:[86]
push.v self.st_y2
pushi.e -410
cmp.i.v GTE
bf [88]

:[87]
pushi.e 0
pop.v.i self.l_alpha

:[88]
pushi.e -9000
pop.v.i self.depth
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.l_alpha
call.i draw_set_alpha(argc=1)
popz.v
push.v self.l_alpha
push.d 0.008333333333333333
add.d.v
pop.v.v self.l_alpha
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.st_y2
pushi.e -830
cmp.i.v LTE
bf [90]

:[89]
push.v self.lastsong
call.i caster_free(argc=1)
popz.v
pushi.e 1
pop.v.i self.do_room_goto

:[90]
push.v self.ting
pushi.e 1
cmp.i.v EQ
bf [end]

:[91]
pushi.e 119
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 119
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.ting

:[end]
.localvar 0 arguments
.localvar 1 roomname 9729
.localvar 2 lvtext 9730
.localvar 3 timetext 9731
.localvar 4 namesize 9732
.localvar 5 lvsize 9733
.localvar 6 timesize 9734
.localvar 7 x_center 9735
.localvar 8 lvpos 9736
.localvar 9 fileerased 9741

:[0]
push.v self.myinteract
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[2]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
conv.i.v
pushi.e 90
conv.i.v
pushi.e 156
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i self.drawthis
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.xx
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 10
sub.i.v
pop.v.v self.yy
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.nowxx
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 10
sub.i.v
pop.v.v self.nowyy

:[5]
push.v self.drawthis
pushi.e 1
cmp.i.v EQ
bf [14]

:[6]
pushi.e 1
pop.v.i global.interact
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
pop.v.v self.iniread
push.s "EMPTY"@31470
conv.s.v
push.s "Name"@3378
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v self.name
pushi.e 0
conv.i.v
push.s "Love"@3380
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.love
pushi.e 0
conv.i.v
push.s "Time"@3381
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.time
pushi.e 0
conv.i.v
push.s "Kills"@3382
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.kills
pushi.e 0
conv.i.v
push.s "Room"@3383
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.roome
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 135
push.v self.yy
add.v.i
pushi.e 265
push.v self.xx
add.v.i
pushi.e 49
push.v self.yy
add.v.i
pushi.e 54
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 132
push.v self.yy
add.v.i
pushi.e 262
push.v self.xx
add.v.i
pushi.e 52
push.v self.yy
add.v.i
pushi.e 57
push.v self.xx
add.v.i
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.time
pushi.e 1800
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.minutes
push.v self.time
pushi.e 1800
conv.i.d
div.d.v
push.v self.minutes
sub.v.v
pushi.e 60
mul.i.v
call.i round(argc=1)
pop.v.v self.seconds
push.v self.seconds
pushi.e 60
cmp.i.v EQ
bf [8]

:[7]
pushi.e 59
pop.v.i self.seconds

:[8]
push.v self.seconds
pushi.e 10
cmp.i.v LT
bf [10]

:[9]
push.s "0"@3159
push.v self.seconds
call.i string(argc=1)
add.v.s
pop.v.v self.seconds

:[10]
push.v self.roome
call.i scr_roomname(argc=1)
pop.v.v local.roomname
push.v self.love
call.i string(argc=1)
push.s "save_menu_lv"@3164
conv.s.v
call.i scr_gettext(argc=2)
pop.v.v local.lvtext
push.v self.seconds
call.i string(argc=1)
push.v self.minutes
call.i string(argc=1)
push.s "save_menu_time"@3166
conv.s.v
call.i scr_gettext(argc=3)
pop.v.v local.timetext
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
push.v self.name
call.i substr(argc=3)
call.i string_width(argc=1)
pop.v.v local.namesize
pushloc.v local.lvtext
call.i string_width(argc=1)
pop.v.v local.lvsize
pushloc.v local.timetext
call.i string_width(argc=1)
pop.v.v local.timesize
push.v self.xx
pushi.e 160
add.i.v
pop.v.v local.x_center
pushloc.v local.x_center
pushloc.v local.namesize
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushloc.v local.timesize
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushloc.v local.lvsize
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i round(argc=1)
pop.v.v local.lvpos
push.v self.name
pushi.e 60
push.v self.yy
add.v.i
pushi.e 70
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v
pushloc.v local.lvtext
pushi.e 60
push.v self.yy
add.v.i
pushloc.v local.lvpos
call.i draw_text(argc=3)
popz.v
pushloc.v local.timetext
pushi.e 60
push.v self.yy
add.v.i
pushi.e 250
push.v self.xx
add.v.i
pushloc.v local.timesize
sub.v.v
call.i draw_text(argc=3)
popz.v
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [12]

:[11]
pushloc.v local.roomname
pushi.e 80
push.v self.yy
add.v.i
pushloc.v local.x_center
call.i scr_drawtext_centered(argc=3)
popz.v
b [13]

:[12]
pushloc.v local.roomname
pushi.e 80
push.v self.yy
add.v.i
pushi.e 70
push.v self.xx
add.v.i
call.i draw_text(argc=3)
popz.v

:[13]
push.s "save_menu_save"@31475
conv.s.v
call.i scr_gettext(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e 85
add.i.v
call.i draw_text(argc=3)
popz.v
push.s "save_menu_return"@31477
conv.s.v
call.i scr_gettext(argc=1)
push.v self.yy
pushi.e 110
add.i.v
push.v self.xx
pushi.e 175
add.i.v
call.i draw_text(argc=3)
popz.v

:[14]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [16]

:[15]
push.s "music/sfx_gigapunch.ogg"@2769
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.punch
push.s "music/explosion.ogg"@2722
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.explosion
push.d 0.9
conv.d.v
push.d 0.7
conv.d.v
push.v self.punch
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.crack
pushi.e 6
pop.v.i self.shake
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[16]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [18]

:[17]
push.d 0.83
conv.d.v
push.d 0.85
conv.d.v
push.v self.punch
call.i caster_play(argc=3)
popz.v
pushi.e 2
pop.v.i self.crack
pushi.e 8
pop.v.i self.shake
pushi.e 0
pop.v.i self.drawthis
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 5
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[18]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [20]

:[19]
push.d 0.76
conv.d.v
pushi.e 1
conv.i.v
push.v self.punch
call.i caster_play(argc=3)
popz.v
pushi.e 3
pop.v.i self.crack
pushi.e 10
pop.v.i self.shake
pushi.e 0
pop.v.i self.drawthis
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 7
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[20]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [24]

:[21]
pushi.e -1
pop.v.i self.crack
pushi.e -1
pop.v.i self.drawthis
pushi.e 9
pop.v.i self.con
pushi.e 0
pop.v.i self.i
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1581
conv.i.v
push.v self.nowyy
pushi.e 56
add.i.v
push.v self.nowxx
pushi.e 114
add.i.v
call.i instance_create(argc=3)
pop.v.v self.fl
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.explosion
call.i caster_play(argc=3)
popz.v
pushi.e 6
dup.i 0
push.i 0
cmp.i.i LTE
bt [23]

:[22]
pushi.e 1582
conv.i.v
push.v self.nowyy
pushi.e 49
add.i.v
push.v self.nowxx
pushi.e 54
add.i.v
call.i instance_create(argc=3)
pop.v.v self.in
push.v self.i
push.v self.in
conv.v.i
pop.v.v [stacktop]self.image_index
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [22]

:[23]
popz.i
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[24]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
push.v self.fl
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 1
pop.v.i 1583.cutscene
pushi.e 11
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[26]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [28]

:[27]
push.s "music/yourbestfriend_3.ogg"@2737
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.hellmus
pushi.e 2
push.v self.fl
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 13
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [30]

:[29]
push.v 1583.y
pushi.e 6
add.i.v
pop.v.v 1583.y
push.v 1581.y
pushi.e 2
sub.i.v
pop.v.v 1581.y

:[30]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
push.v self.fl
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 15
pop.v.i self.con
pushi.e 8
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[32]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [36]

:[33]
pushi.e 1581
pushenv [35]

:[34]
pushi.e 2
pop.v.i self.moved
push.v self.x
pop.v.v self.xx
push.v self.y
pop.v.v self.yy

:[35]
popenv [34]
pushi.e 0
push.v self.fl
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 17
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[36]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [38]

:[37]
push.d 0.7
conv.d.v
push.d 0.8
conv.d.v
push.v self.hellmus
call.i caster_loop(argc=3)
popz.v
push.s "obj_savepoint_fake_266"@24308
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_267"@24310
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_268"@24312
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_269"@24314
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_270"@24316
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_271"@24318
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_272"@24320
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_273"@24322
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_274"@24324
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_275"@24326
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
pushi.e 9
pop.v.i global.typer
push.s "obj_savepoint_fake_278"@24327
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 1604
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 100
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mywriter
pushi.e 19
pop.v.i self.con

:[38]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [41]

:[39]
push.v self.mywriter
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
push.s "music/f_newlaugh.ogg"@2767
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.laugh
pushi.e 1
push.v self.fl
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 20
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[41]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [43]

:[42]
pushi.e 1
pop.v.i 1581.set
pushi.e 2
push.v self.fl
conv.v.i
pop.v.i [stacktop]self.type
push.d 0.9
conv.d.v
pushi.e 1
conv.i.v
push.v self.laugh
call.i caster_play(argc=3)
popz.v
pushi.e 22
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[43]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [45]

:[44]
pushi.e 1
push.v self.fl
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 24
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[45]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [47]

:[46]
pushi.e 0
push.v self.fl
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 26
pop.v.i self.con

:[47]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [49]

:[48]
push.s "obj_savepoint_fake_332"@24329
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_333"@24331
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_334"@24333
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_335"@24335
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_337"@24337
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_338"@24339
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_339"@24341
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_340"@24343
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_341"@24345
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_342"@24347
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_343"@24349
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_344"@24351
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 11
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_345"@24353
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_346"@24355
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 13
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_347"@24356
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 14
pop.v.v [array]global.msg
pushi.e 9
pop.v.i global.typer
pushi.e 1604
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 100
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mywriter
pushi.e 27
pop.v.i self.con

:[49]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [63]

:[50]
pushi.e 1604
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [61]

:[51]
push.v 1604.stringno
pushi.e 12
cmp.i.v EQ
bf [56]

:[52]
pushi.e 1581
pushenv [55]

:[53]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
pushi.e 0
pop.v.i self.image_index
pushi.e 2303
pop.v.i self.sprite_index
pushi.e 3
pop.v.i self.type

:[55]
popenv [53]

:[56]
push.v 1604.stringno
pushi.e 13
cmp.i.v EQ
bf [61]

:[57]
pushi.e 1581
pushenv [60]

:[58]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [60]

:[59]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.type

:[60]
popenv [58]

:[61]
pushi.e 1604
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
pushi.e 28
pop.v.i self.con
pushi.e 1
push.v self.fl
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[63]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [65]

:[64]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 2
push.v self.fl
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 2
push.v self.fl
conv.v.i
pop.v.i [stacktop]self.set
push.d 0.8
conv.d.v
pushi.e 1
conv.i.v
push.v self.laugh
call.i caster_play(argc=3)
popz.v
pushi.e 30
pop.v.i self.con
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[65]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [67]

:[66]
pushi.e 1
push.v self.fl
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 32
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[67]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [69]

:[68]
pushi.e 0
push.v self.fl
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 34
pop.v.i self.con

:[69]
push.v self.con
pushi.e 34
cmp.i.v EQ
bf [73]

:[70]
push.s "obj_savepoint_fake_435"@24358
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_436"@24360
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "file0"@3189
conv.s.v
call.i ossafe_file_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [72]

:[71]
push.s "obj_savepoint_fake_439"@24362
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_440"@24364
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[72]
push.s "obj_savepoint_fake_442"@24366
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_443"@24368
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_444"@24370
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_445"@24372
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_446"@24374
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_447"@24376
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 9
pop.v.i global.typer
pushi.e 1604
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 100
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mywriter
pushi.e 35
pop.v.i self.con

:[73]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [76]

:[74]
pushi.e 1604
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [76]

:[75]
pushi.e -2
pop.v.i 1583.vspeed
push.d 0.334
pop.v.d 1583.image_speed
pushi.e 1
pop.v.i 1583.moving
pushi.e 36
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[76]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [78]

:[77]
pushi.e 0
pop.v.i 1583.vspeed
pushi.e 0
pop.v.i 1583.image_speed
pushi.e 0
pop.v.i 1583.moving
pushi.e 38
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[78]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [80]

:[79]
push.s "obj_savepoint_fake_490"@24378
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_491"@24380
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_savepoint_fake_492"@24382
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 16
pop.v.i global.typer
pushi.e 1604
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 100
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mywriter
pushi.e 40
pop.v.i self.con

:[80]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [83]

:[81]
pushi.e 1604
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [83]

:[82]
pushi.e 5
pop.v.i global.faceemotion
push.s "obj_savepoint_fake_507"@24384
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 119
pop.v.i global.typer
pushi.e 1604
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 100
add.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.mywriter
pushi.e 41
pop.v.i self.con

:[83]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [88]

:[84]
pushi.e 1604
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [88]

:[85]
pushi.e 1581
pushenv [87]

:[86]
call.i instance_destroy(argc=0)
popz.v

:[87]
popenv [86]
pushi.e 1580
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 42
pop.v.i self.con

:[88]
push.v self.crack
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
pushi.e 49
push.v self.yy
add.v.i
pushi.e 54
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushi.e 2370
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[90]
push.v self.crack
pushi.e 2
cmp.i.v EQ
bt [92]

:[91]
push.v self.crack
pushi.e 3
cmp.i.v EQ
b [93]

:[92]
push.e 1

:[93]
bf [97]

:[94]
pushi.e 2368
pop.v.i local.fileerased
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [96]

:[95]
pushi.e 2369
pop.v.i local.fileerased

:[96]
pushi.e 49
push.v self.yy
add.v.i
pushi.e 54
push.v self.xx
add.v.i
pushi.e 0
conv.i.v
pushloc.v local.fileerased
call.i draw_sprite(argc=4)
popz.v
pushi.e 49
push.v self.yy
add.v.i
pushi.e 54
push.v self.xx
add.v.i
push.v self.crack
pushi.e 1
sub.i.v
pushi.e 2370
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[97]
push.v self.shake
pushi.e 0
cmp.i.v GTE
bf [end]

:[98]
push.v self.nowxx
push.v self.shake
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.v
pop.v.v self.xx
push.v self.nowyy
push.v self.shake
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.v
pop.v.v self.yy
push.v self.shake
pushi.e 1
sub.i.v
pop.v.v self.shake

:[end]
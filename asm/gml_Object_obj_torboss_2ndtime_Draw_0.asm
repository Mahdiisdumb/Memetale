.localvar 0 arguments
.localvar 1 yy 5173

:[0]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.sprite_index
pushi.e 761
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 58
add.i.v
push.v self.x
pushi.e 48
add.i.v
pushglb.v global.faceemotion
pushi.e 860
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.sprite_index
pushi.e 746
cmp.i.v EQ
bt [4]

:[3]
push.v self.sprite_index
pushi.e 759
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
pushi.e 48
add.i.v
pushglb.v global.faceemotion
pushi.e 860
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[7]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.s "music/dogsong.ogg"@2831
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.dogsong
pushi.e 1
conv.i.v
push.d 0.6
conv.d.v
push.v self.dogsong
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 604
conv.i.v
pushi.e 240
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tobdog
push.v self.tobdog
conv.v.i
dup.i 0
push.v [stacktop]self.y
push.v self.tobdog
conv.v.i
push.v [stacktop]self.sprite_height
sub.v.v
pop.i.v [stacktop]self.y
push.d 0.2
push.v self.tobdog
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e -2
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
pop.v.i self.con

:[9]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[10]
push.v self.tobdog
conv.v.i
push.v [stacktop]self.x
pushi.e 480
cmp.i.v LT
bf [12]

:[11]
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 859
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "CH"@3073
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
pushi.e 2
pop.v.i global.faceemotion
push.d 0.2
push.v self.tobdog
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 0
pop.v.i global.msc
pushi.e 33
pop.v.i global.typer
push.s "obj_torboss_2ndtime_153"@27041
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.v self.tobdog
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
pushi.e 400
conv.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 4
pop.v.i self.con

:[14]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [17]

:[15]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [17]

:[16]
pushi.e 5
pop.v.i self.con
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [19]

:[18]
pushi.e 8
pop.v.i global.typer
push.s "obj_torboss_2ndtime_175"@27043
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_176"@27045
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_177"@27047
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 1
pop.v.i global.faceemotion
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 120
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 7
pop.v.i self.con

:[19]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [22]

:[20]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [22]

:[21]
pushi.e 8
pop.v.i self.con
push.d 0.2
push.v self.tobdog
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 33
pop.v.i global.typer
push.s "obj_torboss_2ndtime_192"@27049
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_193"@27051
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_194"@27053
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.v self.tobdog
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
pushi.e 400
conv.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[22]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [25]

:[23]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [25]

:[24]
pushi.e 1
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 9
pop.v.i self.con
pushi.e 3
pop.v.i global.faceemotion
pushi.e 8
pop.v.i global.typer
push.s "obj_torboss_2ndtime_211"@27055
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 120
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v

:[25]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [28]

:[26]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [28]

:[27]
pushi.e 10
pop.v.i self.con
push.d 0.2
push.v self.tobdog
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 2
pop.v.i global.faceemotion
pushi.e 33
pop.v.i global.typer
push.s "obj_torboss_2ndtime_224"@27057
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_225"@27059
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_226"@27061
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_227"@27063
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.v self.tobdog
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
pushi.e 400
conv.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[28]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [31]

:[29]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [31]

:[30]
pushi.e 1
pop.v.i global.faceemotion
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 11
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[31]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [33]

:[32]
pushi.e 0
pop.v.i global.faceemotion
pushi.e 746
pop.v.i self.sprite_index
pushi.e 13
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[33]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [36]

:[34]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [36]

:[35]
push.d 14.1
pop.v.d self.con
push.d 0.2
push.v self.tobdog
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 33
pop.v.i global.typer
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_torboss_2ndtime_264"@27065
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_265"@27067
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.v self.tobdog
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
pushi.e 400
conv.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[36]
push.v self.con
push.d 14.1
cmp.d.v EQ
bf [39]

:[37]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [39]

:[38]
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 15
pop.v.i self.con
pushi.e 0
pop.v.i global.faceemotion
pushi.e 8
pop.v.i global.typer
push.s "obj_torboss_2ndtime_280"@27069
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 120
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v

:[39]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [42]

:[40]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [42]

:[41]
pushi.e 16
pop.v.i self.con
push.d 0.2
push.v self.tobdog
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 33
pop.v.i global.typer
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "obj_torboss_2ndtime_293"@27071
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.v self.tobdog
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
pushi.e 400
conv.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[42]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [45]

:[43]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [45]

:[44]
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 17
pop.v.i self.con
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_torboss_2ndtime_308"@27073
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_309"@27075
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 8
pop.v.i global.typer
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 120
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v

:[45]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [48]

:[46]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [48]

:[47]
pushi.e 18
pop.v.i self.con
push.d 0.2
push.v self.tobdog
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 33
pop.v.i global.typer
push.s "obj_torboss_2ndtime_324"@27077
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_325"@27079
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_326"@27081
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.v self.tobdog
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
pushi.e 400
conv.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[48]
push.v self.con
pushi.e 18
cmp.i.v EQ
bf [51]

:[49]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [51]

:[50]
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1
pop.v.i global.faceemotion
pushi.e 19
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[51]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [53]

:[52]
pushi.e -3
pop.v.i self.hspeed
pushi.e 21
pop.v.i self.con
pushi.e 180
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[53]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [56]

:[54]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [56]

:[55]
pushi.e 23
pop.v.i self.con
push.d 0.2
push.v self.tobdog
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 33
pop.v.i global.typer
push.s "obj_torboss_2ndtime_360"@27083
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.v self.tobdog
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
pushi.e 400
conv.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[56]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [59]

:[57]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [59]

:[58]
pushi.e -4
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1611
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 24
pop.v.i self.con
pushi.e 0
pop.v.i global.faceemotion
pushi.e 8
pop.v.i global.typer
push.s "obj_torboss_2ndtime_377"@27085
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i scr_blcon_ofs(argc=5)
popz.v

:[59]
push.v self.con
pushi.e 24
cmp.i.v GTE
bf [61]

:[60]
push.v self.con
pushi.e 28
cmp.i.v LT
b [62]

:[61]
push.e 0

:[62]
bf [65]

:[63]
push.v self.tobdog
conv.v.i
push.v [stacktop]self.x
pushi.e 320
cmp.i.v LTE
bf [65]

:[64]
pushi.e 0
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.hspeed

:[65]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [68]

:[66]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [68]

:[67]
pushi.e 25
pop.v.i self.con
push.d 0.2
push.v self.tobdog
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 33
pop.v.i global.typer
push.s "obj_torboss_2ndtime_400"@27087
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.v self.tobdog
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
pushi.e 230
conv.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[68]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [71]

:[69]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [71]

:[70]
pushi.e 26
pop.v.i self.con
pushi.e 0
pop.v.i global.faceemotion
pushi.e 8
pop.v.i global.typer
push.s "obj_torboss_2ndtime_415"@27089
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.y
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
call.i scr_blcon_ofs(argc=5)
popz.v

:[71]
push.v self.con
pushi.e 26
cmp.i.v EQ
bf [74]

:[72]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [74]

:[73]
pushi.e 27
pop.v.i self.con
push.d 0.2
push.v self.tobdog
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 33
pop.v.i global.typer
push.s "obj_torboss_2ndtime_429"@27091
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_430"@27092
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_431"@27094
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_432"@27096
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e -10
conv.i.v
pushi.e 0
conv.i.v
push.v self.tobdog
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
pushi.e 230
conv.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 33
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[74]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [77]

:[75]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [77]

:[76]
push.v self.dogsong
call.i caster_stop(argc=1)
popz.v
push.s "music/intronoise.ogg"@2623
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.in
push.s "music/mode.ogg"@2830
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.mode
pushi.e 28
pop.v.i self.con
pushi.e -4
push.v self.tobdog
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 210
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[77]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [79]

:[78]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.in
call.i caster_play(argc=3)
popz.v
pushi.e 1
pop.v.i self.draw_u
push.i -40000
pop.v.i self.depth
pushi.e 30
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[79]
push.v self.con
pushi.e 31
cmp.i.v EQ
bf [81]

:[80]
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
push.v self.mode
call.i caster_play(argc=3)
popz.v
pushi.e 2
pop.v.i self.draw_u
pushi.e 32
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[81]
push.v self.con
pushi.e 33
cmp.i.v EQ
bf [83]

:[82]
push.d 1.2
conv.d.v
push.d 0.8
conv.d.v
push.v self.mode
call.i caster_play(argc=3)
popz.v
pushi.e 3
pop.v.i self.draw_u
pushi.e 34
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[83]
push.v self.con
pushi.e 35
cmp.i.v EQ
bf [85]

:[84]
push.d 1.6
conv.d.v
push.d 0.7
conv.d.v
push.v self.mode
call.i caster_play(argc=3)
popz.v
pushi.e 4
pop.v.i self.draw_u
pushi.e 36
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[85]
push.v self.con
pushi.e 37
cmp.i.v EQ
bf [87]

:[86]
push.d 2.2
conv.d.v
push.d 0.6
conv.d.v
push.v self.mode
call.i caster_play(argc=3)
popz.v
pushi.e 5
pop.v.i self.draw_u
pushi.e 38
pop.v.i self.con
pushi.e 600
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i global.faceemotion

:[87]
push.v self.con
pushi.e 39
cmp.i.v EQ
bf [89]

:[88]
pushi.e 1
pop.v.i self.draw_f
pushi.e 280
pop.v.i self.fx
pushi.e 340
pop.v.i self.fy
pushi.e 0
pop.v.i self.famt
pushi.e 40
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[89]
push.v self.con
pushi.e 41
cmp.i.v EQ
bf [93]

:[90]
pushi.e 6
pop.v.i global.typer
push.s "obj_torboss_2ndtime_512"@27098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_513"@27100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_514"@27102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_515"@27104
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_516"@27105
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_517"@27107
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_518"@27109
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_519"@27111
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_520"@27113
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 8
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_521"@27115
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_522"@27117
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.fy
push.v self.fx
pushi.e 90
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 784
pushenv [92]

:[91]
push.i -42100
pop.v.i self.depth

:[92]
popenv [91]
push.i -42000
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 42
pop.v.i self.con

:[93]
push.v self.con
pushi.e 42
cmp.i.v EQ
bf [96]

:[94]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [96]

:[95]
pushi.e 0
pop.v.i global.faceemotion
push.d 42.1
pop.v.d self.con
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[96]
push.v self.con
push.d 43.1
cmp.d.v EQ
bf [100]

:[97]
push.s "obj_torboss_2ndtime_544"@27119
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.fy
push.v self.fx
pushi.e 90
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 784
pushenv [99]

:[98]
push.i -42100
pop.v.i self.depth

:[99]
popenv [98]
push.i -42000
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 44
pop.v.i self.con

:[100]
push.v self.con
pushi.e 44
cmp.i.v EQ
bf [105]

:[101]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [105]

:[102]
pushi.e 1
pop.v.i global.faceemotion
pushi.e 45
pop.v.i self.con
pushi.e 8
pop.v.i global.typer
push.s "obj_torboss_2ndtime_558"@27121
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.fy
pushi.e 0
conv.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 784
pushenv [104]

:[103]
push.i -42100
pop.v.i self.depth

:[104]
popenv [103]
push.i -42000
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth

:[105]
push.v self.con
pushi.e 45
cmp.i.v EQ
bf [108]

:[106]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [108]

:[107]
pushi.e 46
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[108]
push.v self.con
pushi.e 47
cmp.i.v EQ
bf [112]

:[109]
pushi.e 6
pop.v.i global.typer
push.s "obj_torboss_2ndtime_578"@27123
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_579"@27125
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_580"@27126
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_581"@27128
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_torboss_2ndtime_582"@27130
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
push.v self.fy
push.v self.fx
pushi.e 90
add.i.v
call.i scr_blcon_ofs(argc=5)
popz.v
pushi.e 784
pushenv [111]

:[110]
push.i -42100
pop.v.i self.depth

:[111]
popenv [110]
push.i -42000
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 48
pop.v.i self.con

:[112]
push.v self.con
pushi.e 48
cmp.i.v EQ
bf [117]

:[113]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [117]

:[114]
pushi.e 50
pop.v.i self.con
pushi.e 33
pop.v.i global.typer
push.s "obj_torboss_2ndtime_595"@27132
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
conv.i.v
push.v self.fy
pushi.e 0
conv.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 784
pushenv [116]

:[115]
push.i -42100
pop.v.i self.depth

:[116]
popenv [115]
push.i -42000
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth

:[117]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [120]

:[118]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [120]

:[119]
pushi.e 51
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[120]
push.v self.con
pushi.e 52
cmp.i.v EQ
bf [122]

:[121]
pushi.e 3
pop.v.i self.draw_f
pushi.e 53
pop.v.i self.con
pushi.e 180
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.blk

:[122]
push.v self.draw_u
pushi.e 0
cmp.i.v GT
bf [138]

:[123]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
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
pushi.e 1
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.draw_u
pushi.e 1
cmp.i.v GTE
bf [125]

:[124]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[125]
push.v self.draw_u
pushi.e 2
cmp.i.v GTE
bf [127]

:[126]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
push.s "hardmode_end_1"@31728
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 140
conv.i.v
pushi.e 320
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[127]
push.v self.draw_u
pushi.e 3
cmp.i.v GTE
bf [129]

:[128]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 1.5
conv.d.v
push.d 1.5
conv.d.v
push.s "hardmode_end_2"@31730
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 230
conv.i.v
pushi.e 320
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[129]
push.v self.draw_u
pushi.e 4
cmp.i.v GTE
bf [133]

:[130]
pushi.e 270
pop.v.i local.yy
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [132]

:[131]
push.v local.yy
pushi.e 8
add.i.v
pop.v.v local.yy

:[132]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.s "hardmode_end_3"@31732
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushi.e 320
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[133]
push.v self.draw_u
pushi.e 5
cmp.i.v GTE
bf [137]

:[134]
pushi.e 305
pop.v.i local.yy
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [136]

:[135]
push.v local.yy
pushi.e 8
add.i.v
pop.v.v local.yy

:[136]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
push.d 0.5
conv.d.v
push.s "hardmode_end_4"@31734
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.yy
pushi.e 320
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[137]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v

:[138]
push.v self.draw_f
pushi.e 1
cmp.i.v EQ
bf [141]

:[139]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.fy
push.v self.fx
push.v self.famt
call.i floor(argc=1)
pushi.e 647
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.famt
push.d 0.5
add.d.v
pop.v.v self.famt
push.v self.famt
pushi.e 8
cmp.i.v GTE
bf [141]

:[140]
pushi.e 2
pop.v.i self.draw_f

:[141]
push.v self.draw_f
pushi.e 2
cmp.i.v EQ
bf [143]

:[142]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.fy
push.v self.fx
pushi.e 8
conv.i.v
pushi.e 647
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.fy
push.v self.fx
pushglb.v global.faceemotion
pushi.e 670
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[143]
push.v self.draw_f
pushi.e 3
cmp.i.v EQ
bf [146]

:[144]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.fy
push.v self.fx
push.v self.famt
call.i floor(argc=1)
pushi.e 647
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.famt
push.d 0.5
sub.d.v
pop.v.v self.famt
push.v self.famt
pushi.e 0
cmp.i.v LTE
bf [146]

:[145]
pushi.e 4
pop.v.i self.draw_f

:[146]
push.v self.con
pushi.e 54
cmp.i.v EQ
bf [end]

:[147]
push.v self.blk
call.i draw_set_alpha(argc=1)
popz.v
push.v self.blk
push.d 0.01
add.d.v
pop.v.v self.blk
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
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
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]
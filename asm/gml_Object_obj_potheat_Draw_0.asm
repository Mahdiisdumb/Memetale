.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.stir
neg.v
pushi.e 6
mul.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 45
conv.i.v
pushi.e 169
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 32
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 304
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 6
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 16
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 29
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 301
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 9
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 19
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_potheat_73"@21652
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 11
conv.i.v
pushi.e 30
conv.i.v
call.i scr_drawtext_icons(argc=3)
popz.v
push.v 1575.right
conv.v.b
bf [3]

:[1]
push.v self.stir
pushi.e 1
add.i.v
pop.v.v self.stir
push.v self.jingle
pushi.e 1
add.i.v
pop.v.v self.jingle
push.v self.jingle
pushi.e 10
cmp.i.v GT
bf [3]

:[2]
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
push.v self.rot
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i self.jingle

:[3]
push.v 1575.left
conv.v.b
bf [5]

:[4]
pushi.e 1
pop.v.i self.wrong

:[5]
push.v self.stime
pushi.e 1
add.i.v
pop.v.v self.stime
push.v self.wrong
pushi.e 1
cmp.i.v EQ
bf [8]

:[6]
push.v self.wrongval
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.d 0.8
conv.d.v
push.v self.fire
call.i caster_set_pitch(argc=2)
popz.v
push.d 0.55
conv.d.v
push.v self.fire
call.i caster_set_volume(argc=2)
popz.v
pushi.e 1
pop.v.i self.wrongval
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_potheat_108"@21654
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_potheat_109"@21656
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.side

:[11]
push.v self.stir
pushi.e 50
cmp.i.v GT
bf [13]

:[12]
push.v self.sval
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [18]

:[15]
push.d 0.9
conv.d.v
push.v self.fire
call.i caster_set_pitch(argc=2)
popz.v
push.d 0.6
conv.d.v
push.v self.fire
call.i caster_set_volume(argc=2)
popz.v
push.v self.pot
conv.v.i
pushenv [17]

:[16]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[17]
popenv [16]
push.v self.sval
pushi.e 1
add.i.v
pop.v.v self.sval

:[18]
push.v self.stir
pushi.e 100
cmp.i.v GT
bf [21]

:[19]
push.v self.sval
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [26]

:[23]
pushi.e 1
conv.i.v
push.v self.fire
call.i caster_set_pitch(argc=2)
popz.v
push.d 0.66
conv.d.v
push.v self.fire
call.i caster_set_volume(argc=2)
popz.v
push.v self.pot
conv.v.i
pushenv [25]

:[24]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[25]
popenv [24]
pushi.e 2
pop.v.i self.sval
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_potheat_132"@21658
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.side

:[26]
push.v self.stir
pushi.e 150
cmp.i.v GT
bf [28]

:[27]
push.v self.sval
pushi.e 2
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [33]

:[30]
push.d 1.1
conv.d.v
push.v self.fire
call.i caster_set_pitch(argc=2)
popz.v
push.d 0.72
conv.d.v
push.v self.fire
call.i caster_set_volume(argc=2)
popz.v
push.v self.pot
conv.v.i
pushenv [32]

:[31]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[32]
popenv [31]
push.v self.sval
pushi.e 1
add.i.v
pop.v.v self.sval

:[33]
push.v self.stir
pushi.e 200
cmp.i.v GT
bf [36]

:[34]
push.v self.sval
pushi.e 3
cmp.i.v EQ
bf [36]

:[35]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [41]

:[38]
push.d 1.2
conv.d.v
push.v self.fire
call.i caster_set_pitch(argc=2)
popz.v
push.d 0.78
conv.d.v
push.v self.fire
call.i caster_set_volume(argc=2)
popz.v
push.v self.pot
conv.v.i
pushenv [40]

:[39]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[40]
popenv [39]
pushi.e 4
pop.v.i self.sval
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_potheat_155"@21660
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.side

:[41]
push.v self.stir
pushi.e 250
cmp.i.v GT
bf [43]

:[42]
push.v self.sval
pushi.e 4
cmp.i.v EQ
b [44]

:[43]
push.e 0

:[44]
bf [48]

:[45]
push.d 1.3
conv.d.v
push.v self.fire
call.i caster_set_pitch(argc=2)
popz.v
push.d 0.83
conv.d.v
push.v self.fire
call.i caster_set_volume(argc=2)
popz.v
push.v self.pot
conv.v.i
pushenv [47]

:[46]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[47]
popenv [46]
push.v self.sval
pushi.e 1
add.i.v
pop.v.v self.sval

:[48]
push.v self.stir
pushi.e 300
cmp.i.v GT
bf [51]

:[49]
push.v self.sval
pushi.e 5
cmp.i.v EQ
bf [51]

:[50]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [56]

:[53]
push.d 1.4
conv.d.v
push.v self.fire
call.i caster_set_pitch(argc=2)
popz.v
push.d 0.87
conv.d.v
push.v self.fire
call.i caster_set_volume(argc=2)
popz.v
push.v self.pot
conv.v.i
pushenv [55]

:[54]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[55]
popenv [54]
pushi.e 6
pop.v.i self.sval
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_potheat_179"@21662
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.side

:[56]
push.v self.stir
pushi.e 360
cmp.i.v GT
bf [59]

:[57]
push.v self.sval
pushi.e 99
cmp.i.v LT
bf [59]

:[58]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [64]

:[61]
pushi.e 360
pop.v.i self.stir
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v
push.d 1.7
conv.d.v
push.v self.fire
call.i caster_set_pitch(argc=2)
popz.v
push.d 0.95
conv.d.v
push.v self.fire
call.i caster_set_volume(argc=2)
popz.v
push.v self.pot
conv.v.i
pushenv [63]

:[62]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[63]
popenv [62]
pushi.e 99
pop.v.i self.sval
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_potheat_196"@21664
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 250
pop.v.i 1065.con
call.i instance_destroy(argc=0)
popz.v

:[64]
push.v self.stime
pushi.e 500
cmp.i.v GT
bf [67]

:[65]
push.v self.sval
pushi.e 99
cmp.i.v LT
bf [67]

:[66]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e 101
pop.v.i self.sval
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_potheat_211"@21666
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.side

:[70]
push.v self.sval
pushi.e 101
cmp.i.v EQ
bf [72]

:[71]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [73]

:[72]
push.e 0

:[73]
bf [end]

:[74]
pushglb.v global.currentsong
call.i caster_stop(argc=1)
popz.v
push.d 1.7
conv.d.v
push.v self.fire
call.i caster_set_pitch(argc=2)
popz.v
push.d 0.95
conv.d.v
push.v self.fire
call.i caster_set_volume(argc=2)
popz.v
pushi.e 102
pop.v.i self.sval

:[75]
push.v self.pot
conv.v.i
push.v [stacktop]self.level
pushi.e 8
cmp.i.v LT
bf [79]

:[76]
push.v self.pot
conv.v.i
pushenv [78]

:[77]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[78]
popenv [77]
b [75]

:[79]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_potheat_232"@21668
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 250
pop.v.i 1065.con
call.i instance_destroy(argc=0)
popz.v

:[end]
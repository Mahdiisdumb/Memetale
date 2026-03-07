.localvar 0 arguments
.localvar 1 text_x 10631

:[0]
push.v self.x
pushi.e -100
cmp.i.v LT
bf [4]

:[1]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 4
add.i.v
pop.i.v [array]self.view_xview
b [4]

:[3]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview

:[4]
pushi.e 10
pop.v.i local.text_x
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [6]

:[5]
pushi.e -2
pop.v.i local.text_x

:[6]
push.v self.x
pushi.e -440
cmp.i.v GT
bf [8]

:[7]
push.v self.td
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [13]

:[10]
pushi.e 1
pop.v.i self.td
pushi.e 1695
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 20
add.i.v
pushloc.v local.text_x
call.i instance_create(argc=3)
pop.v.v self.t1
push.s "castroll_name_asgore"@32956
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t1
conv.v.i
pop.v.v [stacktop]self.text
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [12]

:[11]
pushi.e -3
push.v self.t1
conv.v.i
pop.v.i [stacktop]self.text_xofs

:[12]
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t1
conv.v.i
pop.v.v [stacktop]self.text2

:[13]
push.v self.x
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
push.v self.td
pushi.e 1
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [20]

:[17]
pushi.e 1695
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 120
add.i.v
pushloc.v local.text_x
call.i instance_create(argc=3)
pop.v.v self.t2
push.s "castroll_name_monster_kid"@32958
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t2
conv.v.i
pop.v.v [stacktop]self.text
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [19]

:[18]
pushi.e -3
push.v self.t2
conv.v.i
pop.v.i [stacktop]self.text_xofs

:[19]
push.s "castroll_by_magnolia_porter_2line"@32960
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t2
conv.v.i
pop.v.v [stacktop]self.text2
pushi.e 2
pop.v.i self.td

:[20]
push.v self.x
pushi.e 195
cmp.i.v GTE
bf [22]

:[21]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 0
pop.v.i self.hspeed
pushi.e 198
pop.v.i self.x
pushi.e 1
pop.v.i self.con
pushi.e 1479
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 2560
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e -1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [28]

:[26]
push.v self.image_index
pushi.e 19
cmp.i.v GTE
bf [28]

:[27]
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[28]
push.v self.y
pushi.e 360
cmp.i.v LT
bf [30]

:[29]
push.v self.td
pushi.e 2
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [37]

:[32]
push.v self.t1
conv.v.i
pushenv [34]

:[33]
pushi.e 1
pop.v.i self.fader

:[34]
popenv [33]
push.v self.t2
conv.v.i
pushenv [36]

:[35]
pushi.e 1
pop.v.i self.fader

:[36]
popenv [35]
pushi.e 3
pop.v.i self.td

:[37]
push.v self.t3
call.i instance_exists(argc=1)
conv.v.b
bf [40]

:[38]
push.v self.t3
conv.v.i
push.v [stacktop]self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 84
add.i.v
cmp.v.v GT
bf [40]

:[39]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 84
add.i.v
push.v self.t3
conv.v.i
pop.v.v [stacktop]self.y

:[40]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [42]

:[41]
pushi.e 2559
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.1
push.v self.asg
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 10
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.v self.x
pushi.e 13
add.i.v
pop.v.v self.x
pushi.e 1490
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
pushi.e -1
pop.v.i self.vspeed
pushi.e 4
pop.v.i self.con

:[42]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[43]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v GT
bf [45]

:[44]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 1
sub.i.v
pop.i.v [array]self.view_yview
b [end]

:[45]
push.d -0.5
pop.v.d self.vspeed
push.d 0.1
pop.v.d self.image_speed
push.v self.t3
call.i instance_exists(argc=1)
conv.v.b
bf [47]

:[46]
pushi.e 1
push.v self.t3
conv.v.i
pop.v.i [stacktop]self.fader
b [end]

:[47]
push.v self.vol
push.d 0.01
sub.d.v
pop.v.v self.vol
push.v self.vol
pushi.e -3
conv.i.v
call.i caster_set_volume(argc=2)
popz.v
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_xview
pushi.e 2
sub.i.v
pop.i.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e -200
cmp.i.v LT
bf [end]

:[48]
pushi.e 283
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]
.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e 0
cmp.i.v GT
bf [58]

:[1]
pushi.e 187
conv.i.v
push.v self.ystart
pushi.e 24
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 21
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
push.v self.mycommand
pushi.e 0
cmp.i.v GTE
bf [3]

:[2]
push.v self.mycommand
pushi.e 40
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.s "obj_napstablook_294"@18748
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
push.v self.mycommand
pushi.e 40
cmp.i.v GTE
bf [8]

:[7]
push.v self.mycommand
pushi.e 66
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.s "obj_napstablook_295"@18750
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
push.v self.mycommand
pushi.e 66
cmp.i.v GTE
bf [13]

:[12]
push.v self.mycommand
conv.v.b
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.s "obj_napstablook_296"@18752
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[16]
push.v self.whatiheard
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
push.s "obj_napstablook_297"@18754
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[18]
push.v self.whatiheard
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_napstablook_298"@18756
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_napstablook_299"@18758
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_napstablook_300"@18760
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [26]

:[25]
push.v self.mercymod
pushi.e -300
cmp.i.v GT
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.s "obj_napstablook_301"@18762
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[29]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [31]

:[30]
push.v self.mercymod
pushi.e -200
cmp.i.v GT
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
push.s "obj_napstablook_302"@18764
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[34]
push.v self.whatiheard
pushi.e 4
cmp.i.v NEQ
bf [38]

:[35]
push.v self.whatiheard
pushi.e 3
cmp.i.v NEQ
bf [38]

:[36]
push.v self.mercymod
pushi.e -50
cmp.i.v EQ
bf [38]

:[37]
push.v self.mercer
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [44]

:[40]
push.s "obj_napstablook_305"@18766
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -1200
pop.v.i self.mercymod
pushi.e 623
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [44]

:[41]
pushi.e 623
pushenv [43]

:[42]
call.i instance_destroy(argc=0)
popz.v

:[43]
popenv [42]

:[44]
push.v self.whatiheard
pushi.e 3
cmp.i.v EQ
bf [46]

:[45]
push.v self.mercymod
pushi.e -49
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
push.s "obj_napstablook_311"@18768
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 60
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
push.d 10.3
pop.v.d global.plot

:[49]
push.v self.whatiheard
pushi.e 4
cmp.i.v EQ
bf [51]

:[50]
push.v self.mercymod
pushi.e -49
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
push.s "obj_napstablook_317"@18770
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 60
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
push.d 10.3
pop.v.d global.plot
b [57]

:[54]
pushi.e 3
pop.v.i global.border
pushglb.v global.turn
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e 5
pop.v.i global.border

:[56]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y

:[57]
push.s "obj_napstablook_329"@18771
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pop.v.i global.typer
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
b [63]

:[58]
push.v self.dmgwriter
call.i instance_exists(argc=1)
conv.v.b
bf [62]

:[59]
push.v self.dmgwriter
conv.v.i
pushenv [61]

:[60]
call.i instance_destroy(argc=0)
popz.v

:[61]
popenv [60]

:[62]
pushi.e 188
conv.i.v
push.v self.y
pushi.e 24
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 11
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 0
pop.v.i global.msc
push.s "obj_napstablook_339"@18773
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_napstablook_340"@18775
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_napstablook_341"@18777
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_napstablook_342"@18779
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_napstablook_343"@18781
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_napstablook_344"@18783
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 11
pop.v.i global.plot
pushi.e 1
pop.v.i self.conversation
push.d 0.2
pop.v.d self.image_speed
pushi.e 2
pop.v.i global.typer
pushi.e 784
conv.i.v
push.v 188.y
pushi.e 10
add.i.v
push.v 188.x
pushi.e 36
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwriter
pushi.e 2
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm

:[63]
pushi.e 0
pop.v.i self.mercer

:[end]
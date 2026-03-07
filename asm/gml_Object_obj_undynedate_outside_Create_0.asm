.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.d
pushi.e 1571
conv.i.v
pushi.e -24
conv.i.v
pushi.e 30
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.housesprite
push.v self.housesprite
conv.v.i
pushenv [2]

:[1]
push.i 950000
pop.v.i self.depth

:[2]
popenv [1]
pushi.e 1523
conv.i.v
pushi.e 40
conv.i.v
pushi.e 130
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.door
push.v self.door
conv.v.i
pushenv [4]

:[3]
push.i 900000
pop.v.i self.depth

:[4]
popenv [3]
push.v self.door
conv.v.i
pushenv [6]

:[5]
pushi.e 0
pop.v.i self.image_speed

:[6]
popenv [5]
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [14]

:[7]
push.v self.housesprite
conv.v.i
pushenv [9]

:[8]
pushi.e 1572
pop.v.i self.sprite_index

:[9]
popenv [8]
push.v self.housesprite
conv.v.i
pushenv [11]

:[10]
push.d 0.2
pop.v.d self.image_speed

:[11]
popenv [10]
push.v self.door
conv.v.i
pushenv [13]

:[12]
pushi.e 0
pop.v.i self.visible

:[13]
popenv [12]

:[14]
pushi.e -5
pushi.e 354
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [18]

:[15]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [18]

:[16]
pushi.e -5
pushi.e 88
push.v [array]global.flag
pushi.e 3
cmp.i.v GTE
bf [18]

:[17]
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 2
cmp.i.v LTE
b [19]

:[18]
push.e 0

:[19]
bf [23]

:[20]
pushi.e 1028
conv.i.v
pushi.e 80
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.papyrus
push.v self.papyrus
conv.v.i
pushenv [22]

:[21]
pushi.e 1405
pop.v.i self.sprite_index

:[22]
popenv [21]

:[23]
pushglb.v global.plot
pushi.e 122
cmp.i.v LT
bf [25]

:[24]
pushi.e 1
pop.v.i self.d

:[25]
pushi.e -5
pushi.e 354
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [27]

:[26]
pushi.e 1
pop.v.i self.d

:[27]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1
pop.v.i self.d

:[29]
pushi.e -5
pushi.e 88
push.v [array]global.flag
pushi.e 4
cmp.i.v LT
bf [31]

:[30]
pushi.e 1
pop.v.i self.d

:[31]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushi.e 1
pop.v.i self.d

:[33]
pushi.e -5
pushi.e 350
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
pushi.e 1
pop.v.i self.d

:[35]
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [37]

:[36]
pushi.e 1
pop.v.i self.d

:[37]
pushglb.v global.kills
pushi.e 0
cmp.i.v GT
bf [39]

:[38]
pushi.e 1
pop.v.i self.d

:[39]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[41]
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [45]

:[42]
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
push.s "music/undynepiano.ogg"@2854
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 1345
pushenv [44]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[44]
popenv [43]

:[45]
pushi.e 0
pop.v.i self.con

:[end]
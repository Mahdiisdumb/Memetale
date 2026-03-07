.localvar 0 arguments

:[0]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview
pushi.e 1
pop.v.i self.reg
pushi.e 0
pop.v.i self.up
pushbltn.v self.room
pushi.e 70
cmp.i.v EQ
pushi.e 1
cmp.i.b EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.up

:[2]
pushglb.v global.plot
pushi.e 122
cmp.i.v LT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[4]
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [8]

:[5]
pushi.e -5
pushi.e 460
push.v [array]global.flag
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pushi.e -5
pushi.e 461
pop.v.i [array]global.flag
b [8]

:[7]
pushi.e 0
pushi.e -5
pushi.e 461
pop.v.i [array]global.flag

:[8]
pushi.e -5
pushi.e 461
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.reg
b [11]

:[10]
pushi.e 1
pop.v.i self.reg

:[11]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.dogy
push.v self.reg
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1619
pop.v.i self.sprite_index

:[13]
pushi.e 0
pop.v.i self.cc
pushi.e 0
pop.v.i self.bgspeed
pushi.e 0
pop.v.i self.lapbg
pushi.e 1075
conv.i.v
push.v self.y
pushi.e 15
sub.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.rman
push.v self.rman
conv.v.i
push.v [stacktop]self.depth
pushi.e 10
add.i.v
pop.v.v self.depth
push.i 999999
pop.v.i self.snapper
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.type
pushbltn.v self.room
pushi.e 316
cmp.i.v EQ
bf [15]

:[14]
push.v self.type
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [28]

:[17]
pushi.e 99
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.type
push.i 900000
pop.v.i self.depth
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 340
pop.v.i self.x
pushi.e 1
pop.v.i self.lapbg
pushi.e 6
pop.v.i self.con
pushi.e -5
pushi.e 461
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
pop.v.i self.reg
b [20]

:[19]
pushi.e 0
pop.v.i self.reg

:[20]
push.v self.reg
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1618
pop.v.i self.sprite_index

:[22]
push.v self.reg
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1619
pop.v.i self.sprite_index

:[24]
pushi.e 1576
pop.v.i self.snapper
pushi.e 1
pop.v.i global.interact
push.v self.reg
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushi.e 8
pop.v.i self.bgspeed

:[26]
push.v self.reg
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 4
pop.v.i self.bgspeed

:[28]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushglb.v global.entrance
pushi.e 24
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [39]

:[32]
pushi.e 1576
pop.v.i self.snapper
pushi.e 99
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.lapbg
push.i 900000
pop.v.i self.depth
pushi.e 1
pop.v.i 1576.cutscene
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 340
pop.v.i self.x
pushi.e 50
pop.v.i self.con
pushi.e -5
pushi.e 461
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.i self.reg
b [35]

:[34]
pushi.e 0
pop.v.i self.reg

:[35]
push.v self.reg
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
pushi.e 1618
pop.v.i self.sprite_index

:[37]
push.v self.reg
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
pushi.e 1619
pop.v.i self.sprite_index

:[39]
push.v self.lapbg
pushi.e 1
cmp.i.v EQ
bf [41]

:[40]
pushi.e -320
pop.v.i self.tilex
pushi.e 0
conv.i.v
pushi.e -320
conv.i.v
push.i 1000000
conv.i.v
call.i tile_layer_shift(argc=3)
popz.v

:[41]
push.v self.up
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
push.i 950000
pop.v.i self.depth

:[43]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[end]
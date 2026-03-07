.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.z_b
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
push.v self.z_a
push.v self.siner
mul.v.v
call.i cos(argc=1)
push.v self.z_b
mul.v.v
pop.v.v self.hspeed

:[2]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 6
add.i.v
push.v self.x
push.v self.len
add.v.v
push.v self.y
push.v self.x
push.v self.len
sub.v.v
call.i draw_rectangle(argc=5)
popz.v
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 4
sub.i.v
push.v self.x
push.v self.len
add.v.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
push.v self.len
sub.v.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
pushi.e 4
sub.i.v
push.v self.x
push.v self.len
add.v.v
pushi.e 2
sub.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
push.v self.len
sub.v.v
pushi.e 2
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [9]

:[3]
push.v 744.vspeed
pushi.e 0
cmp.i.v GTE
bf [5]

:[4]
push.v 744.y
push.v self.y
pushi.e 11
sub.i.v
cmp.v.v LTE
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i self.lock
push.v self.y
pushi.e 16
sub.i.v
pop.v.v 744.y
pushi.e 0
pop.v.i 744.vspeed
pushi.e 1
pop.v.i 744.jumpstage

:[8]
b [15]

:[9]
push.v self.lock
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v 744.jumpstage
pushi.e 1
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 2
pop.v.i 744.jumpstage
pushi.e 0
pop.v.i 744.vspeed

:[14]
pushi.e 0
pop.v.i self.lock

:[15]
push.v self.lock
pushi.e 1
cmp.i.v EQ
bf [20]

:[16]
push.v 744.x
push.v self.hspeed
add.v.v
pop.v.v 744.x
push.v 744.y
push.v self.vspeed
add.v.v
pop.v.v 744.y
push.v 744.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 5
add.i.v
cmp.v.v LT
bf [18]

:[17]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 5
add.i.v
pop.v.v 744.x

:[18]
push.v 744.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 16
sub.i.v
cmp.v.v GT
bf [20]

:[19]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 16
sub.i.v
pop.v.v 744.x

:[20]
push.v self.x
pushi.e 0
push.v self.len
sub.v.i
cmp.v.v LT
bf [22]

:[21]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
push.v self.x
pushi.e 640
push.v self.len
add.v.i
cmp.v.v GT
bf [27]

:[26]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
push.v self.vspeed
pushi.e 0
cmp.i.v GT
bf [32]

:[31]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v GT
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
call.i instance_destroy(argc=0)
popz.v

:[35]
push.v self.jud
pushi.e 1
cmp.i.v EQ
bf [end]

:[36]
push.v self.jtimer
pushi.e 1
add.i.v
pop.v.v self.jtimer
push.v self.jtimer
pushi.e 5
cmp.i.v GTE
bf [38]

:[37]
push.v self.jtimer
pushi.e 20
cmp.i.v LTE
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
push.v self.hspeed
push.d 0.25
add.d.v
pop.v.v self.hspeed

:[41]
push.v self.jtimer
pushi.e 21
cmp.i.v EQ
bf [43]

:[42]
pushi.e 3
pop.v.i self.hspeed

:[43]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.len
sub.v.v
cmp.v.v GT
bf [46]

:[44]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [46]

:[45]
push.v self.hspeed
pushi.e -1
mul.i.v
pop.v.v self.hspeed

:[46]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.len
add.v.v
cmp.v.v LT
bf [end]

:[47]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [end]

:[48]
push.v self.hspeed
pushi.e -1
mul.i.v
pop.v.v self.hspeed

:[end]
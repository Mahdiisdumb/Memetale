.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v self.wall_l
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pop.v.v self.wall_r
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pop.v.v self.wall_d
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.wall_u
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.vside
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.hside
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.peepee
push.v self.peepee
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[1]
push.v self.vside
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.wall_u
pushi.e 60
sub.i.v
push.v self.peepee
conv.v.i
pop.v.v [stacktop]self.y
push.v self.spd
push.v self.peepee
conv.v.i
pop.v.v [stacktop]self.vspeed

:[3]
push.v self.vside
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.wall_d
pushi.e 40
add.i.v
push.v self.peepee
conv.v.i
pop.v.v [stacktop]self.y
push.v self.spd
neg.v
push.v self.peepee
conv.v.i
pop.v.v [stacktop]self.vspeed

:[5]
push.v self.hside
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.wall_l
pushi.e 40
sub.i.v
push.v self.peepee
conv.v.i
pop.v.v [stacktop]self.x
push.v self.spd
push.v self.peepee
conv.v.i
pop.v.v [stacktop]self.hspeed

:[7]
push.v self.hside
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.wall_r
pushi.e 40
add.i.v
push.v self.peepee
conv.v.i
pop.v.v [stacktop]self.x
push.v self.spd
neg.v
push.v self.peepee
conv.v.i
pop.v.v [stacktop]self.hspeed

:[9]
push.v self.hside
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.peepee
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.v self.wall_r
push.v self.wall_l
sub.v.v
pushi.e 20
sub.i.v
call.i random(argc=1)
pushi.e 100
sub.i.v
add.v.v
pop.i.v [stacktop]self.x

:[11]
push.v self.hside
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v self.peepee
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.v self.wall_r
push.v self.wall_l
sub.v.v
pushi.e 20
sub.i.v
call.i random(argc=1)
pushi.e 100
sub.i.v
sub.v.v
pop.i.v [stacktop]self.x

:[13]
push.d -0.05
push.v self.peepee
conv.v.i
pop.v.d [stacktop]self.friction
push.v self.dmg
push.v self.peepee
conv.v.i
pop.v.v [stacktop]self.dmg

:[14]
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]
.localvar 0 arguments

:[0]
pushi.e 6
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.slot
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 6
conv.i.d
div.d.v
push.v self.slot
mul.v.v
add.v.v
pop.v.v self.myx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pop.v.v self.myy
pushi.e 632
conv.i.v
push.v self.myy
push.v self.myx
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[1]
push.v 744.x
pushi.e 8
add.i.v
push.v self.myx
cmp.v.v LT
bf [3]

:[2]
push.d -0.5
push.v self.iii
conv.v.i
pop.v.d [stacktop]self.hspeed

:[3]
push.v 744.x
pushi.e 8
add.i.v
push.v self.myx
cmp.v.v GT
bf [5]

:[4]
push.d 0.5
push.v self.iii
conv.v.i
pop.v.d [stacktop]self.hspeed

:[5]
pushi.e 168
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg

:[6]
push.v self.firingspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]
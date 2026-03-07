.localvar 0 arguments

:[0]
pushi.e 7
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 629
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 4
sub.i.v
push.v 744.x
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blt
push.v self.blt
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.blt
conv.v.i
pop.v.v [stacktop]self.dmg

:[2]
pushi.e 629
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 4
sub.i.v
push.v 744.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blt
push.v self.blt
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[3]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.blt
conv.v.i
pop.v.v [stacktop]self.dmg

:[end]
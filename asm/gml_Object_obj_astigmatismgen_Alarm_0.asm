.localvar 0 arguments

:[0]
pushi.e 394
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderheight(argc=1)
pushi.e 10
add.i.v
call.i random(argc=1)
add.v.v
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 90
add.i.v
call.i instance_create(argc=3)
pop.v.v self.ab
push.v self.ab
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.dmg
push.v self.ab
conv.v.i
pop.v.v [stacktop]self.dmg

:[2]
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]
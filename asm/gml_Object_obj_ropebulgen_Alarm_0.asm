.localvar 0 arguments

:[0]
pushi.e 340
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 100
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.g
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.dmg
push.v self.g
conv.v.i
pop.v.v [stacktop]self.dmg

:[2]
pushi.e 24
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]
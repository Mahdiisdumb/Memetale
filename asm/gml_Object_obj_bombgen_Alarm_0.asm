.localvar 0 arguments

:[0]
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
pushi.e 50
add.i.v
pushi.e 100
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.randomx
pushi.e 346
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 20
sub.i.v
push.v self.randomx
call.i instance_create(argc=3)
pop.v.v self.b
push.v self.b
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.dmg
push.v self.b
conv.v.i
pop.v.v [stacktop]self.dmg

:[2]
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]
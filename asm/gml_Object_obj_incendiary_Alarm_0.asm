.localvar 0 arguments

:[0]
push.v self.number
pushi.e 12
cmp.i.v LT
bf [end]

:[1]
pushi.e 324
conv.i.v
push.v self.y
pushi.e 18
sub.i.v
push.v self.x
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 4
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.bomb2
push.v self.bomb2
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[2]
push.v self.hspeed
push.v self.bomb2
conv.v.i
pop.v.v [stacktop]self.hspeed
push.v self.number
pushi.e 1
add.i.v
push.v self.bomb2
conv.v.i
pop.v.v [stacktop]self.number
push.v self.dmg
push.v self.bomb2
conv.v.i
pop.v.v [stacktop]self.dmg

:[end]
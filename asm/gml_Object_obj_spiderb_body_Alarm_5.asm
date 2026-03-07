.localvar 0 arguments

:[0]
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 362
conv.i.v
push.v self.y
pushi.e 130
add.i.v
push.v self.sinert
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 362
conv.i.v
push.v self.y
pushi.e 130
add.i.v
push.v self.sinert
pushi.e 5
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 140
add.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.g
conv.v.i
push.v [stacktop]self.hspeed
neg.v
push.v self.g
conv.v.i
pop.v.v [stacktop]self.hspeed
pushi.e 220
push.v self.g
conv.v.i
pop.v.i [stacktop]self.gravity_direction
pushi.e 4
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]
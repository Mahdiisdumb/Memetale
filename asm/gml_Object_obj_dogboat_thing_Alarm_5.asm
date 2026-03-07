.localvar 0 arguments

:[0]
pushi.e 5
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 1077
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.dogy
add.v.v
push.v self.x
pushi.e 78
add.i.v
call.i instance_create(argc=3)
pop.v.v self.p
push.v self.hspeed
pushi.e 7
add.i.v
push.v self.p
conv.v.i
pop.v.v [stacktop]self.hspeed

:[end]
.localvar 0 arguments

:[0]
pushi.e 27
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 437
conv.i.v
pushi.e 20
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.s
pushi.e 3
push.v self.s
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 437
conv.i.v
pushi.e 20
conv.i.v
push.v self.s
conv.v.i
push.v [stacktop]self.x
pushi.e 100
add.i.v
call.i instance_create(argc=3)
pop.v.v self.s
pushi.e 3
push.v self.s
conv.v.i
pop.v.i [stacktop]self.vspeed

:[end]
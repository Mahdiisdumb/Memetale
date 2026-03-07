.localvar 0 arguments

:[0]
pushi.e 516
conv.i.v
pushi.e 900
conv.i.v
pushi.e 900
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bone
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushbltn.v self.argument0
sub.v.v
push.v self.bone
conv.v.i
pop.v.v [stacktop]self.y
pushbltn.v self.argument1
push.v self.bone
conv.v.i
pop.v.v [stacktop]self.hspeed
pushi.e 320
pushbltn.v self.argument2
pushbltn.v self.argument1
mul.v.v
sub.v.i
push.v self.bone
conv.v.i
pop.v.v [stacktop]self.x
pushbltn.v self.argument3
push.v self.bone
conv.v.i
pop.v.v [stacktop]self.len

:[end]
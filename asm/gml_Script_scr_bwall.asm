.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushbltn.v self.argument3
cmp.v.v LT
bf [end]

:[2]
pushi.e 502
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
push.v self.bone
conv.v.i
push.v [stacktop]self.x
pushi.e 320
cmp.i.v LT
bf [4]

:[3]
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.v self.i
pushi.e 15
mul.i.v
sub.v.v
pop.i.v [stacktop]self.x

:[4]
push.v self.bone
conv.v.i
push.v [stacktop]self.x
pushi.e 320
cmp.i.v GT
bf [6]

:[5]
push.v self.bone
conv.v.i
dup.i 0
push.v [stacktop]self.x
push.v self.i
pushi.e 15
mul.i.v
add.v.v
pop.i.v [stacktop]self.x

:[6]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]
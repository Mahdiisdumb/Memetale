.localvar 0 arguments

:[0]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [7]

:[1]
push.v self.parent
conv.v.i
push.v [stacktop]self.x
push.v self.parent
conv.v.i
push.v [stacktop]self.xprevious
cmp.v.v NEQ
bf [6]

:[2]
push.v self.parent
conv.v.i
push.v [stacktop]self.x
push.v self.parent
conv.v.i
push.v [stacktop]self.xprevious
sub.v.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v self.hspeed
push.v self.friction
add.v.v
pop.v.v self.hspeed

:[4]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
push.v self.hspeed
push.v self.friction
sub.v.v
pop.v.v self.hspeed

:[6]
push.v self.parent
conv.v.i
push.v [stacktop]self.y
push.v self.relative
sub.v.v
pop.v.v self.y

:[7]
push.v self.x
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 2
sub.i.v
cmp.v.v LT
bf [9]

:[8]
push.v self.on
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 0
pop.v.i self.on
pushi.e -4
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.fall
pushi.e 1274
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.parent
conv.v.i
push.v [stacktop]self.y
pushi.e 30
add.i.v
push.v self.g
conv.v.i
pop.v.v [stacktop]self.fally
push.v self.fall
push.v self.g
conv.v.i
pop.v.v [stacktop]self.fall
push.v self.friction
push.v self.g
conv.v.i
pop.v.v [stacktop]self.friction
push.v self.hspeed
push.v self.g
conv.v.i
pop.v.v [stacktop]self.hspeed
call.i instance_destroy(argc=0)
popz.v

:[12]
push.v self.x
push.v self.parent
conv.v.i
push.v [stacktop]self.x
pushi.e 18
add.i.v
cmp.v.v GT
bf [14]

:[13]
push.v self.on
pushi.e 1
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
pushi.e 4
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.on
pushi.e 6
pop.v.i self.fall
pushi.e 1274
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.friction
push.v self.g
conv.v.i
pop.v.v [stacktop]self.friction
push.v self.parent
conv.v.i
push.v [stacktop]self.y
pushi.e 30
add.i.v
push.v self.g
conv.v.i
pop.v.v [stacktop]self.fally
push.v self.fall
push.v self.g
conv.v.i
pop.v.v [stacktop]self.fall
push.v self.hspeed
push.v self.g
conv.v.i
pop.v.v [stacktop]self.hspeed
call.i instance_destroy(argc=0)
popz.v

:[end]
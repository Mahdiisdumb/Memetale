.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.on
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v GT
bf [2]

:[1]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
cmp.v.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.on

:[5]
push.v self.y
push.v 762.y
pushi.e 20
sub.i.v
cmp.v.v GTE
bf [8]

:[6]
push.v self.y
push.v 762.y
cmp.v.v LT
bf [8]

:[7]
push.v self.on
pushi.e 1
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [end]

:[10]
pushi.e 324
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bomb
push.v self.bomb
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[11]
pushi.e 1
push.v self.bomb
conv.v.i
pop.v.i [stacktop]self.number
push.v self.hspeed
push.v self.bomb
conv.v.i
pop.v.v [stacktop]self.hspeed
push.v self.dmg
push.v self.bomb
conv.v.i
pop.v.v [stacktop]self.dmg

:[12]
call.i instance_destroy(argc=0)
popz.v

:[end]
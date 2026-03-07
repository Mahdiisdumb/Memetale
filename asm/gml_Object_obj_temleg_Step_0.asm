.localvar 0 arguments

:[0]
push.v self.control
pushi.e 1
cmp.i.v EQ
bf [12]

:[1]
push.v 1575.right
conv.v.b
bf [3]

:[2]
push.v self.hspeed
push.d 0.2
add.d.v
pop.v.v self.hspeed

:[3]
push.v 1575.left
conv.v.b
bf [5]

:[4]
push.v self.hspeed
push.d 0.2
sub.d.v
pop.v.v self.hspeed

:[5]
push.v 1575.down
conv.v.b
bf [7]

:[6]
push.v self.height
pushi.e 4
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.height
pushi.e 1
sub.i.v
pop.v.v self.height
push.v self.y
pushi.e 1
add.i.v
pop.v.v self.y

:[10]
push.v 1575.up
conv.v.b
bf [12]

:[11]
push.v self.height
pushi.e 1
add.i.v
pop.v.v self.height
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y

:[12]
push.v self.siner
push.v self.hspeed
sub.v.v
pop.v.v self.siner
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[end]
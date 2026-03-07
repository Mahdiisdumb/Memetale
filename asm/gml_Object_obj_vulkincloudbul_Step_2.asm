.localvar 0 arguments

:[0]
push.v self.x
push.v 759.x
pushi.e 4
add.i.v
cmp.v.v LT
bf [2]

:[1]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.hspeed

:[2]
push.v self.y
push.v 760.y
pushi.e 4
add.i.v
cmp.v.v LT
bf [4]

:[3]
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed

:[4]
push.v self.x
push.v 761.x
pushi.e 4
sub.i.v
cmp.v.v GT
bf [6]

:[5]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.hspeed

:[6]
push.v self.y
push.v 762.y
pushi.e 4
sub.i.v
cmp.v.v GT
bf [8]

:[7]
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed

:[8]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[9]
push.v self.mysp
pop.v.v global.sp
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
call.i instance_destroy(argc=0)
popz.v

:[end]
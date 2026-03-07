.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 744
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[3]
push.v 744.x
push.v self.x
sub.v.v
call.i abs(argc=1)
pushi.e 12
cmp.i.v LT
bf [5]

:[4]
pushi.e 1
pop.v.i self.g
push.d 0.1
pop.v.d self.friction
pushi.e -2
pop.v.i self.hspeed
b [7]

:[5]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.d -0.3
pop.v.d self.friction

:[7]
push.v 744.y
push.v self.y
sub.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [9]

:[8]
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y
b [end]

:[9]
push.v 744.y
push.v self.y
sub.v.v
push.v self.sprite_height
pushi.e 4
conv.i.d
div.d.v
cmp.v.v LT
bf [end]

:[10]
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y

:[end]
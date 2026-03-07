.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.xxx
push.v self.x
push.v 739.x
cmp.v.v LTE
bf [2]

:[1]
pushglb.v global.attackspeed
pushglb.v global.attackspeedr
call.i random(argc=1)
add.v.v
pop.v.v self.hspeed

:[2]
push.v self.x
push.v 739.x
push.v 739.sprite_width
add.v.v
cmp.v.v GT
bf [end]

:[3]
pushglb.v global.attackspeed
pushglb.v global.attackspeedr
call.i random(argc=1)
add.v.v
neg.v
pop.v.v self.hspeed

:[end]
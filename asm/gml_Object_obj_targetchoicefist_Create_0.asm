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
bf [4]

:[3]
pushglb.v global.attackspeed
pushglb.v global.attackspeedr
call.i random(argc=1)
add.v.v
neg.v
pop.v.v self.hspeed

:[4]
pushglb.v global.weapon
pushi.e 14
cmp.i.v EQ
bf [6]

:[5]
push.v self.hspeed
push.d 1.2
mul.d.v
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.punchtime
pushi.e 0
pop.v.i self.punches
pushi.e 30
pop.v.i self.maxpunchtime
pushi.e 4
pop.v.i self.maxpunches

:[6]
pushglb.v global.weapon
pushi.e 47
cmp.i.v EQ
bf [end]

:[7]
push.v self.hspeed
push.d 1.4
mul.d.v
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.punchtime
pushi.e 0
pop.v.i self.punches
pushi.e 30
pop.v.i self.maxpunchtime
pushi.e 5
pop.v.i self.maxpunches

:[end]
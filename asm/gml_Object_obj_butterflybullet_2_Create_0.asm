.localvar 0 arguments

:[0]
call.i scr_monstersum(argc=0)
pop.v.v self.sum
pushi.e -5
pop.v.i self.vspeed
push.v self.sum
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e -3
pop.v.i self.vspeed

:[2]
push.v self.direction
pushi.e 20
conv.i.v
call.i random(argc=1)
pushi.e 10
sub.i.v
add.v.v
pop.v.v self.direction
push.v self.direction
pop.v.v self.image_angle
push.d 0.5
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.dmg
pushi.e 0
pop.v.i self.off

:[end]
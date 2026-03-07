.localvar 0 arguments

:[0]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.direction
push.d 0.9
pop.v.d self.speed
push.d -0.1
pop.v.d self.friction
pushi.e 90
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.d 0.25
pop.v.d self.size
pushi.e 8
pop.v.i self.dmg
call.i scr_monstersum(argc=0)
pop.v.v self.sum
push.v self.sum
pushi.e 1
cmp.i.v GT
bf [end]

:[1]
push.d 0.7
pop.v.d self.speed

:[end]
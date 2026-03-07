.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e -4
pop.v.i self.vspeed
push.d 0.1
pop.v.d self.friction
call.i scr_monstersum(argc=0)
pop.v.v self.sum
push.v self.sum
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
push.d 4.2
pop.v.d self.vspeed

:[2]
pushi.e 0
pop.v.i self.sinr
pushi.e 0
pop.v.i self.c
pushi.e 6
pop.v.i self.dmg
pushi.e 40
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]
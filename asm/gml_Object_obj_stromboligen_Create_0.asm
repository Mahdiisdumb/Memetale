.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.dmg
pushglb.v global.firingrate
pop.v.v self.rate
pushi.e 2
pop.v.i self.spd
call.i scr_monstersum(argc=0)
pop.v.v self.sum
push.v self.sum
pushi.e 1
cmp.i.v GT
bf [end]

:[1]
push.d 1.5
pop.v.d self.spd

:[end]
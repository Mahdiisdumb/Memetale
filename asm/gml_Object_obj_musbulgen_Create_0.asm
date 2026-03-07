.localvar 0 arguments

:[0]
pushi.e 7
pop.v.i self.dmg
push.v 260.emotion
pushi.e 0
cmp.i.v GT
bf [4]

:[1]
pushglb.v global.batmusic
call.i caster_pause(argc=1)
popz.v
pushi.e 260
pushenv [3]

:[2]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.longnote
call.i caster_play(argc=3)
popz.v

:[3]
popenv [2]

:[4]
pushglb.v global.firingrate
pop.v.v self.rate
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.longnote
pushi.e 0
pop.v.i self.offset

:[end]
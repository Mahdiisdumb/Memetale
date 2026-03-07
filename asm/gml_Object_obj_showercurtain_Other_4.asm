.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 483
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.mode

:[2]
pushi.e -5
pushi.e 483
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [4]

:[3]
pushi.e 2
pop.v.i self.mode

:[4]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [end]

:[5]
push.s "music/sfx_disturbing.ogg"@2877
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.dist
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
push.d 0.7
conv.d.v
push.d 0.7
conv.d.v
push.v self.dist
call.i caster_loop(argc=3)
popz.v
pushi.e 1
pop.v.i self.pit

:[end]
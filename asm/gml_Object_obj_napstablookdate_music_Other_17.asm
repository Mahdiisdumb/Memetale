.localvar 0 arguments

:[0]
push.v self.songplaying
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.fadeout
pushi.e 1
pop.v.i self.curvol

:[2]
push.v self.songplaying
pushi.e 1
cmp.i.v NEQ
bf [end]

:[3]
pushi.e 1
pop.v.i self.songplaying
push.d 0.5
pop.v.d self.curvol
pushi.e 2
pop.v.i self.fadeout
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v

:[end]
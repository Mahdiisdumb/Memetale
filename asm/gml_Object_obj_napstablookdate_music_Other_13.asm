.localvar 0 arguments

:[0]
push.v self.songplaying
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.fadeout
pushi.e 1
pop.v.i self.curvol

:[2]
push.v self.songplaying
pushi.e 2
cmp.i.v NEQ
bf [4]

:[3]
push.v self.fadeout
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e 2
pop.v.i self.songplaying
pushi.e 0
pop.v.i self.curvol
pushi.e 2
pop.v.i self.fadeout
push.v self.napstachords
call.i caster_is_playing(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[7]
push.d 0.4
conv.d.v
pushi.e 0
conv.i.v
push.v self.napstachords
call.i caster_loop(argc=3)
popz.v

:[end]
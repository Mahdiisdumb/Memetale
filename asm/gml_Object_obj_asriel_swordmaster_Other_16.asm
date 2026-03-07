.localvar 0 arguments

:[0]
push.v self.freakcon
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
push.d 1.2
conv.d.v
push.v self.sfx_jafe
call.i caster_play(argc=3)
popz.v
push.d 1.4
conv.d.v
push.d 0.7
conv.d.v
push.v self.sfx_cut
call.i caster_play(argc=3)
popz.v
b [end]

:[2]
push.v self.last
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
push.v self.sfx_cut
call.i caster_play(argc=3)
popz.v
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
push.v self.sfx_spk
call.i caster_play(argc=3)
popz.v
b [end]

:[4]
pushi.e 1
pop.v.i self.last

:[end]
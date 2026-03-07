.localvar 0 arguments

:[0]
push.v self.lafftrax
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.rshot
call.i caster_play(argc=3)
popz.v
pushi.e 1446
pop.v.i self.sprite_index

:[2]
push.v self.lafftrax
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.rshot
call.i caster_play(argc=3)
popz.v
pushi.e 1448
pop.v.i self.sprite_index

:[4]
pushi.e 17
pop.v.i self.conversation

:[end]
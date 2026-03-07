.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.talked
pushi.e -1
pop.v.i self.whatiheard
pushi.e 2
pop.v.i global.mnfight
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [end]

:[1]
pushi.e 12
pop.v.i global.border
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]
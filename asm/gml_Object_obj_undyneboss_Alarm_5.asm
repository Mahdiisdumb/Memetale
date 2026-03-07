.localvar 0 arguments

:[0]
push.v self.blconwd
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.v self.blcon
conv.v.i
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 0
pop.v.i self.talked
pushi.e -1
pop.v.i self.whatiheard
pushi.e 2
pop.v.i global.mnfight
push.v self.borderspec
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 7
pop.v.i global.border

:[6]
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [end]

:[7]
pushi.e 12
pop.v.i global.border
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]
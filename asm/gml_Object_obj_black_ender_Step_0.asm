.localvar 0 arguments

:[0]
push.v self.delay
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.delay
push.e 1
sub.i.v
pop.v.v self.delay
b [end]

:[2]
pushglb.v global.savedata_async_id
pushi.e -1
cmp.i.v EQ
bf [end]

:[3]
call.i game_restart(argc=0)
popz.v

:[end]
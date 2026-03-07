.localvar 0 arguments

:[0]
push.v self.trick
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i event_inherited(argc=0)
popz.v

:[2]
push.v self.trick
pushi.e 1
cmp.i.v EQ
bf [6]

:[3]
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 50
pop.v.i global.my_hp
pushi.e 40
pop.v.i 1591.dcon
push.v self.object_index
conv.v.i
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[6]
push.v self.trick
pushi.e 2
cmp.i.v EQ
bf [end]

:[7]
pushi.e 1653
pushenv [9]

:[8]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[9]
popenv [8]

:[end]
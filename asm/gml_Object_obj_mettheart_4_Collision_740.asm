.localvar 0 arguments

:[0]
pushi.e 127
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v other.id
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.v self.life
pushi.e 40
sub.i.v
pop.v.v self.life
push.v self.life
pushi.e 1
cmp.i.v LT
bf [4]

:[3]
push.v self.movetype
pushi.e 1
cmp.i.v NEQ
b [5]

:[4]
push.e 0

:[5]
bf [8]

:[6]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
pushi.e 0
pop.v.i global.turntimer

:[8]
push.v global.ratings
pushi.e 20
add.i.v
pop.v.v global.ratings

:[end]
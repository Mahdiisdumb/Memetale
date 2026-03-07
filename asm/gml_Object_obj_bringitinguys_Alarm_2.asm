.localvar 0 arguments

:[0]
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [2]

:[1]
push.v global.hp
pushi.e 1
add.i.v
pop.v.v global.hp
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v

:[2]
pushi.e 12
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]
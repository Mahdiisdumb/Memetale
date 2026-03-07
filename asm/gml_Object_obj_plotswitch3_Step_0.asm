.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 12
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.on
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_index
pushi.e 13
pop.v.i global.plot
pushi.e 0
pop.v.i global.vshake
pushi.e 4
pop.v.i global.hshake
pushi.e 2
pop.v.i global.shakespeed
pushi.e 185
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 130
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 99
pop.v.i global.interact

:[5]
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.interact
pushi.e 99
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e 0
pop.v.i global.interact

:[end]
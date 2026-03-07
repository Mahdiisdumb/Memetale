.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1267
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i self.on
pushi.e 2
pop.v.i self.myinteract
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1953
pop.v.i self.sprite_index
pushi.e 90
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[6]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1267
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [9]

:[8]
push.e 0

:[9]
bf [end]

:[10]
push.v 1267.switches
pushi.e 1
add.i.v
pop.v.v 1267.switches

:[end]
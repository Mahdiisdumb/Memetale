.localvar 0 arguments

:[0]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.heartdraw
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.heartdraw
pushi.e 1
pop.v.i self.on
push.v self.clap
pushi.e 1
add.i.v
pop.v.v self.clap

:[3]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [6]

:[4]
push.v self.heartdraw
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.on
pushi.e 1
pop.v.i self.heartdraw

:[6]
pushi.e 0
pop.v.i self.on
push.v self.clap
pushi.e 2
cmp.i.v GT
bf [13]

:[7]
pushglb.v global.battlegroup
pushi.e 200
cmp.i.v EQ
bf [11]

:[8]
push.v self.tb
conv.v.i
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
call.i instance_destroy(argc=0)
popz.v
b [12]

:[11]
pushi.e 142
conv.i.v
push.v 1576.y
pushi.e 17
add.i.v
push.v 1576.x
pushi.e 5
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.heartdraw
pushi.e 100
pop.v.i 1576.depth

:[12]
b [end]

:[13]
push.v self.claptimer
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[end]
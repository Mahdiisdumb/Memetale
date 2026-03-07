.localvar 0 arguments

:[0]
push.v self.part
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 4
pop.v.i self.part

:[2]
push.v self.part
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.vspeed
pushi.e 3
pop.v.i self.part
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[4]
push.v self.part
pushi.e 1
cmp.i.v EQ
bf [10]

:[5]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e -10
pop.v.i self.vspeed

:[7]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 10
pop.v.i self.vspeed

:[9]
pushi.e 14
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2
pop.v.i self.part
pushi.e 6
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[10]
push.v self.part
pushi.e 0
cmp.i.v EQ
bf [end]

:[11]
pushi.e 1
pop.v.i self.part
pushi.e 0
pop.v.i self.vspeed
pushi.e 12
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]
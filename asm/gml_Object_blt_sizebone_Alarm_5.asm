.localvar 0 arguments

:[0]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.blcon
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 50
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 91
conv.i.v
call.i snd_play(argc=1)
popz.v

:[4]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 1
cmp.i.v EQ
bf [end]

:[5]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]
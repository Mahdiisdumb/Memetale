.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 48
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.con

:[end]
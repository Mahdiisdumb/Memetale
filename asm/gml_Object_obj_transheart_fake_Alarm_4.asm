.localvar 0 arguments

:[0]
push.v self.visible
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.visible
b [3]

:[2]
pushi.e 1
pop.v.i self.visible
push.v self.claps
pushi.e 1
add.i.v
pop.v.v self.claps
pushi.e 107
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v

:[3]
push.v self.claps
pushi.e 2
cmp.i.v LT
bf [end]

:[4]
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]
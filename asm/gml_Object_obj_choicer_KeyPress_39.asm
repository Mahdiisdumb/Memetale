.localvar 0 arguments

:[0]
push.v self.mychoice
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.mychoice
b [3]

:[2]
pushi.e 0
pop.v.i self.mychoice

:[3]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.mychoice
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.x1
pop.v.v self.x
b [end]

:[5]
push.v self.x0
pop.v.v self.x

:[end]
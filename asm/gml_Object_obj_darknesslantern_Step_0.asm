.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.glowtimer
pushi.e 0
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 13
conv.i.v
call.i snd_isplaying(argc=1)
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v

:[6]
pushi.e 0
pop.v.i self.myinteract
pushi.e 30
pop.v.i self.glowtimer
pushi.e 1
pop.v.i self.glowup

:[7]
push.v self.glowtimer
pushi.e 1
sub.i.v
pop.v.v self.glowtimer
push.v self.glowtimer
pushi.e 0
cmp.i.v LTE
bf [9]

:[8]
pushi.e 0
pop.v.i self.glowup

:[9]
push.v self.glowup
pushi.e 1
cmp.i.v EQ
bf [12]

:[10]
push.v 1100.glowamt
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.v 1100.glowamt
push.d 0.07
sub.d.v
pop.v.v 1100.glowamt

:[12]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [end]

:[13]
pushi.e 0
pop.v.i self.myinteract

:[end]
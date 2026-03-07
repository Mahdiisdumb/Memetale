.localvar 0 arguments

:[0]
pushi.e 5
pop.v.i self.size
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
push.d 6.2
pop.v.d self.maxsize
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [end]

:[1]
push.d 4.5
pop.v.d self.size
push.d 5.5
pop.v.d self.maxsize

:[end]
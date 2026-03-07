.localvar 0 arguments

:[0]
pushi.e 181
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.x
pop.v.v self.nowx
push.v self.y
pop.v.v self.nowy
pushi.e 0
pop.v.i self.factor
pushi.e 0
pop.v.i self.visible
pushi.e 0
pop.v.i self.hits
pushi.e 10
pop.v.i 1595.con

:[end]
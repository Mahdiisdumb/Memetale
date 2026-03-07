.localvar 0 arguments

:[0]
pushi.e 208
pop.v.i self.ht
pushi.e 200
pop.v.i self.wd
pushi.e 0
pop.v.i self.myvapor
pushi.e 0
pop.v.i self.myread
pushi.e 0
pop.v.i self.finishedreading
pushi.e 0
pop.v.i self.line
pushi.e 0
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v
push.v self.myvapor
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 92
conv.i.v
call.i snd_play(argc=1)
popz.v

:[2]
pushi.e 8
pop.v.i self.fun
pushi.e 0
pop.v.i self.spec

:[end]
.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 113
conv.i.v
call.i snd_isplaying(argc=1)
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 113
conv.i.v
call.i snd_play(argc=1)
popz.v

:[3]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.image_index
pushi.e 1
pop.v.i self.glow
b [6]

:[5]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.glow

:[6]
pushi.e 0
pop.v.i self.myinteract

:[end]
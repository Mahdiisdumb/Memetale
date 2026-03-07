.localvar 0 arguments

:[0]
push.v self.shock
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 51
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1675
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.shk
push.v self.object_index
push.v self.shk
conv.v.i
pop.v.v [stacktop]self.obj
pushi.e 1
pop.v.i self.shock

:[end]
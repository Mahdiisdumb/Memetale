.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.con
pushi.e 149
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.image_index

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
push.v self.image_alpha
push.d 0.03
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.03
cmp.d.v LTE
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]
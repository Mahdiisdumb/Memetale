.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
pushi.e 2
pop.v.i self.con

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [5]

:[3]
push.v self.image_alpha
push.d 0.07
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.97
cmp.d.v GT
bf [5]

:[4]
pushi.e 1
pop.v.i self.image_alpha
pushi.e 3
pop.v.i self.con

:[5]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [7]

:[6]
pushi.e 3
pop.v.i self.image_index
pushi.e 7
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[7]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [end]

:[8]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]
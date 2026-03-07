.localvar 0 arguments

:[0]
pushi.e 730
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.g2
push.v self.image_blend
push.v self.g2
conv.v.i
pop.v.v [stacktop]self.image_blend
push.v self.crit
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 118
conv.i.v
call.i snd_play(argc=1)
popz.v

:[2]
push.v self.shotno
pushi.e 1
add.i.v
pop.v.v self.shotno
push.v self.shotno
pushi.e 3
cmp.i.v LT
bf [end]

:[3]
pushi.e 3
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]
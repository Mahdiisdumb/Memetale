.localvar 0 arguments

:[0]
push.v self.col
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 11
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1070
pop.v.i self.oo
pushi.e 1069
conv.i.v
push.v self.oo
conv.v.i
push.v [stacktop]self.y
push.v self.oo
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.j
pushi.e 1
push.v self.oo
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [3]

:[2]
pushi.e 1068
conv.i.v
push.v self.oo
conv.v.i
push.v [stacktop]self.y
pushi.e 30
add.i.v
push.v self.oo
conv.v.i
push.v [stacktop]self.x
pushi.e 11
add.i.v
call.i instance_create(argc=3)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [2]

:[3]
popz.i
pushi.e 1
pop.v.i self.col

:[end]
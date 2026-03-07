.localvar 0 arguments

:[0]
push.v self.nowx
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.nowy
pushi.e 3
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y
push.v self.factor
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.visible

:[2]
push.v self.factor
pushi.e 1
add.i.v
pop.v.v self.factor
push.v self.factor
pushi.e 20
cmp.i.v GT
bf [5]

:[3]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.2
cmp.d.v LT
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
pushi.e 6
pop.v.i 1595.con

:[5]
pushi.e 1588
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[6]
pushi.e 1588
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]
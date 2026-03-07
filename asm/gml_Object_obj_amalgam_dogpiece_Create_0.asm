.localvar 0 arguments

:[0]
pushi.e 1562
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.aa
push.v 1562.x
pushi.e 400
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 90
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.x
push.v 1562.y
pushi.e 70
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.y
pushi.e 40
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 0
pop.v.i self.con
pushi.e 12
pushi.e 4
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.ss

:[end]
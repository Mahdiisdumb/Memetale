.localvar 0 arguments

:[0]
pushi.e 1154
conv.i.v
pushi.e -8
pushi.e 20
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.x
pushi.e 2
add.i.v
push.v self.sprite_width
pushi.e 6
sub.i.v
call.i random(argc=1)
add.v.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]
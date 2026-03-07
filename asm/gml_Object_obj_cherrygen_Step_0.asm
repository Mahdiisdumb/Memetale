.localvar 0 arguments

:[0]
pushi.e 1204
conv.i.v
pushi.e -4
pushi.e 20
conv.i.v
call.i random(argc=1)
sub.v.i
pushi.e -400
pushbltn.v self.room_width
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
popz.v

:[end]
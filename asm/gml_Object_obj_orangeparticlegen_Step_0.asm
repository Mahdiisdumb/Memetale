.localvar 0 arguments

:[0]
pushi.e 486
conv.i.v
pushbltn.v self.room_height
pushi.e 10
add.i.v
pushi.e -100
pushbltn.v self.room_width
pushi.e 200
add.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
popz.v

:[end]
.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 944
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.ystart
pushi.e 24
add.i.v
push.v self.armx
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.xstart
pushi.e 30
sub.i.v
push.v self.armx
add.v.v
pushi.e 0
conv.i.v
pushi.e 936
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.ystart
pushi.e 40
add.i.v
push.v self.xstart
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
pushi.e 940
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.ystart
pushi.e 31
add.i.v
push.v self.xstart
pushi.e 12
add.i.v
pushi.e 0
conv.i.v
pushi.e 942
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 941
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 15
add.i.v
push.v self.x
pushglb.v global.faceemotion
pushi.e 943
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]
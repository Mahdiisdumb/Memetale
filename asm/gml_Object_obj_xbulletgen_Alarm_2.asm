.localvar 0 arguments

:[0]
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e -140
conv.i.v
pushi.e 140
conv.i.v
call.i choose(argc=2)
add.v.v
pop.v.v self.xx
pushi.e 316
conv.i.v
push.v 744.y
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.xbul
pushi.e 36
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]
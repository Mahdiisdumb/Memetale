.localvar 0 arguments

:[0]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [2]

:[1]
pushi.e 3
pop.v.i self.hspeed

:[2]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [4]

:[3]
pushi.e -3
pop.v.i self.hspeed

:[4]
pushi.e 30
conv.i.v
pushi.e 30
conv.i.v
call.i move_snap(argc=2)
popz.v
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 8
pop.v.i self.dmg

:[end]
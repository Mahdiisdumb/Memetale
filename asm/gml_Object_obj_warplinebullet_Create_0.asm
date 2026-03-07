.localvar 0 arguments

:[0]
pushi.e 32
pop.v.i self.r
pushi.e 260
conv.i.v
call.i random(argc=1)
pop.v.v self.rot
pushi.e -4
conv.i.v
pushi.e -3
conv.i.v
pushi.e 3
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=4)
pop.v.v self.rotspeed
push.v self.y
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [2]

:[1]
pushi.e 4
pop.v.i self.vspeed
b [3]

:[2]
pushi.e -4
pop.v.i self.vspeed

:[3]
pushi.e 8
pop.v.i self.dmg

:[end]
.localvar 0 arguments

:[0]
pushi.e 723
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
add.v.v
push.v self.wherex
add.v.v
call.i instance_create(argc=3)
pop.v.v self.newtarg
pushi.e -10
push.v self.newtarg
conv.v.i
pop.v.i [stacktop]self.hspeed
pushglb.v global.weapon
pushi.e 49
cmp.i.v EQ
bf [2]

:[1]
pushi.e -15
push.v self.newtarg
conv.v.i
pop.v.i [stacktop]self.hspeed

:[2]
pushi.e 720
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
sub.i.v
push.v self.newtarg
conv.v.i
pop.v.v [stacktop]self.priority
push.v self.fatalx
push.v self.newtarg
conv.v.i
pop.v.v [stacktop]self.fatalx

:[end]
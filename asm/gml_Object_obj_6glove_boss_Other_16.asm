.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 4
push.v [array]self.glove
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 1622
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.glove
pushi.e 1440
conv.i.d
push.v self.maxnum
div.v.d
pushi.e -1
pushi.e 4
pop.v.v [array]self.gloveang
pushi.e -1
pushi.e 4
push.v [array]self.gloveang
pushi.e -1
pushi.e 4
push.v [array]self.glove
conv.v.i
pop.v.v [stacktop]self.ang
push.v self.x
pushi.e -1
pushi.e 4
push.v [array]self.gloveang
push.v self.ourang
add.v.v
push.v self.radius
call.i lengthdir_x(argc=2)
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.glove
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
pushi.e -1
pushi.e 4
push.v [array]self.gloveang
push.v self.ourang
add.v.v
push.v self.radius
call.i lengthdir_y(argc=2)
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.glove
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -1
pushi.e 4
push.v [array]self.gloveang
push.v self.ourang
add.v.v
pushi.e -1
pushi.e 4
push.v [array]self.glove
conv.v.i
pop.v.v [stacktop]self.image_angle
pushi.e 1
pop.v.i self.spec

:[end]
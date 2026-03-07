.localvar 0 arguments

:[0]
pushi.e 822
conv.i.v
push.v self.yy
pushi.e 10
add.i.v
push.v self.xx
pushi.e 10
add.i.v
call.i instance_position(argc=3)
pop.v.v self.block
push.v self.block
pushi.e -4
cmp.i.v NEQ
bf [2]

:[1]
pushi.e 0
push.v self.block
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 0
push.v self.block
conv.v.i
pop.v.i [stacktop]self.y

:[2]
pushi.e 1365
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.new
push.i 850000
push.v self.new
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1643
push.v self.new
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.new
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 6
push.v self.new
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1
push.v self.new
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.new
conv.v.i
pop.v.i [stacktop]self.image_speed

:[end]
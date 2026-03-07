.localvar 0 arguments

:[0]
pushi.e 109
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.genafterimage
push.v self.sprite_index
push.v self.genafterimage
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.genafterimage
conv.v.i
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.genafterimage
conv.v.i
pop.v.v [stacktop]self.size
push.v self.image_yscale
push.v self.genafterimage
conv.v.i
pop.v.v [stacktop]self.size
push.v self.image_angle
push.v self.genafterimage
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.image_blend
push.v self.genafterimage
conv.v.i
pop.v.v [stacktop]self.image_blend
pushi.e 0
push.v self.genafterimage
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.depth
pushi.e 1
add.i.v
push.v self.genafterimage
conv.v.i
pop.v.v [stacktop]self.depth
pushbltn.v self.argument0
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
conv.i.d
pushbltn.v self.argument0
div.v.d
push.v self.genafterimage
conv.v.i
pop.v.v [stacktop]self.alphadown

:[2]
pushbltn.v self.argument1
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushbltn.v self.argument1
push.v self.genafterimage
conv.v.i
pop.v.v [stacktop]self.growth

:[4]
push.v self.genafterimage
ret.v

:[end]
.localvar 0 arguments

:[0]
pushi.e 1365
conv.i.v
pushbltn.v self.argument1
pushbltn.v self.argument0
call.i instance_create(argc=3)
pop.v.v self.thismarker
pushi.e 1
push.v self.thismarker
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 0
push.v self.thismarker
conv.v.i
pop.v.i [stacktop]self.image_speed
pushbltn.v self.argument2
push.v self.thismarker
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.thismarker
ret.v

:[end]
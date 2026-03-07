.localvar 0 arguments

:[0]
push.v self.sprite_index
pop.v.v global.monstersprite
pushi.e 0
pop.v.i global.vaporspeed
pushi.e 158
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]
.localvar 0 arguments

:[0]
push.v self.killed
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pushi.e -5
pushi.e 252
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.vaporspeed
pushi.e 211
pop.v.i global.monstersprite
pushi.e 158
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ddd
push.v self.image_xscale
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.image_yscale
pushi.e 0
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.image_index
push.v global.kills
pushi.e 1
add.i.v
pop.v.v global.kills
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster
b [end]

:[2]
pushi.e 1
pushi.e -5
pushi.e 27
pop.v.i [array]global.flag

:[end]
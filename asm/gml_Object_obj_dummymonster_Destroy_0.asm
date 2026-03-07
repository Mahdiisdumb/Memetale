.localvar 0 arguments

:[0]
push.v self.killed
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pushi.e -5
pushi.e 14
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 12
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.vaporspeed
push.v self.sprite_index
pop.v.v global.monstersprite
pushi.e 156
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ddd
push.v self.ddd
conv.v.i
pushenv [3]

:[2]
pushi.e 23
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[3]
popenv [2]
push.v self.sprite_index
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.ht
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.ht
push.v self.wd
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.wd
pushi.e 0
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster

:[end]
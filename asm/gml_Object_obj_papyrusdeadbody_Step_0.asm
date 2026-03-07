.localvar 0 arguments

:[0]
push.v self.c
pushi.e 4
cmp.i.v EQ
bf [end]

:[1]
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
pushi.e 9
conv.i.v
call.i scr_newvapordata(argc=1)
popz.v

:[3]
popenv [2]
push.v self.sprite_index
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.sprite_height
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.ht
push.v self.sprite_width
push.v self.ddd
conv.v.i
pop.v.v [stacktop]self.wd
call.i instance_destroy(argc=0)
popz.v

:[end]
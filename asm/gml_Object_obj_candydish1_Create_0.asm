.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.candymade
pushi.e -5
pushi.e 34
push.v [array]global.flag
pushi.e 3
cmp.i.v GT
bf [end]

:[1]
pushi.e 1259
conv.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
call.i scr_marker(argc=3)
pop.v.v self.candy
push.i 900000
push.v self.candy
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.candy
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.candy
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1259
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.candymade

:[end]
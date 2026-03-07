.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
pushi.e -5
pushi.e 34
push.v [array]global.flag
pushi.e 3
cmp.i.v GT
bf [2]

:[1]
push.v self.candymade
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
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
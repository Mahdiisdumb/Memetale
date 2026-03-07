.localvar 0 arguments

:[0]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 240
add.i.v
cmp.v.v LT
bf [2]

:[1]
pushi.e 0
pop.v.i self.speed

:[2]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
pushi.e 1
pop.v.i self.image_index

:[end]
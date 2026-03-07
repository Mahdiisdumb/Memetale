.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v 1575.right
conv.v.b
bf [2]

:[1]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[2]
push.v 1575.up
conv.v.b
bf [4]

:[3]
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y

:[4]
push.v 1575.down
conv.v.b
bf [6]

:[5]
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y

:[6]
push.v 1575.left
conv.v.b
bf [8]

:[7]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[8]
push.v self.x
pushi.e 624
cmp.i.v GT
bf [10]

:[9]
pushi.e 624
pop.v.i self.x

:[10]
push.v self.x
pushi.e 0
cmp.i.v LT
bf [12]

:[11]
pushi.e 0
pop.v.i self.x

:[12]
push.v self.y
pushi.e 464
cmp.i.v GT
bf [14]

:[13]
pushi.e 464
pop.v.i self.y

:[14]
push.v self.y
pushi.e 0
cmp.i.v LT
bf [end]

:[15]
pushi.e 0
pop.v.i self.y

:[end]
.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
pushi.e 6
push.v self.damt
add.v.i
push.v self.sprite_width
push.v self.sprite_height
push.v self.damt
sub.v.v
pushi.e 6
sub.i.v
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part(argc=8)
popz.v
push.v self.drawerdown
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
push.v self.damt
push.v self.sprite_height
pushi.e 6
sub.i.v
cmp.v.v LT
bf [3]

:[2]
push.v self.damt
pushi.e 2
add.i.v
pop.v.v self.damt
b [4]

:[3]
push.v self.sprite_height
pushi.e 6
sub.i.v
pop.v.v self.damt
pushi.e 2
pop.v.i self.drawerdown

:[4]
push.v self.drawerdown
pushi.e 3
cmp.i.v EQ
bf [end]

:[5]
push.v self.damt
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.damt
pushi.e 2
sub.i.v
pop.v.v self.damt
b [end]

:[7]
pushi.e 0
pop.v.i self.damt
pushi.e 4
pop.v.i self.drawerdown

:[end]
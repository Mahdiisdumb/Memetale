.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.wc
pushi.e 0
pop.v.i self.wc2
push.v self.x
push.v self.x1
cmp.v.v LT
bf [2]

:[1]
push.v self.x1
push.v self.x
sub.v.v
pop.v.v self.wc

:[2]
push.v self.x
push.v self.x2
cmp.v.v GT
bf [4]

:[3]
push.v self.x
push.v self.x2
sub.v.v
pop.v.v self.wc2

:[4]
push.v self.y
push.v self.x
push.v self.wc
add.v.v
push.v self.sprite_height
push.v self.sprite_width
push.v self.wc
sub.v.v
push.v self.wc2
sub.v.v
pushi.e 0
conv.i.v
push.v self.wc
push.v self.GR
push.v self.sprite_index
call.i draw_sprite_part(argc=8)
popz.v

:[end]
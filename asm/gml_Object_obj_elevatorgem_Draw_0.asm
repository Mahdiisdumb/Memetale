.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[end]
.localvar 0 arguments

:[0]
push.v 1576.x
pushi.e 10
sub.i.v
pop.v.v self.x1
push.v 1576.x
pushi.e 30
add.i.v
pop.v.v self.x2
push.v 1576.y
pushi.e 5
sub.i.v
pop.v.v self.y1
push.v 1576.y
pushi.e 35
add.i.v
pop.v.v self.y2
push.v self.glowamt
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y1
push.v self.x1
pushi.e 0
conv.i.v
pushi.e 1647
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]
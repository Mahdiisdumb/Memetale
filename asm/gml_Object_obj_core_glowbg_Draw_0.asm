.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.d 0.7
conv.d.v
push.i 16777215
conv.i.v
push.i 16776960
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.ltaqua
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 400
conv.i.v
pushi.e 400
conv.i.v
pushi.e -20
conv.i.v
pushi.e -20
conv.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
pushi.e 1002
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
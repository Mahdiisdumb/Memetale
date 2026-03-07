.localvar 0 arguments

:[0]
push.v self.bgalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1716
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.bgalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 15
conv.i.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1721
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
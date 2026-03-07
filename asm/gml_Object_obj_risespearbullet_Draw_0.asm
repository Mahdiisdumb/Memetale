.localvar 0 arguments

:[0]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i draw_self_border_ext(argc=4)
popz.v

:[end]
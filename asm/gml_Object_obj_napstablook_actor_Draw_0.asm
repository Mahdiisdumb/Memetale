.localvar 0 arguments

:[0]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
conv.i.v
pushi.e 110
conv.i.v
call.i script_execute(argc=2)
popz.v

:[2]
call.i scr_depth(argc=0)
popz.v

:[end]
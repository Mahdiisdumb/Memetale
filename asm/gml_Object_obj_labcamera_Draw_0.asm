.localvar 0 arguments

:[0]
push.v self.drawnlab
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.entrance
pushi.e 3
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[5]
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.altglow
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i self.altglow
b [8]

:[7]
pushi.e 0
pop.v.i self.altglow

:[8]
push.v self.altglow
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.d 0.1
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
b [11]

:[10]
push.d 0.3
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v

:[11]
push.v self.y
pushi.e 39
add.i.v
push.v self.x
pushi.e 59
add.i.v
push.v self.y
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1924
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]
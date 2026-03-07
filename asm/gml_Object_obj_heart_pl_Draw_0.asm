.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i draw_rectangle(argc=5)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.shot
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.y
pushi.e 26
add.i.v
push.v self.x
pushi.e 10
add.i.v
push.v self.y
pushi.e 23
add.i.v
push.v self.x
pushi.e 6
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]
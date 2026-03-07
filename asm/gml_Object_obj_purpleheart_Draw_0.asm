.localvar 0 arguments

:[0]
push.i 8388736
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.yamt
cmp.v.v LT
bf [4]

:[3]
push.v self.yzero
push.v self.yspace
push.v self.i
mul.v.v
add.v.v
push.v self.yoff
add.v.v
push.v self.xmid
push.v self.xlen
add.v.v
push.v self.yzero
push.v self.yspace
push.v self.i
mul.v.v
add.v.v
push.v self.yoff
add.v.v
push.v self.xmid
push.v self.xlen
sub.v.v
call.i draw_line(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[end]
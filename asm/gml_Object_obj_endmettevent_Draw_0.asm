.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 1.5
mul.d.v
pop.v.v self.army
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
pop.v.v self.x
push.d 0.2
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 330
conv.i.v
pushi.e 100
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.d 0.2
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 330
conv.i.v
pushi.e 80
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.leg
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 2568
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[2]
push.v self.leg
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.legrot_r
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 17
add.i.v
push.v self.x
pushi.e 3
add.i.v
push.v self.legx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2569
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.legrot_l
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v self.y
pushi.e 17
add.i.v
push.v self.x
pushi.e 2
sub.i.v
push.v self.legx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2569
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pop.v.v self.legx

:[4]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 9
add.i.v
push.v self.army
add.v.v
push.v self.bodyy
add.v.v
push.v self.x
pushi.e 13
add.i.v
pushi.e 0
conv.i.v
pushi.e 2567
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v self.y
pushi.e 9
add.i.v
push.v self.army
sub.v.v
push.v self.bodyy
add.v.v
push.v self.x
pushi.e 12
sub.i.v
pushi.e 0
conv.i.v
pushi.e 2567
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.y
push.v self.bodyy
add.v.v
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[end]
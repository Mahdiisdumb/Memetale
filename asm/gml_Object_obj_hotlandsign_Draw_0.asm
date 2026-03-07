.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 493
add.i.v
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
pushi.e 12
sub.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.inactive
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
pushi.e 255
conv.i.v
pushi.e 8
conv.i.v
pushi.e 8
conv.i.v
push.v self.y
push.v self.x
pushi.e 5
conv.i.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
push.v self.xaround
sub.v.i
push.v self.image_index
pushi.e 1963
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[2]
push.v self.inactive
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.d 0.5
conv.d.v
pushi.e 255
conv.i.v
pushi.e 8
conv.i.v
pushi.e 8
conv.i.v
push.v self.y
push.v self.x
pushi.e 5
conv.i.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
push.v self.xaround
sub.v.i
push.v self.image_index
pushi.e 1963
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[4]
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 60
cmp.i.v LT
bf [9]

:[6]
pushi.e 0
pop.v.i self.g
pushi.e 5
dup.i 0
push.i 0
cmp.i.i LTE
bt [8]

:[7]
push.v self.y
push.v self.g
pushi.e 8
mul.i.v
add.v.v
push.v self.x
push.v self.i
pushi.e 8
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 1964
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.g
pushi.e 1
add.i.v
pop.v.v self.g
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [7]

:[8]
popz.i
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[9]
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.greenbright
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[11]
pushi.e 1
conv.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 490
add.i.v
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i draw_roundrect(argc=5)
popz.v
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.greenbright
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[13]
pushi.e 1
conv.i.v
push.v self.y
pushi.e 51
add.i.v
push.v self.x
pushi.e 491
add.i.v
push.v self.y
pushi.e 11
sub.i.v
push.v self.x
pushi.e 11
sub.i.v
call.i draw_roundrect(argc=5)
popz.v
push.i 32768
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.greenbright
pushi.e 5
cmp.i.v EQ
bf [15]

:[14]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[15]
pushi.e 1
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 492
add.i.v
push.v self.y
pushi.e 12
sub.i.v
push.v self.x
pushi.e 12
sub.i.v
call.i draw_roundrect(argc=5)
popz.v

:[end]
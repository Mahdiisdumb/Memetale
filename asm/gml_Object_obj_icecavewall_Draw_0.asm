.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.al
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.timer
pushi.e 8
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.x
push.v self.timer
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 2.8
mul.d.v
call.i abs(argc=1)
pushi.e 1076
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [3]

:[2]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.al
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.timer
pushi.e 8
conv.i.d
div.d.v
call.i cos(argc=1)
add.v.v
push.v self.x
push.v self.timer
pushi.e 7
conv.i.d
div.d.v
call.i sin(argc=1)
add.v.v
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 2.8
mul.d.v
call.i abs(argc=1)
pushi.e 1077
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
push.v self.timer
pushi.e 100
cmp.i.v GTE
bf [5]

:[4]
push.v self.timer
pushi.e 150
cmp.i.v LT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v self.al
push.d 0.02
add.d.v
pop.v.v self.al

:[8]
push.v self.timer
pushi.e 300
cmp.i.v GTE
bf [end]

:[9]
push.v self.al
push.d 0.02
sub.d.v
pop.v.v self.al
push.v self.al
pushi.e 0
cmp.i.v LTE
bf [end]

:[10]
pushi.e 0
pop.v.i self.al
pushi.e 0
pop.v.i self.timer

:[end]
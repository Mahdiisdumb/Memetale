.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.active
pushi.e 2
cmp.i.v NEQ
bf [15]

:[1]
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
pushi.e 2
conv.i.d
div.d.v
push.d 0.5
add.d.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.d 0.3
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_speed
b [4]

:[3]
push.d 0.5
pop.v.d self.image_speed

:[4]
push.v self.blue
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.i 16754964
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1956
pop.v.i self.sprite_index

:[6]
push.v self.blue
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1955
pop.v.i self.sprite_index

:[8]
push.v self.y
pushi.e 320
add.i.v
push.v self.x
pushi.e 11
add.i.v
push.v self.y
pushi.e 16
add.i.v
push.v self.x
pushi.e 8
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.v self.activebuffer
pushi.e 0
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [14]

:[12]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
push.v self.y
pushi.e 320
add.i.v
push.v self.x
pushi.e 10
add.i.v
push.v self.y
pushi.e 18
add.i.v
push.v self.x
pushi.e 9
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [14]

:[13]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[14]
b [16]

:[15]
pushi.e 1957
pop.v.i self.sprite_index

:[16]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.ex
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.ex

:[21]
push.v self.activebuffer
pushi.e 1
sub.i.v
pop.v.v self.activebuffer
push.v self.active
pushi.e 1
cmp.i.v NEQ
bf [end]

:[22]
pushi.e 1
pop.v.i self.activebuffer

:[end]
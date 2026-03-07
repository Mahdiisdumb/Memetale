.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 84
add.i.v
push.v self.x
pushi.e 26
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 603
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
sub.v.v
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 601
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
push.v self.x
pushi.e 16
sub.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 599
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
push.v self.x
pushi.e 106
add.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 599
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.boat
pushi.e 1
cmp.i.v GTE
bf [2]

:[1]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
sub.v.v
pushi.e 20
add.i.v
push.v self.x
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 600
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.boat
pushi.e 2
cmp.i.v EQ
bf [6]

:[3]
push.v self.x
pushi.e 320
cmp.i.v LT
bf [5]

:[4]
pushi.e -5
pop.v.i self.hspeed
b [6]

:[5]
pushi.e 5
pop.v.i self.hspeed

:[6]
push.v self.fight
pushi.e 1
cmp.i.v EQ
bf [20]

:[7]
pushi.e 454
conv.i.v
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v GT
bf [13]

:[8]
push.v self.f_timer
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[10]
push.v self.f_timer
pushi.e 60
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -1
pop.v.i self.f_timer
pushi.e 0
pop.v.i self.fight

:[12]
b [19]

:[13]
push.v self.f_timer
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[15]
push.v self.f_timer
pushi.e 10
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[17]
push.v self.f_timer
pushi.e 20
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e -1
pop.v.i self.f_timer
pushi.e 0
pop.v.i self.fight

:[19]
push.v self.f_timer
pushi.e 1
add.i.v
pop.v.v self.f_timer

:[20]
push.v self.x
pushi.e -120
cmp.i.v LT
bf [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
push.v self.x
pushi.e 800
cmp.i.v GT
bf [end]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[end]
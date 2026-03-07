.localvar 0 arguments

:[0]
push.v self.x
pushi.e 20
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.xbefore
pushbltn.v self.room_width
pushi.e 20
conv.i.d
div.d.v
push.v self.x
pushi.e 20
conv.i.d
div.d.v
sub.v.v
call.i ceil(argc=1)
pop.v.v self.xafter
push.v self.y
pushi.e 20
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.ybefore
pushbltn.v self.room_height
pushi.e 20
conv.i.d
div.d.v
push.v self.y
pushi.e 20
conv.i.d
div.d.v
sub.v.v
call.i ceil(argc=1)
pop.v.v self.yafter
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.ybefore
pushi.e 1
add.i.v
cmp.v.v LT
bf [3]

:[2]
push.v self.y
pushi.e 20
sub.i.v
push.v self.i
pushi.e 20
mul.i.v
sub.v.v
push.v self.x
push.v self.anim
pushi.e 540
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
push.v self.yafter
pushi.e 1
add.i.v
cmp.v.v LT
bf [6]

:[5]
push.v self.y
pushi.e 20
add.i.v
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.x
push.v self.anim
pushi.e 540
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
push.v self.xbefore
pushi.e 1
add.i.v
cmp.v.v LT
bf [9]

:[8]
push.v self.y
push.v self.x
pushi.e 20
sub.i.v
push.v self.i
pushi.e 20
mul.i.v
sub.v.v
push.v self.anim
pushi.e 538
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[9]
pushi.e 0
pop.v.i self.i

:[10]
push.v self.i
push.v self.xafter
pushi.e 1
add.i.v
cmp.v.v LT
bf [12]

:[11]
push.v self.y
push.v self.x
pushi.e 20
add.i.v
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.anim
pushi.e 538
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [10]

:[12]
push.v self.y
push.v self.x
push.v self.anim
pushi.e 539
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.anim
pushi.e 1
add.i.v
pop.v.v self.anim
push.v self.anim
pushi.e 1
cmp.i.v GT
bf [14]

:[13]
push.v self.anim
pushi.e 3
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [22]

:[16]
pushi.e 0
pop.v.i self.g
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
pushi.e 16
add.i.v
pushbltn.v self.room_width
push.v self.y
pushi.e 4
add.i.v
pushi.e 0
conv.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [18]

:[17]
pushi.e 1
pop.v.i self.g

:[18]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
pushbltn.v self.room_height
push.v self.x
pushi.e 16
add.i.v
pushi.e 0
conv.i.v
push.v self.x
pushi.e 4
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [20]

:[19]
pushi.e 1
pop.v.i self.g

:[20]
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v

:[22]
push.v self.anim
pushi.e 7
cmp.i.v GTE
bf [end]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[end]
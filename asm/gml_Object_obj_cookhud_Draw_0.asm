.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 40
add.i.v
pop.v.v self.y
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
cmp.v.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.x
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.friction
pushi.e 1
pop.v.i self.con

:[5]
pushi.e 1187
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.v 1187.timertime
pop.v.v self.time
push.v 1187.dist
pop.v.v self.dist
b [8]

:[7]
push.v self.dist
pushi.e 1
add.i.v
pop.v.v self.dist
push.v self.time
pushi.e 1
sub.i.v
pop.v.v self.time

:[8]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1777
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.maxdist
push.v self.dist
sub.v.v
push.v self.maxdist
div.v.v
pushi.e 27
mul.i.v
pop.v.v self.ballx
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 62
add.i.v
push.v self.ballx
add.v.v
pushi.e 0
conv.i.v
pushi.e 1778
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.inittime
push.v self.time
sub.v.v
push.v self.inittime
div.v.v
pushi.e 9
mul.i.v
pop.v.v self.pizzax
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1779
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.y
pushi.e 33
add.i.v
push.v self.x
pushi.e 62
add.i.v
push.v self.pizzax
pushi.e 1776
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.time
pushi.e 30
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.thisnum
push.v self.thisnum
pushi.e 0
cmp.i.v GTE
bf [13]

:[9]
pushi.e 0
pop.v.i self.place
pushi.e 10
pop.v.i self.numadd
push.v self.thisnum
push.v self.numadd
cmp.v.v GTE
bf [12]

:[10]
push.v self.thisnum
push.v self.numadd
cmp.v.v GTE
bf [12]

:[11]
push.v self.place
pushi.e 1
add.i.v
pop.v.v self.place
push.v self.numadd
pushi.e 10
mul.i.v
pop.v.v self.numadd
b [10]

:[12]
b [14]

:[13]
pushi.e 0
pop.v.i self.thisnum
pushi.e 0
pop.v.i self.place

:[14]
push.v self.thisnum
pop.v.v self.thisnum2
push.v self.place
pop.v.v self.i

:[15]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [17]

:[16]
push.v self.thisnum2
push.v self.i
pushi.e 10
conv.i.v
call.i power(argc=2)
div.v.v
call.i floor(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.numnum
push.v self.thisnum2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.numnum
push.v self.i
pushi.e 10
conv.i.v
call.i power(argc=2)
mul.v.v
sub.v.v
pop.v.v self.thisnum2
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [15]

:[17]
push.v self.place
pop.v.v self.i

:[18]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [20]

:[19]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 34
add.i.v
push.v self.x
pushi.e 92
add.i.v
push.v self.i
pushi.e 9
mul.i.v
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.numnum
pushi.e 1775
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [18]

:[20]
push.v self.finished
pushi.e 1
cmp.i.v EQ
bf [end]

:[21]
push.v self.hspeed
push.d 0.5
sub.d.v
pop.v.v self.hspeed
push.v self.x
pushi.e -110
cmp.i.v LT
bf [end]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[end]
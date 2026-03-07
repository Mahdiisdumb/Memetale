.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
cmp.v.v GTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.friction
pushi.e 1
pop.v.i self.con

:[5]
pushi.e 1212
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.v 1212.cooltimer
pop.v.v self.time
b [8]

:[7]
push.v self.time
pushi.e 1
sub.i.v
pop.v.v self.time

:[8]
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1837
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 1214
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
push.v 1214.orange
pop.v.v self.orange

:[10]
push.v self.y
pushi.e 24
add.i.v
push.v self.x
pushi.e 28
add.i.v
push.v self.orange
pushi.e 1
add.i.v
pushi.e 1834
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
bf [15]

:[11]
pushi.e 0
pop.v.i self.place
pushi.e 10
pop.v.i self.numadd
push.v self.thisnum
push.v self.numadd
cmp.v.v GTE
bf [14]

:[12]
push.v self.thisnum
push.v self.numadd
cmp.v.v GTE
bf [14]

:[13]
push.v self.place
pushi.e 1
add.i.v
pop.v.v self.place
push.v self.numadd
pushi.e 10
mul.i.v
pop.v.v self.numadd
b [12]

:[14]
b [16]

:[15]
pushi.e 0
pop.v.i self.thisnum
pushi.e 0
pop.v.i self.place

:[16]
push.v self.thisnum
pop.v.v self.thisnum2
push.v self.place
pop.v.v self.i

:[17]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [19]

:[18]
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
b [17]

:[19]
push.v self.place
pop.v.v self.i

:[20]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [22]

:[21]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 25
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
b [20]

:[22]
push.v self.finished
pushi.e 1
cmp.i.v EQ
bf [end]

:[23]
push.v self.vspeed
push.d 0.5
sub.d.v
pop.v.v self.vspeed
push.v self.y
pushi.e -50
cmp.i.v LT
bf [end]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[end]
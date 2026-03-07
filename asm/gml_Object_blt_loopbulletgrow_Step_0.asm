.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.radchange
push.v self.specialtimer
pushi.e 0
cmp.i.v GT
bf [6]

:[1]
push.v self.radius
push.v self.idealradius
cmp.v.v LT
bf [3]

:[2]
push.v self.radius
pushi.e 2
add.i.v
pop.v.v self.radius
pushi.e 1
pop.v.i self.radchange

:[3]
push.v self.radius
push.v self.idealradius
cmp.v.v GT
bf [5]

:[4]
push.v self.idealradius
pop.v.v self.radius

:[5]
b [10]

:[6]
push.v self.radius
push.v self.idealradius
cmp.v.v GT
bf [8]

:[7]
push.v self.radius
pushi.e 2
sub.i.v
pop.v.v self.radius
pushi.e 2
pop.v.i self.radchange

:[8]
push.v self.radius
push.v self.idealradius
cmp.v.v LT
bf [10]

:[9]
push.v self.idealradius
pop.v.v self.radius

:[10]
push.v self.radchange
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v self.x
push.v self.direction
pushi.e 90
sub.i.v
pushi.e 2
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.direction
pushi.e 90
sub.i.v
pushi.e 2
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y

:[12]
push.v self.radchange
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
push.v self.x
push.v self.direction
pushi.e 90
sub.i.v
pushi.e -2
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.direction
pushi.e 90
sub.i.v
pushi.e -2
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y

:[14]
push.d 6.283185307179586
push.v self.radius
mul.v.d
pop.v.v self.circ
pushi.e 360
conv.i.d
push.v self.circ
push.v self.speed
div.v.v
div.v.d
pop.v.v self.anglechange
push.v self.direction
push.v self.anglechange
add.v.v
pop.v.v self.direction
push.v self.nxadd
push.v self.xadd
cmp.v.v LT
bf [16]

:[15]
push.v self.nxadd
push.d 0.125
add.d.v
pop.v.v self.nxadd

:[16]
push.v self.x
push.v self.nxadd
add.v.v
pop.v.v self.x
push.v self.y
push.v self.yadd
add.v.v
pop.v.v self.y
push.v self.specialtimer
pushi.e 1
sub.i.v
pop.v.v self.specialtimer
push.v self.specialtimer
pushi.e 1
cmp.i.v LT
bf [end]

:[17]
push.d 0.1
pop.v.d self.idealradius

:[end]
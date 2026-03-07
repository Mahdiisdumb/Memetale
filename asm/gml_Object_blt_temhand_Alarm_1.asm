.localvar 0 arguments

:[0]
pushi.e -1
push.v self.temno
conv.v.i
push.v [array]self.temdir
pushi.e 180
sub.i.v
pop.v.v self.direction
pushi.e 12
pop.v.i self.speed
push.v self.direction
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.x
pushi.e -1
push.v self.temno
conv.v.i
push.v [array]self.temx1
pushi.e 6
sub.i.v
cmp.v.v GTE
bf [3]

:[2]
pushi.e 0
pushi.e -1
push.v self.temno
conv.v.i
pop.v.i [array]self.temx1
push.v self.temno
pushi.e 1
sub.i.v
pop.v.v self.temno
pushi.e -1
push.v self.temno
conv.v.i
push.v [array]self.temx2
pushi.e 22
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y

:[3]
push.v self.direction
pushi.e 180
cmp.i.v EQ
bf [6]

:[4]
push.v self.x
pushi.e -1
push.v self.temno
conv.v.i
push.v [array]self.temx1
pushi.e 6
add.i.v
cmp.v.v LTE
bf [6]

:[5]
pushi.e 0
pushi.e -1
push.v self.temno
conv.v.i
pop.v.i [array]self.temx1
push.v self.temno
pushi.e 1
sub.i.v
pop.v.v self.temno
pushi.e -1
push.v self.temno
conv.v.i
push.v [array]self.temx2
pushi.e 2
add.i.v
pop.v.v self.x

:[6]
push.v self.direction
pushi.e 270
cmp.i.v EQ
bf [9]

:[7]
push.v self.y
pushi.e -1
push.v self.temno
conv.v.i
push.v [array]self.Mahdii2
pushi.e 6
sub.i.v
cmp.v.v GTE
bf [9]

:[8]
pushi.e 0
pushi.e -1
push.v self.temno
conv.v.i
pop.v.i [array]self.temx1
push.v self.temno
pushi.e 1
sub.i.v
pop.v.v self.temno
pushi.e -1
push.v self.temno
conv.v.i
push.v [array]self.temy2
pushi.e 22
sub.i.v
pop.v.v self.y

:[9]
push.v self.direction
pushi.e 90
cmp.i.v EQ
bf [12]

:[10]
push.v self.y
pushi.e -1
push.v self.temno
conv.v.i
push.v [array]self.Mahdii2
pushi.e 6
add.i.v
cmp.v.v LTE
bf [12]

:[11]
pushi.e 0
pushi.e -1
push.v self.temno
conv.v.i
pop.v.i [array]self.temx1
push.v self.temno
pushi.e 1
sub.i.v
pop.v.v self.temno
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x
pushi.e -1
push.v self.temno
conv.v.i
push.v [array]self.temy2
pushi.e 2
add.i.v
pop.v.v self.y

:[12]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
push.v self.temno
pushi.e 4
cmp.i.v LT
bf [15]

:[13]
pushglb.v global.turntimer
pushi.e 2
cmp.i.v LT
bf [15]

:[14]
push.v self.turned
pushi.e 0
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 1
pop.v.i self.turned
pushi.e -1
pop.v.i global.turntimer
pushi.e 3
pop.v.i global.mnfight

:[18]
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v GT
bf [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
push.v self.temno
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
push.v self.y
push.v self.ystart
pushi.e 25
add.i.v
cmp.v.v LT
b [23]

:[22]
push.e 0

:[23]
bf [end]

:[24]
pushi.e 0
pop.v.i self.temno
pushi.e 295
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[25]
pushi.e 0
pop.v.i 295.atk

:[26]
call.i instance_destroy(argc=0)
popz.v

:[end]
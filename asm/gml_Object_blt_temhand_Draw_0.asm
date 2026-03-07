.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.adjustx
pushi.e 0
pop.v.i self.adjusty
push.v self.direction
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 4
pop.v.i self.adjustx

:[2]
push.v self.direction
pushi.e 180
cmp.i.v EQ
bf [4]

:[3]
pushi.e 4
pop.v.i self.adjustx

:[4]
push.v self.direction
pushi.e 270
cmp.i.v EQ
bf [6]

:[5]
pushi.e 4
pop.v.i self.adjusty

:[6]
push.v self.direction
pushi.e 90
cmp.i.v EQ
bf [8]

:[7]
pushi.e 4
pop.v.i self.adjusty

:[8]
push.v self.y
push.v self.adjusty
add.v.v
push.v self.x
push.v self.adjustx
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.x
pushi.e 10
add.i.v
pushi.e -1
push.v self.temno
conv.v.i
pop.v.v [array]self.temx2
push.v self.y
pushi.e 10
add.i.v
pushi.e -1
push.v self.temno
conv.v.i
pop.v.v [array]self.temy2
push.v self.x
push.v 744.x
pushi.e 2
add.i.v
sub.v.v
pop.v.v self.xdif
push.v self.y
push.v 744.y
pushi.e 6
add.i.v
sub.v.v
pop.v.v self.ydif
push.v self.xdif
call.i abs(argc=1)
pushi.e 20
cmp.i.v LT
bf [10]

:[9]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 2
sub.i.v
pop.i.v [array]self.alarm

:[13]
push.v self.ydif
call.i abs(argc=1)
pushi.e 20
cmp.i.v LT
bf [15]

:[14]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 5
cmp.i.v GT
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
pushi.e 2
sub.i.v
pop.i.v [array]self.alarm

:[18]
push.v self.xdif
call.i abs(argc=1)
pushi.e 10
cmp.i.v LT
bf [20]

:[19]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 4
cmp.i.v GT
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 2
conv.i.d
div.d.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[23]
push.v self.ydif
call.i abs(argc=1)
pushi.e 10
cmp.i.v LT
bf [25]

:[24]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 4
cmp.i.v GT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 2
conv.i.d
div.d.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[28]
pushi.e 0
pop.v.i self.i

:[29]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [end]

:[30]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.temx1
pushi.e 0
cmp.i.v GT
bf [33]

:[31]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.temy2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.temx2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.Mahdii2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.temx1
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.temy2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.temx2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.Mahdii2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.temx1
call.i collision_rectangle(argc=7)
conv.v.b
bf [33]

:[32]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[33]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [29]

:[end]
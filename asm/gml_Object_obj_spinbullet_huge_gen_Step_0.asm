.localvar 0 arguments
.localvar 1 i 10308

:[0]
push.v self.counter
push.v self.num
push.v self.trip
mul.v.v
cmp.v.v EQ
bf [2]

:[1]
push.v self.add_dir
push.v self.num
push.v self.maxnum
div.v.v
pushi.e 360
mul.i.v
push.v self.side
mul.v.v
add.v.v
push.v self.radius
call.i lengthdir_x(argc=2)
pop.v.v self.xx
push.v self.add_dir
push.v self.num
push.v self.maxnum
div.v.v
pushi.e 360
mul.i.v
push.v self.side
mul.v.v
add.v.v
push.v self.radius
call.i lengthdir_y(argc=2)
pop.v.v self.yy
pushi.e 1654
conv.i.v
push.v self.centery
push.v self.yy
add.v.v
push.v self.centerx
push.v self.xx
add.v.v
call.i instance_create(argc=3)
pushi.e -1
push.v self.num
conv.v.i
pop.v.v [array]self.spinbullet
push.v self.num
pushi.e 1
add.i.v
pop.v.v self.num

:[2]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
push.v self.maxnum
pushi.e 1
sub.i.v
push.v self.trip
mul.v.v
cmp.v.v GT
bf [20]

:[3]
pushi.e 142
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 142
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.deactivate
pushi.e -99
pop.v.i self.num
pushi.e -50
pop.v.i self.counter
pushi.e 0
pop.v.i local.i

:[4]
pushloc.v local.i
push.v self.maxnum
cmp.v.v LT
bf [18]

:[5]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.spinbullet
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[6]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.spinbullet
conv.v.i
pop.v.i [stacktop]self.king

:[8]
push.v self.centerx
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.spinbullet
conv.v.i
pop.v.v [stacktop]self.centerx
push.v self.centery
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.spinbullet
conv.v.i
pop.v.v [stacktop]self.centery

:[9]
push.v self.strike
pushi.e 0
cmp.i.v EQ
bf [13]

:[10]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.spinbullet
conv.v.i
pushenv [12]

:[11]
pushi.e 12
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[12]
popenv [11]

:[13]
push.v self.strike
pushi.e 1
cmp.i.v EQ
bf [17]

:[14]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.spinbullet
conv.v.i
pushenv [16]

:[15]
pushi.e 12
conv.i.v
push.v self.centery
push.v self.centerx
call.i move_towards_point(argc=3)
popz.v
pushi.e 1
pop.v.i self.friction

:[16]
popenv [15]

:[17]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [4]

:[18]
push.v self.strike
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
push.v self.counter
pushi.e -44
cmp.i.v EQ
bf [22]

:[21]
push.v self.strike
pushi.e 1
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [end]

:[24]
pushi.e 0
pop.v.i local.i

:[25]
pushloc.v local.i
push.v self.maxnum
cmp.v.v LT
bf [31]

:[26]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.spinbullet
call.i instance_exists(argc=1)
conv.v.b
bf [30]

:[27]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.spinbullet
conv.v.i
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]

:[30]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [25]

:[31]
pushi.e 1650
conv.i.v
push.v self.centery
push.v self.centerx
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]
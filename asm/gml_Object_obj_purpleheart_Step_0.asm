.localvar 0 arguments

:[0]
pushglb.v global.invc
pushi.e 0
cmp.i.v GT
bt [2]

:[1]
push.v 155.runaway
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
push.d 0.5
pop.v.d self.image_speed
b [6]

:[5]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[6]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [31]

:[7]
push.v 1575.left
conv.v.b
bf [10]

:[8]
push.v self.x
push.v self.xmid
push.v self.xlen
sub.v.v
cmp.v.v GT
bf [10]

:[9]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[10]
push.v 1575.right
conv.v.b
bf [13]

:[11]
push.v self.x
push.v self.xmid
push.v self.xlen
add.v.v
cmp.v.v LT
bf [13]

:[12]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[13]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [19]

:[14]
push.v self.moving
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.yno
pushi.e 1
cmp.i.v GT
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 1
pop.v.i self.moving

:[19]
push.v self.moving
pushi.e 1
cmp.i.v EQ
bf [22]

:[20]
push.v self.space
push.v self.yspace
pushi.e 3
conv.i.d
div.d.v
add.v.v
pop.v.v self.space
push.v self.yzero
push.v self.yno
pushi.e 1
sub.i.v
push.v self.yspace
mul.v.v
add.v.v
push.v self.space
sub.v.v
push.v self.yoff
add.v.v
pop.v.v self.y
push.v self.space
push.v self.yspace
cmp.v.v GTE
bf [22]

:[21]
push.v self.yno
pushi.e 1
sub.i.v
pop.v.v self.yno
pushi.e 0
pop.v.i self.space
pushi.e 0
pop.v.i self.moving

:[22]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [28]

:[23]
push.v self.moving
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.v self.yno
push.v self.yamt
cmp.v.v LT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 2
pop.v.i self.moving

:[28]
push.v self.moving
pushi.e 2
cmp.i.v EQ
bf [31]

:[29]
push.v self.space
push.v self.yspace
pushi.e 3
conv.i.d
div.d.v
add.v.v
pop.v.v self.space
push.v self.yzero
push.v self.yno
pushi.e 1
sub.i.v
push.v self.yspace
mul.v.v
add.v.v
push.v self.space
add.v.v
push.v self.yoff
add.v.v
pop.v.v self.y
push.v self.space
push.v self.yspace
cmp.v.v GTE
bf [31]

:[30]
push.v self.yno
pushi.e 1
add.i.v
pop.v.v self.yno
pushi.e 0
pop.v.i self.space
pushi.e 0
pop.v.i self.moving

:[31]
push.v self.ttype
pushi.e 1
cmp.i.v EQ
bf [37]

:[32]
push.v self.yoff
push.v self.yadd
add.v.v
pop.v.v self.yoff
push.v self.y
push.v self.yadd
add.v.v
pop.v.v self.y
push.v self.yoff
push.v self.yspace
cmp.v.v GT
bf [37]

:[33]
push.v self.yno
pushi.e 1
add.i.v
pop.v.v self.yno
push.v self.yno
push.v self.yamt
cmp.v.v GT
bf [35]

:[34]
push.v self.yamt
pop.v.v self.yno
pushi.e 6
pop.v.i self.dmg
call.i scr_damagestandard_x(argc=0)
popz.v

:[35]
pushi.e 0
pop.v.i self.yoff
push.v self.moving
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
push.v self.yzero
push.v self.yno
pushi.e 1
sub.i.v
push.v self.yspace
mul.v.v
add.v.v
push.v self.space
add.v.v
push.v self.yoff
add.v.v
pop.v.v self.y

:[37]
push.v self.ttype
pushi.e 3
cmp.i.v EQ
bf [49]

:[38]
pushi.e 350
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushi.e 350
conv.i.v
pushi.e 460
conv.i.v
push.v self.xmid
push.v self.xlen
sub.v.v
call.i instance_create(argc=3)
popz.v

:[40]
pushi.e 350
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [43]

:[41]
push.v 350.y
pushi.e 320
cmp.i.v GT
bf [43]

:[42]
push.v 350.y
pushi.e 4
sub.i.v
pop.v.v 350.y

:[43]
push.v self.yzero
pushi.e 100
cmp.i.v GT
bf [45]

:[44]
push.v self.yzero
pushi.e 4
sub.i.v
pop.v.v self.yzero

:[45]
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y
push.v self.yz2
pushi.e 4
add.i.v
pop.v.v self.yz2
push.v self.yz2
push.v self.yspace
cmp.v.v GT
bf [47]

:[46]
push.v self.yz2
push.v self.yspace
sub.v.v
pop.v.v self.yz2
push.v self.yamt
pushi.e 1
add.i.v
pop.v.v self.yamt

:[47]
push.v self.yzero
pushi.e 100
cmp.i.v LTE
bf [49]

:[48]
pushi.e 100
pop.v.i self.yzero
pushi.e 1
pop.v.i self.ttype
push.v self.yadd2
pop.v.v self.yadd

:[49]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [end]

:[50]
pushi.e 744
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[51]
pushi.e -200
pop.v.i 744.x

:[end]
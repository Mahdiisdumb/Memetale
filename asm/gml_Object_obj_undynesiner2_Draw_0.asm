.localvar 0 arguments

:[0]
pushi.e 274
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 274.x
pushi.e 20
sub.i.v
pop.v.v self.xx
push.v 274.y
pushi.e 20
sub.i.v
pop.v.v self.yy

:[2]
push.v self.drawngr
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.gr
call.i sprite_delete(argc=1)
popz.v

:[4]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v 760.y
push.v self.yy
sub.v.v
pushi.e 240
conv.i.v
push.v self.yy
push.v self.xx
call.i sprite_create_from_screen_x(argc=8)
pop.v.v self.gr
push.v self.gr
pop.v.v self.sprite_index
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [14]

:[5]
pushi.e 32
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [14]

:[6]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [8]

:[7]
push.v self.qq
push.d 0.2
add.d.v
pop.v.v self.qq

:[8]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [10]

:[9]
push.v self.qq
push.d 0.2
sub.d.v
pop.v.v self.qq

:[10]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [12]

:[11]
push.v self.ww
pushi.e 1
sub.i.v
pop.v.v self.ww

:[12]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [14]

:[13]
push.v self.ww
pushi.e 1
add.i.v
pop.v.v self.ww

:[14]
push.v self.ww
push.v self.qq
call.i scr_waver_height(argc=2)
popz.v
pushi.e 1
pop.v.i self.drawngr
push.v self.idealww
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.idealww2
push.v self.ww
push.v self.idealww2
cmp.v.v GT
bf [16]

:[15]
push.v self.ww
pushi.e 1
sub.i.v
pop.v.v self.ww

:[16]
push.v self.ww
push.v self.idealww2
cmp.v.v LT
bf [18]

:[17]
push.v self.ww
pushi.e 1
add.i.v
pop.v.v self.ww

:[18]
push.v self.idealww
push.d 0.1
cmp.d.v EQ
bf [20]

:[19]
push.v self.ww
pushi.e 2
cmp.i.v LT
b [21]

:[20]
push.e 0

:[21]
bf [end]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[end]
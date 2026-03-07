.localvar 0 arguments

:[0]
push.v self.gowhite
pushi.e 1
cmp.i.v EQ
bf [17]

:[1]
push.v self.wht
push.d 0.2
add.d.v
pop.v.v self.wht
push.v self.wht
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.wht
push.d 1.5
cmp.d.v GT
bf [17]

:[2]
pushi.e 2
pop.v.i self.gowhite
push.s "music/yourbestfriend_3.ogg"@2737
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.fmusic
pushi.e 1686
conv.i.v
pushi.e 0
conv.i.v
pushi.e 410
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.al2
pushi.e 4
push.v self.al2
conv.v.i
pop.v.i [stacktop]self.type
push.v self.al
conv.v.i
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 1686
conv.i.v
pushi.e 42
conv.i.v
pushi.e 110
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.und2
pushi.e 3
push.v self.und2
conv.v.i
pop.v.i [stacktop]self.type
push.v self.und
conv.v.i
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 1686
conv.i.v
pushi.e 10
conv.i.v
pushi.e -128
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.asg2
pushi.e 5
push.v self.asg2
conv.v.i
pop.v.i [stacktop]self.type
push.v self.asg
conv.v.i
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 1686
conv.i.v
pushi.e 56
conv.i.v
pushi.e 290
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sans2
pushi.e 2
push.v self.sans2
conv.v.i
pop.v.i [stacktop]self.type
push.v self.sans
conv.v.i
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 1686
conv.i.v
pushi.e 0
conv.i.v
pushi.e 513
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.pap2
pushi.e 1
push.v self.pap2
conv.v.i
pop.v.i [stacktop]self.type
push.v self.pap
conv.v.i
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
pushi.e 1686
conv.i.v
pushi.e 48
conv.i.v
pushi.e 185
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tor2
push.v self.tor
conv.v.i
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
pushi.e 1674
pushenv [16]

:[15]
push.v self.y
pushi.e 100
sub.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.shimmy

:[16]
popenv [15]

:[17]
push.v self.gowhite
pushi.e 2
cmp.i.v EQ
bf [20]

:[18]
push.v self.wht
push.d 0.2
sub.d.v
pop.v.v self.wht
push.v self.wht
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.wht
push.d 0.04
cmp.d.v LT
bf [20]

:[19]
pushi.e 0
pop.v.i self.wht
pushi.e 0
pop.v.i self.gowhite

:[20]
push.v self.border_d
pushi.e 1
cmp.i.v EQ
bf [24]

:[21]
pushi.e 310
pop.v.i self.cx
pushi.e 330
pop.v.i self.cx2
pushi.e 290
pop.v.i self.cy
pushi.e 310
pop.v.i self.cy2
push.v self.cx
pushi.e 2
add.i.v
pop.v.v 744.x
push.v self.cy
pushi.e 2
add.i.v
pop.v.v 744.y
pushi.e 0
pop.v.i 744.movement
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.cc
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [23]

:[22]
pushi.e 1
conv.i.v
push.v self.cy2
push.v self.cc
add.v.v
push.v self.cx2
push.v self.cc
add.v.v
push.v self.cy
push.v self.cc
sub.v.v
push.v self.cx
push.v self.cc
sub.v.v
call.i draw_rectangle(argc=5)
popz.v
push.v self.cc
pushi.e 1
add.i.v
pop.v.v self.cc
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [22]

:[23]
popz.i

:[24]
push.v self.trickblack
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.v self.depth
pushi.e 10
sub.i.v
push.v self.flowey
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.d 0.5
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[26]
push.v self.lastwhite
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 0
pushi.e 2
push.v self.wht
pushi.e 2
mul.i.v
add.v.i
call.i random(argc=1)
add.v.i
pushi.e 2
push.v self.wht
pushi.e 2
mul.i.v
sub.v.i
call.i random(argc=1)
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
pushi.e 0
pushi.e 2
push.v self.wht
pushi.e 2
mul.i.v
add.v.i
call.i random(argc=1)
add.v.i
pushi.e 2
push.v self.wht
pushi.e 2
mul.i.v
sub.v.i
call.i random(argc=1)
sub.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview
push.v self.wht
push.d 0.003
add.d.v
pop.v.v self.wht
push.v self.wht
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[28]
push.v self.leg
pushi.e 0
cmp.i.v GT
bf [end]

:[29]
push.v self.leg
pushi.e 1
cmp.i.v EQ
bf [33]

:[30]
push.v self.legx
pushbltn.v self.room_width
pushi.e 50
add.i.v
cmp.v.v GT
bf [32]

:[31]
push.v self.legx
pushi.e 10
sub.i.v
pop.v.v self.legx

:[32]
push.v self.leg_r
pushi.e 1
add.i.v
pop.v.v self.leg_r

:[33]
push.v self.leg
pushi.e 2
cmp.i.v EQ
bf [37]

:[34]
push.v self.leg_r
pushi.e 1
add.i.v
pop.v.v self.leg_r
push.v self.legx
pushbltn.v self.room_width
pushi.e 200
add.i.v
cmp.v.v LT
bf [36]

:[35]
push.v self.legx
pushi.e 10
add.i.v
pop.v.v self.legx
b [37]

:[36]
pushi.e 0
pop.v.i self.leg

:[37]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.leg_r
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 180
conv.i.v
push.v self.legx
pushi.e 0
conv.i.v
pushi.e 524
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]
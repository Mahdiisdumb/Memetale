.localvar 0 arguments

:[0]
push.v self.pause
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
b [3]

:[2]
pushi.e 0
pop.v.i self.siner

:[3]
push.v self.burston
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.siner
push.d 0.3
mul.d.v
call.i sin(argc=1)
call.i abs(argc=1)
push.d 0.5
mul.d.v
push.d 0.4
add.d.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
push.v self.y
pushi.e 18
add.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
pushi.e 24
sub.i.v
pushi.e 0
conv.i.v
pushi.e 596
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
push.d 0.3
mul.d.v
call.i sin(argc=1)
call.i abs(argc=1)
push.d 0.5
mul.d.v
push.d 0.4
add.d.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 2
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 18
add.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
push.v self.x
pushi.e 28
add.i.v
pushi.e 0
conv.i.v
pushi.e 596
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.05
mul.d.v
sub.v.i
pushi.e 2
conv.i.v
push.v self.y
pushi.e 84
add.i.v
pushi.e 112
add.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 597
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 40
add.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 594
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
neg.v
pushi.e 2
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 26
sub.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
sub.v.v
pushi.e 0
conv.i.v
pushi.e 595
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 36
add.i.v
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 4
add.i.v
pushi.e 0
conv.i.v
pushi.e 593
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
push.v self.x
pushglb.v global.faceemotion
pushi.e 592
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.fadewhite
pushi.e 1
cmp.i.v EQ
bf [15]

:[6]
push.i -999999
pop.v.i self.depth
push.v self.whiteval
push.d 0.2
add.d.v
pop.v.v self.whiteval
push.v self.whiteval
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
push.v self.whiteval
pushi.e 10
cmp.i.v GT
bf [8]

:[7]
pushi.e -1
push.v self.whiteval
pushi.e 10
conv.i.d
div.d.v
add.v.i
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
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

:[8]
push.v self.whiteval
pushi.e 10
cmp.i.v EQ
bf [10]

:[9]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 92
conv.i.v
call.i snd_play(argc=1)
popz.v

:[13]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.whiteval
pushi.e 44
cmp.i.v GTE
bf [15]

:[14]
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.do_room_goto

:[15]
push.v self.shake
pushi.e 1
cmp.i.v EQ
bf [end]

:[16]
push.v self.xnow
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.ynow
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.v
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[end]
.localvar 0 arguments

:[0]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[1]
push.v 784.halt
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.d 0.25
pop.v.d self.face_speed
b [4]

:[3]
pushi.e 0
pop.v.i self.face_index
pushi.e 0
pop.v.i self.face_speed

:[4]
b [6]

:[5]
pushi.e 0
pop.v.i self.face_index
pushi.e 0
pop.v.i self.face_speed

:[6]
pushglb.v global.faceemotion
pushi.e 8
cmp.i.v EQ
bf [8]

:[7]
push.d 0.13
pop.v.d self.face_speed

:[8]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.choicer
pushi.e 1
cmp.i.v EQ
bf [23]

:[9]
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 40
add.i.v
pushi.e 0
conv.i.v
pushi.e 46
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[11]
push.v self.choice
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 60
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 300
add.i.v
pushi.e 0
conv.i.v
pushi.e 46
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[13]
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bt [15]

:[14]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [16]

:[15]
push.e 1

:[16]
bf [21]

:[17]
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
pop.v.i self.choice
b [20]

:[19]
pushi.e 0
pop.v.i self.choice

:[20]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[21]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [23]

:[22]
pushi.e 2
pop.v.i self.choicer

:[23]
push.v self.fadeouter
pushi.e 1
cmp.i.v EQ
bf [27]

:[24]
push.v self.fadeamt
pushi.e 1
cmp.i.v LT
bf [26]

:[25]
push.v self.fadeamt
push.d 0.04
add.d.v
pop.v.v self.fadeamt

:[26]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.fadeamt
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

:[27]
push.v self.fadeouter
pushi.e 2
cmp.i.v EQ
bf [end]

:[28]
push.v self.fadeamt
pushi.e 0
cmp.i.v GT
bf [30]

:[29]
push.v self.fadeamt
push.d 0.04
sub.d.v
pop.v.v self.fadeamt
b [31]

:[30]
pushi.e 0
pop.v.i self.fadeouter

:[31]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.fadeamt
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

:[end]
.localvar 0 arguments

:[0]
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
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 100
add.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 1
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.sprite_width
sub.v.v
pushi.e 20
add.i.v
cmp.v.v LT
bf [2]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.x
pop.v.v self.nowx
push.v self.y
pop.v.v self.nowy
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.con

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 130
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[7]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.shake
pushi.e 723
pop.v.i self.sprite_index
pushi.e 4
pop.v.i self.con
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [11]

:[10]
push.v self.nowy
pushi.e 14
add.i.v
pop.v.v self.nowy
pushi.e 2
pop.v.i self.shake
pushi.e 722
pop.v.i self.sprite_index
push.v self.y
pushi.e 14
add.i.v
pop.v.v self.y
pushi.e 6
pop.v.i self.con

:[11]
push.v self.shake
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.v self.shake
push.d 0.03
add.d.v
pop.v.v self.shake
push.v self.nowx
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.nowy
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[13]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[end]
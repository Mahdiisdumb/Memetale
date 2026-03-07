.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.starx
pushi.e 8
sub.i.v
pop.v.v self.starx
push.v self.starx
pushi.e -80
cmp.i.v LT
bf [3]

:[2]
push.v self.starx
pushi.e 80
add.i.v
pop.v.v self.starx
push.v self.ioff
pushi.e 2
add.i.v
pop.v.v self.ioff

:[3]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [7]

:[4]
push.v self.stsp
push.d 0.2
sub.d.v
pop.v.v self.stsp
push.v self.stsp
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
pushi.e 0
pop.v.i self.stsp

:[6]
push.v self.starx
push.v self.stsp
sub.v.v
pop.v.v self.starx

:[7]
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [9]

:[8]
push.v self.type
pushi.e 2
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [end]

:[11]
pushi.e 0
pop.v.i self.i

:[12]
push.v self.i
pushi.e 30
cmp.i.v LT
bf [14]

:[13]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 4
mul.i.v
push.v self.i
push.v self.ioff
add.v.v
pushi.e 16
mul.i.v
add.v.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.stary
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
push.v self.starx
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pushi.e 0
conv.i.v
pushi.e 2322
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [12]

:[14]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1587
conv.i.v
push.v self.stary
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
pushbltn.v self.room_width
pushi.e 20
add.i.v
push.v self.stary
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
pushi.e -20
conv.i.v
call.i collision_line(argc=7)
conv.v.b
bf [16]

:[15]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[16]
push.v 1587.y
push.v self.stary
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
cmp.v.v LT
bf [end]

:[17]
push.v self.stary
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
pop.v.v 1587.y

:[end]
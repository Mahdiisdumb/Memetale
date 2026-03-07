.localvar 0 arguments

:[0]
push.v self.type
pop.v.v self.truetype
pushi.e 1
pop.v.i self.active
push.v self.truetype
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.cb
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.cb_a
pushi.e 760
pushi.e 40
push.v self.i
mul.v.i
add.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
pushi.e 40
push.v self.i
mul.v.i
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -10
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.i [stacktop]self.action
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
push.v self.truetype
pushi.e 1
cmp.i.v EQ
bf [8]

:[5]
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [8]

:[7]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.cb
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.cb_a
pushi.e -120
pushi.e 40
push.v self.i
mul.v.i
sub.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
pushi.e 40
push.v self.i
mul.v.i
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.v [stacktop]self.y
pushi.e 10
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.i [stacktop]self.action
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[8]
push.v self.truetype
pushi.e 2
cmp.i.v EQ
bf [14]

:[9]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.cb
pop.v.v self.cb_a
push.v self.cb_a
conv.v.i
pushenv [11]

:[10]
push.v self.text
call.i string_width(argc=1)
pop.v.v self.width

:[11]
popenv [10]
push.v self.x
push.v self.cb_a
conv.v.i
push.v [stacktop]self.width
sub.v.v
pushi.e 30
sub.i.v
push.v self.cb_a
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -200
push.v self.cb_a
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 12
push.v self.cb_a
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 2
push.v self.cb_a
conv.v.i
pop.v.i [stacktop]self.action
pushi.e 1
push.v self.cb_a
conv.v.i
pop.v.i [stacktop]self.stretch
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.cb
pop.v.v self.cb_b
push.v self.cb_b
conv.v.i
pushenv [13]

:[12]
push.v self.text
call.i string_width(argc=1)
pop.v.v self.width

:[13]
popenv [12]
push.v self.x
push.v self.cb_b
conv.v.i
push.v [stacktop]self.width
add.v.v
pushi.e 30
add.i.v
push.v self.cb_b
conv.v.i
pop.v.v [stacktop]self.x
pushi.e -200
push.v self.cb_b
conv.v.i
pop.v.i [stacktop]self.y
pushi.e 12
push.v self.cb_b
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 2
push.v self.cb_b
conv.v.i
pop.v.i [stacktop]self.action
pushi.e 1
push.v self.cb_b
conv.v.i
pop.v.i [stacktop]self.stretch
pushi.e 4
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[14]
push.v self.truetype
pushi.e 3
cmp.i.v EQ
bf [end]

:[15]
push.v self.y
pushi.e 240
cmp.i.v GT
bf [17]

:[16]
pushi.e 3
pop.v.i self.myaa
b [18]

:[17]
pushi.e -3
pop.v.i self.myaa

:[18]
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.angrand
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [end]

:[20]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.cb
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.cb_a
push.v self.myaa
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.v [stacktop]self.aa
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.i [stacktop]self.stretch
pushi.e 55
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.i [stacktop]self.stretchfactor
push.v self.i
pushi.e 10
conv.i.d
div.d.v
pushi.e 360
mul.i.v
push.v self.angrand
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.v [stacktop]self.x
push.v self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pop.v.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.cb_a
conv.v.i
pushenv [22]

:[21]
push.v self.x
push.v self.image_angle
pushi.e 55
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.image_angle
pushi.e 60
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y

:[22]
popenv [21]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [19]

:[end]
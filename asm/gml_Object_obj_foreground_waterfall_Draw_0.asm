.localvar 0 arguments

:[0]
push.v self.anim
pushi.e 3
add.i.v
pop.v.v self.anim
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [3]

:[2]
push.d 0.2
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -210
push.v self.y
add.v.i
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.anim
add.v.v
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.anim
pushi.e 180
cmp.i.v GT
bf [5]

:[4]
push.v self.anim
pushi.e 180
sub.i.v
pop.v.v self.anim

:[5]
pushi.e 0
pop.v.i self.myview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushbltn.v self.room_width
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
sub.v.v
cmp.v.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.myview

:[10]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushbltn.v self.room_width
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
sub.v.v
cmp.v.v GTE
bf [12]

:[11]
pushbltn.v self.room_width
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
sub.v.v
pop.v.v self.myview

:[12]
push.v self.xstart
push.v self.myview
push.d 0.5
mul.d.v
sub.v.v
pop.v.v self.x

:[end]
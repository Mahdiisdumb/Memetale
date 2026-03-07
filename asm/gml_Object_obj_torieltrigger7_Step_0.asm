.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [11]

:[4]
pushi.e 2
pop.v.i self.conversation
pushi.e 863
pushenv [6]

:[5]
push.v self.x
pushi.e 10
sub.i.v
pop.v.v self.x

:[6]
popenv [5]
pushi.e 1202
pop.v.i 863.rsprite
pushi.e 1205
pop.v.i 863.usprite
pushi.e 1202
pop.v.i 863.sprite_index
pushi.e 0
pop.v.i 1576.visible
pushi.e 863
pushenv [8]

:[7]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 21
conv.i.v
call.i path_start(argc=4)
popz.v

:[8]
popenv [7]
pushi.e 1576
pushenv [10]

:[9]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 21
conv.i.v
call.i path_start(argc=4)
popz.v

:[10]
popenv [9]

:[11]
pushi.e 863
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[12]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [17]

:[15]
push.v 863.path_position
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1200
pop.v.i 863.usprite
pushi.e 1195
pop.v.i 863.rsprite
push.v 1576.x
pushi.e 33
add.i.v
pop.v.v 1576.x
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
push.v 863.y
pushi.e 1
sub.i.v
pop.v.v 863.y
pushi.e 2
pop.v.i 863.facing
pushi.e 90
pop.v.i 863.direction
pushi.e 2
pop.v.i global.facing
push.v 1576.y
pushi.e 3
sub.i.v
pop.v.v 1576.y
push.s "obj_torieltrigger7_243"@27647
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i self.conversation

:[17]
push.v self.conversation
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [24]

:[21]
pushi.e 90
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 863
pushenv [23]

:[22]
pushi.e 0
pop.v.i self.visible

:[23]
popenv [22]
pushi.e 1189
conv.i.v
push.v 863.y
push.v 863.x
call.i scr_marker(argc=3)
pop.v.v self.ruff
push.d 0.1
push.v self.ruff
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 0
pop.v.i 1576.visible
pushi.e 10
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.conversation

:[24]
push.v self.conversation
pushi.e 5
cmp.i.v EQ
bf [26]

:[25]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [end]

:[28]
pushi.e 1200
pop.v.i 863.usprite
pushi.e 0
pop.v.i global.interact
pushi.e 2
pop.v.i self.conversation
pushi.e 863
pushenv [30]

:[29]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
pushi.e 20
conv.i.v
call.i path_start(argc=4)
popz.v

:[30]
popenv [29]
pushi.e 19
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[end]
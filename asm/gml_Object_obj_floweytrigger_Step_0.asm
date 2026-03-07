.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 3
pop.v.i global.interact
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.conversation
pushi.e 148
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[5]
push.v self.conversation
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
pushi.e 764
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.d 3.5
pop.v.d self.conversation

:[10]
push.v self.conversation
push.d 3.5
cmp.d.v EQ
bf [12]

:[11]
pushi.e 764
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 0
pop.v.i self.room_persistent
pushi.e 0
pop.v.i global.specialbattle
pushi.e 90
pop.v.i 862.direction
pushi.e 2
pop.v.i 862.speed
pushi.e 15
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.conversation

:[15]
push.v self.conversation
pushi.e 20
cmp.i.v EQ
bf [17]

:[16]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [24]

:[19]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mus
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.visible
pushi.e 877
pop.v.i self.flow
push.v self.flow
conv.v.i
pushenv [21]

:[20]
pushi.e 0
pop.v.i self.visible

:[21]
popenv [20]
pushi.e 1188
conv.i.v
push.v self.flow
conv.v.i
push.v [stacktop]self.y
push.v self.flow
conv.v.i
push.v [stacktop]self.x
call.i scr_marker(argc=3)
pop.v.v self.flow_m
push.v self.flow_m
conv.v.i
pushenv [23]

:[22]
call.i scr_depth(argc=0)
popz.v

:[23]
popenv [22]
push.d 0.25
push.v self.flow_m
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 21
pop.v.i self.conversation

:[24]
push.v self.conversation
pushi.e 21
cmp.i.v EQ
bf [26]

:[25]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [30]

:[28]
push.v self.flow_m
conv.v.i
push.v [stacktop]self.image_index
pushi.e 5
cmp.i.v GTE
bf [30]

:[29]
pushi.e 0
push.v self.flow_m
conv.v.i
pop.v.i [stacktop]self.visible
push.d 21.2
pop.v.d self.conversation
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[30]
push.v self.conversation
push.d 22.2
cmp.d.v EQ
bf [32]

:[31]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [39]

:[34]
pushi.e 1
pop.v.i global.plot
push.v self.flow_m
conv.v.i
pushenv [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [35]
push.v self.mus
conv.v.i
pushenv [38]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[38]
popenv [37]
pushglb.v global.currentsong
call.i caster_free(argc=1)
popz.v
pushi.e 23
pop.v.i self.conversation

:[39]
push.v self.conversation
pushi.e 23
cmp.i.v EQ
bf [41]

:[40]
pushi.e 1191
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 60
sub.i.v
pushi.e 146
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.temptor
push.d 0.25
push.v self.temptor
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 2
push.v self.temptor
conv.v.i
pop.v.i [stacktop]self.vspeed
push.s "music/toriel.ogg"@2613
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.86
conv.d.v
push.d 0.7
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 24
pop.v.i self.conversation

:[41]
push.v self.conversation
pushi.e 24
cmp.i.v EQ
bf [end]

:[42]
push.v self.temptor
conv.v.i
pushenv [44]

:[43]
call.i scr_depth(argc=0)
popz.v

:[44]
popenv [43]
push.v self.temptor
conv.v.i
push.v [stacktop]self.y
pushi.e 258
cmp.i.v GTE
bf [end]

:[45]
pushi.e 1
pop.v.i self.faketor
pushi.e 0
push.v self.temptor
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.temptor
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 0
push.v self.temptor
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 25
pop.v.i self.conversation
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]
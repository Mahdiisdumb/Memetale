.localvar 0 arguments

:[0]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
cmp.v.v LT
bf [3]

:[1]
push.v self.conversation
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
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
pushi.e 1
pop.v.i self.conversation
pushi.e 0
pop.v.i self.hspeed
pushi.e 188
conv.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 674
pop.v.i global.msc
pushi.e 1
pop.v.i self.conversation
push.d 0.2
pop.v.d self.image_speed
pushi.e 784
conv.i.v
push.v 188.y
pushi.e 10
add.i.v
push.v 188.x
pushi.e 40
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwriter

:[3]
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[4]
push.v 784.halt
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.d 0.2
pop.v.d self.image_speed
b [7]

:[6]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[7]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
call.i scr_textskip(argc=0)
popz.v

:[12]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [17]

:[13]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [17]

:[14]
push.v self.blcon
conv.v.i
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 150
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.conversation
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.i self.volume

:[17]
pushglb.v global.faceemotion
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 746
pop.v.i self.sprite_index

:[19]
pushglb.v global.faceemotion
pushi.e 2
cmp.i.v EQ
bf [end]

:[20]
pushi.e 748
pop.v.i self.sprite_index

:[end]
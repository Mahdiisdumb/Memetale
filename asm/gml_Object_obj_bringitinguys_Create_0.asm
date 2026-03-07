.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.shake
pushi.e 319
conv.i.v
pushi.e 300
conv.i.v
pushi.e -200
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.guy
pushi.e 8
push.v self.guy
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.talk
pushi.e 179
conv.i.v
pushi.e 400
conv.i.v
pushi.e -140
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.guy2
push.v self.guy
conv.v.i
push.v [stacktop]self.depth
pushi.e 1
sub.i.v
push.v self.guy2
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 2
push.v self.guy2
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 7
push.v self.guy2
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.talk
pushi.e 363
conv.i.v
pushi.e 180
conv.i.v
pushi.e -220
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.guy3
push.v self.guy
conv.v.i
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.guy3
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 9
push.v self.guy3
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.talk
pushi.e 242
conv.i.v
pushbltn.v self.room_height
pushi.e 650
add.i.v
pushi.e 80
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.guy4
pushi.e 2
push.v self.guy4
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.guy4
conv.v.i
pop.v.i [stacktop]self.image_yscale
push.v self.guy
conv.v.i
push.v [stacktop]self.depth
pushi.e 2
add.i.v
push.v self.guy4
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 0
push.v self.guy4
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e -7
push.v self.guy4
conv.v.i
pop.v.i [stacktop]self.vspeed
pushi.e 337
conv.i.v
pushi.e 280
conv.i.v
pushbltn.v self.room_width
call.i instance_create(argc=3)
pop.v.v self.guy_r
push.v self.object_index
push.v self.guy_r
conv.v.i
pop.v.v [stacktop]self.parent
pushi.e -1
push.v self.guy_r
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -7
push.v self.guy_r
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.talk_r
pushi.e 333
conv.i.v
pushi.e 360
conv.i.v
pushbltn.v self.room_width
pushi.e 40
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.guy_r2
pushi.e 2
push.v self.guy_r2
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.guy_r2
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e -9
push.v self.guy_r2
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.talk_r
pushi.e 288
conv.i.v
pushi.e 200
conv.i.v
pushbltn.v self.room_width
pushi.e 50
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.guy_r3
pushi.e 2
push.v self.guy_r3
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.guy_r3
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e -6
push.v self.guy_r3
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.guy_r
conv.v.i
push.v [stacktop]self.depth
pushi.e 2
add.i.v
push.v self.guy_r3
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.talk_r
pushi.e 225
conv.i.v
pushi.e 100
conv.i.v
pushbltn.v self.room_width
pushi.e 60
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.guy_r4
pushi.e 2
push.v self.guy_r4
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.guy_r4
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e -5
push.v self.guy_r4
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.guy_r3
conv.v.i
push.v [stacktop]self.depth
pushi.e 1
add.i.v
push.v self.guy_r4
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.guy
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 700
sub.i.v
pop.i.v [stacktop]self.x
push.v self.guy2
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 700
sub.i.v
pop.i.v [stacktop]self.x
push.v self.guy3
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 700
sub.i.v
pop.i.v [stacktop]self.x
pushi.e 80
push.v self.guy4
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 110
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 190
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]
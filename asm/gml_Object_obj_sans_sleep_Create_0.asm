.localvar 0 arguments

:[0]
push.d 0.05
pop.v.d self.image_speed
call.i scr_depth(argc=0)
popz.v
pushi.e 1296
conv.i.v
push.v self.y
pushi.e 1
sub.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.snoozer
pushglb.v global.plot
pushi.e 121
cmp.i.v GT
bt [2]

:[1]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]
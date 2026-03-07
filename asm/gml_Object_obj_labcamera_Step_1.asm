.localvar 0 arguments

:[0]
pushglb.v global.osflavor
pushi.e 3
cmp.i.v LTE
bf [2]

:[1]
pushbltn.v self.fps
pushi.e 21
cmp.i.v LTE
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.fps_counter
pushi.e 1
add.i.v
pop.v.v self.fps_counter
b [6]

:[5]
pushi.e 0
pop.v.i self.fps_counter

:[6]
push.v self.fps_counter
pushi.e 90
cmp.i.v GTE
bf [end]

:[7]
pushi.e 1
pop.v.i self.not_allowed
pushi.e 1074
conv.i.v
push.v self.y
pushi.e 1
sub.i.v
push.v self.x
pushi.e 1
sub.i.v
call.i scr_marker(argc=3)
pop.v.v self.emer
push.d 0.5
push.v self.emer
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 198
push.v self.emer
conv.v.i
pop.v.i [stacktop]self.depth
call.i instance_destroy(argc=0)
popz.v
exit.i

:[end]
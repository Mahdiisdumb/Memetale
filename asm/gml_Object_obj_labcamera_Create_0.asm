.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.drawnlab
pushi.e 0
pop.v.i self.altglow
pushi.e 0
pop.v.i self.not_allowed
pushi.e 0
pop.v.i self.fps_counter
pushglb.v global.osflavor
pushi.e 2
cmp.i.v EQ
bf [end]

:[1]
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
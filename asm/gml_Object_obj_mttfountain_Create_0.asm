.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.siner
pushi.e 2087
conv.i.v
push.v self.y
push.v self.x
call.i scr_marker(argc=3)
pop.v.v self.pudd
push.d 0.5
push.v self.pudd
conv.v.i
pop.v.d [stacktop]self.image_speed
push.i 800000
push.v self.pudd
conv.v.i
pop.v.i [stacktop]self.depth

:[end]
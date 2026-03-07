.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
push.d 0.1
push.d 0.09
conv.d.v
call.i random(argc=1)
sub.v.d
pop.v.v self.image_speed

:[end]
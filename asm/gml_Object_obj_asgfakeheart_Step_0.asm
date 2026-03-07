.localvar 0 arguments

:[0]
push.v self.image_alpha
push.d 0.025
add.d.v
pop.v.v self.image_alpha
push.v self.xstart
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.ystart
push.v self.shake
call.i random(argc=1)
add.v.v
push.v self.shake
call.i random(argc=1)
sub.v.v
pop.v.v self.y

:[end]
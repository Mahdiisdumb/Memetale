.localvar 0 arguments

:[0]
push.v self.image_yscale
push.v self.scaleadd
add.v.v
pop.v.v self.image_yscale
push.v self.image_xscale
push.v self.scaleadd
add.v.v
pop.v.v self.image_xscale
push.v self.scaleadd
push.d 1.1
div.d.v
pop.v.v self.scaleadd

:[end]
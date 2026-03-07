.localvar 0 arguments

:[0]
pushi.e 1084
pop.v.i self.sprite_index
pushi.e 900
pop.v.i self.image_xscale
pushi.e 900
pop.v.i self.image_yscale
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 10
sub.i.v
pop.v.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 10
sub.i.v
pop.v.v self.y
push.d 0.5
pop.v.d self.oalpha
push.v self.oalpha
pop.v.v self.image_alpha
pushi.e 100
pop.v.i self.top

:[end]
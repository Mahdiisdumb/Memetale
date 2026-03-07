.localvar 0 arguments

:[0]
pushi.e 4
pop.v.i self.scalefactor
pushi.e 33
pop.v.i self.left
pushi.e 51
pop.v.i self.top
pushi.e 20
pop.v.i self.width
pushi.e 15
pop.v.i self.height
pushi.e 0
pop.v.i self.on
push.d -1.65
pop.v.d self.ldiff
push.d -2.55
pop.v.d self.tdiff
push.v self.sprite_width
push.v self.width
sub.v.v
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.wdiff
push.v self.sprite_height
push.v self.height
sub.v.v
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.hdiff
push.d -0.15
pop.v.d self.sdiff

:[end]
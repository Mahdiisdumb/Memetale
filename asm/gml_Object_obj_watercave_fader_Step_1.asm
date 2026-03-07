.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
push.v self.oalpha
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.top
div.v.v
sub.v.v
pop.v.v self.a
push.v self.a
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.a
pop.v.v self.image_alpha
b [end]

:[3]
pushi.e 0
pop.v.i self.image_alpha

:[end]
.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.oalpha

:[2]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v GT
bf [end]

:[3]
push.v self.oalpha
push.v self.top
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
div.v.v
push.v self.oalpha
mul.v.v
sub.v.v
pop.v.v self.a
push.v self.a
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
push.v self.a
pop.v.v self.image_alpha
b [end]

:[5]
pushi.e 0
pop.v.i self.image_alpha

:[end]
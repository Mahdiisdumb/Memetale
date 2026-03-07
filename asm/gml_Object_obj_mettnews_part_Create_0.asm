.localvar 0 arguments

:[0]
push.v self.xstart
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
sub.v.v
pop.v.v self.stayx
push.v self.ystart
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
sub.v.v
pop.v.v self.stayy
pushi.e 1
pop.v.i self.on
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.i
pop.v.v self.ang
push.v self.ang
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.ang
pushi.e 2
div.i.v
pop.v.v self.ang

:[2]
pushi.e 1576
pop.v.i self.thischara

:[end]
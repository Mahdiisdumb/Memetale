.localvar 0 arguments

:[0]
push.v self.credno
push.v self.credamt
pushi.e 1
sub.i.v
cmp.v.v LT
bf [end]

:[1]
pushi.e 1707
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.cb
pushi.e -1
push.v self.credno
conv.v.i
push.v [array]self.creditname
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.text
push.v self.credno
pushi.e 1
add.i.v
pop.v.v self.credno

:[end]
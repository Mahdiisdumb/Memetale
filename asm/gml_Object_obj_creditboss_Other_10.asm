.localvar 0 arguments

:[0]
push.v 1708.credno
push.v 1708.credamt
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
pushi.e 1708
push.v 1708.credno
conv.v.i
push.v [array]self.creditname
push.v self.cb
conv.v.i
pop.v.v [stacktop]self.text
push.v 1708.credno
pushi.e 1
add.i.v
pop.v.v 1708.credno

:[end]
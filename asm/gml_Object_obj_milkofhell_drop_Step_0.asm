.localvar 0 arguments

:[0]
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 250
add.i.v
cmp.v.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]
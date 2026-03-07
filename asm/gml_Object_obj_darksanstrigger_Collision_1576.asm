.localvar 0 arguments

:[0]
pushi.e -1
pushi.e -5
pushi.e 47
pop.v.i [array]global.flag
pushi.e 1022
conv.i.v
push.v other.y
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 70
sub.i.v
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]
.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]
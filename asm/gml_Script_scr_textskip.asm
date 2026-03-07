.localvar 0 arguments

:[0]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 1
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [end]

:[2]
pushi.e 784
pushenv [4]

:[3]
push.v self.originalstring
call.i string_length(argc=1)
pop.v.v self.stringpos

:[4]
popenv [3]
pushi.e 1
conv.i.v
call.i control_clear(argc=1)
popz.v

:[end]
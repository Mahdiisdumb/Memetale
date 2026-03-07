.localvar 0 arguments

:[0]
push.v self.skipper
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
call.i room_goto_next(argc=0)
popz.v

:[end]
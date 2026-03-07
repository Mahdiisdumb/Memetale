.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 70
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 138
conv.i.v
call.i room_goto(argc=1)
popz.v

:[3]
pushi.e 84
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e 44
conv.i.v
call.i room_goto(argc=1)
popz.v

:[5]
pushi.e 87
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 82
conv.i.v
call.i room_goto(argc=1)
popz.v

:[7]
pushi.e 69
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [9]

:[8]
pushi.e 219
conv.i.v
call.i room_goto(argc=1)
popz.v

:[9]
pushi.e 82
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [11]

:[10]
pushi.e 7
conv.i.v
call.i room_goto(argc=1)
popz.v

:[11]
pushi.e 89
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [end]

:[12]
pushi.e 244
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]
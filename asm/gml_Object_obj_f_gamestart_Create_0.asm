.localvar 0 arguments

:[0]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "P"@49979
conv.s.v
push.s "FFFFF"@47763
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.fplot
pushi.e 0
conv.i.v
push.s "D"@6302
conv.s.v
push.s "FFFFF"@47763
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.floss
call.i ossafe_ini_close(argc=0)
popz.v
pushi.e 0
pop.v.i global.inbattle
pushglb.v global.fplot
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i room_goto_next(argc=0)
popz.v
b [end]

:[2]
pushi.e 295
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]
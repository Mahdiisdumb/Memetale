.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "Bscotch"@236
conv.s.v
push.s "Toriel"@237
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.bs
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.bs
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@2893
conv.s.v
pushi.e 222
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v
b [4]

:[3]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@2893
conv.s.v
pushi.e 831
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v

:[4]
pushi.e 1
pop.v.i global.interact

:[end]
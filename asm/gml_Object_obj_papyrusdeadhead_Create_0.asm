.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.c
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "PK"@48047
conv.s.v
push.s "Papyrus"@6857
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.M1
push.v self.M1
pushi.e 1
add.i.v
push.s "PK"@48047
conv.s.v
push.s "Papyrus"@6857
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v

:[end]
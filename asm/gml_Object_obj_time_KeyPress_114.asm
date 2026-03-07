.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.s "system_information_962"@3398
conv.s.v
call.i ossafe_file_text_open_write(argc=1)
pop.v.v self.gx
push.s "a"@2906
conv.s.v
push.v self.gx
call.i ossafe_file_text_write_string(argc=2)
popz.v
push.v self.gx
call.i ossafe_file_text_close(argc=1)
popz.v
pushglb.v global.steam_int
pushi.e 1
cmp.i.v EQ
bf [end]

:[2]
push.s "system_information_962"@3398
conv.s.v
call.i steam_file_exists(argc=1)
conv.v.b
not.b
bf [end]

:[3]
push.s "system_information_962"@3398
conv.s.v
push.s "system_information_962"@3398
conv.s.v
call.i steam_file_write_file(argc=2)
popz.v

:[end]
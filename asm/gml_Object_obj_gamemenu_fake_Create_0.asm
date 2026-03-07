.localvar 0 arguments

:[0]
pushi.e 65
pop.v.i self.selected
push.s "flowey_load_name"@31517
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.name
pushi.e 3
pop.v.i self.naming
pushi.e 0
pop.v.i self.selected2
pushi.e 0
pop.v.i self.selected3
pushi.e 0
pop.v.i self.q
pushi.e 0
pop.v.i self.buffer
pushi.e 0
pop.v.i self.doom
pushi.e 1
pop.v.i 139.messed

:[end]
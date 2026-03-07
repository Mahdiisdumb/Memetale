.localvar 0 arguments

:[0]
push.v self.saved
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.save_durara
pop.v.v self.durara
push.v self.save_oner
pop.v.v self.oner
push.v self.save_alarm
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.v self.save_siner2
pop.v.v self.siner2
push.v self.save_md
pop.v.v self.md
push.v self.save_con
pop.v.v self.con
push.v self.save_gr
pop.v.v self.gr
push.v self.save_grgr
pop.v.v self.grgr
push.v self.save_grgrgr
pop.v.v self.grgrgr
call.i scr_floweybodyload(argc=0)
popz.v

:[end]
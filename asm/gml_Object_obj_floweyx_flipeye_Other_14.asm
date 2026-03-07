.localvar 0 arguments

:[0]
push.v self.durara
pop.v.v self.save_durara
push.v self.oner
pop.v.v self.save_oner
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pop.v.v self.save_alarm
push.v self.siner2
pop.v.v self.save_siner2
push.v self.md
pop.v.v self.save_md
push.v self.con
pop.v.v self.save_con
push.v self.gr
pop.v.v self.save_gr
push.v self.grgr
pop.v.v self.save_grgr
push.v self.grgrgr
pop.v.v self.save_grgrgr
call.i scr_floweybodysave(argc=0)
popz.v
pushi.e 1
pop.v.i self.saved
pushi.e 1
pop.v.i self.memorymode

:[end]
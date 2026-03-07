.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.anim
pushi.e 0
pop.v.i self.mode
pushi.e 0
pop.v.i self.rotbonus
pushi.e 0
pop.v.i self.xbonus
pushi.e 0
pop.v.i self.ybonus
pushi.e 0
pop.v.i self.laugh
pushi.e 0
pop.v.i self.laughtimer
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.onoff
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.desperate
pushi.e 0
pop.v.i self.frozen

:[end]
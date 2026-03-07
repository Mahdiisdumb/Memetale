.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.amount
pushi.e 12
pop.v.i self.maxamount
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 100
conv.i.v
call.i random(argc=1)
pop.v.v self.baseang
pushi.e 1
pop.v.i self.lv
pushi.e 0
pop.v.i self.dr

:[end]
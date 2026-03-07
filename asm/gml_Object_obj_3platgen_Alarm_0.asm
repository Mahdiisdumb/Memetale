.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 100
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 60
conv.i.v
pushi.e 125
conv.i.v
pushi.e -2
conv.i.v
pushi.e 40
conv.i.v
call.i scr_hplat(argc=4)
popz.v

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 55
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 60
conv.i.v
pushi.e 65
conv.i.v
pushi.e -4
conv.i.v
pushi.e 40
conv.i.v
call.i scr_hplat(argc=4)
popz.v

:[4]
push.v self.type
pushi.e 2
cmp.i.v EQ
bt [6]

:[5]
push.v self.type
pushi.e 3
cmp.i.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [end]

:[8]
pushi.e 35
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 25
conv.i.v
pushi.e 65
conv.i.v
pushi.e -4
conv.i.v
pushi.e 40
conv.i.v
call.i scr_hplat(argc=4)
popz.v
pushi.e -1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
push.v self.skl
pushi.e 0
cmp.i.v EQ
bf [end]

:[9]
pushi.e 1
pop.v.i self.skl
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]
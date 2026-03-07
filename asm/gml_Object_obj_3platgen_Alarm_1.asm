.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 100
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 60
conv.i.v
pushi.e 125
conv.i.v
pushi.e 2
conv.i.v
pushi.e 80
conv.i.v
call.i scr_hplat(argc=4)
popz.v

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 70
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 80
conv.i.v
pushi.e 80
conv.i.v
pushi.e 4
conv.i.v
pushi.e 80
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
pushi.e 40
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 25
conv.i.v
pushi.e 80
conv.i.v
pushi.e 4
conv.i.v
pushi.e 80
conv.i.v
call.i scr_hplat(argc=4)
popz.v

:[end]
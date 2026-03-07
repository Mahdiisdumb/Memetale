.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
pushi.e 130
conv.i.v
pushi.e 80
conv.i.v
pushi.e 130
conv.i.v
pushi.e 0
conv.i.v
call.i collision_line(argc=7)
conv.v.b
bf [2]

:[1]
pushi.e 3
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[2]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
pushi.e 138
conv.i.v
pushi.e 260
conv.i.v
pushi.e 138
conv.i.v
pushi.e 200
conv.i.v
call.i collision_line(argc=7)
conv.v.b
bf [4]

:[3]
pushi.e 3
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[4]
push.v self.level
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.bgalpha
pushi.e 0
cmp.i.v GT
b [7]

:[6]
push.e 0

:[7]
bf [11]

:[8]
push.v self.bgalpha
push.d 0.2
sub.d.v
pop.v.v self.bgalpha
push.v self.bgalpha
push.d 0.11
cmp.d.v LT
bf [10]

:[9]
pushi.e 0
pop.v.i self.bgalpha

:[10]
push.v self.bgalpha
pushi.e -1
pushi.e 2
pop.v.v [array]self.background_alpha

:[11]
push.v self.level
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
push.v self.bgalpha
pushi.e 1
cmp.i.v LT
b [14]

:[13]
push.e 0

:[14]
bf [18]

:[15]
push.v self.bgalpha
push.d 0.2
add.d.v
pop.v.v self.bgalpha
push.v self.bgalpha
push.d 0.9
cmp.d.v GT
bf [17]

:[16]
pushi.e 1
pop.v.i self.bgalpha

:[17]
push.v self.bgalpha
pushi.e -1
pushi.e 2
pop.v.v [array]self.background_alpha

:[18]
push.v self.initcheck
pushi.e 0
cmp.i.v EQ
bf [end]

:[19]
push.v 1576.y
pushi.e 120
cmp.i.v LT
bf [21]

:[20]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
b [22]

:[21]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[22]
pushi.e 1
pop.v.i self.initcheck

:[end]
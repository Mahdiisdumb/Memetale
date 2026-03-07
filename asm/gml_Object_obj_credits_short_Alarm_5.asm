.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.ii
call.i caster_play(argc=3)
popz.v
pushglb.v global.osflavor
pushi.e 4
cmp.i.v EQ
bf [5]

:[1]
push.v self.number
pushi.e 7
cmp.i.v EQ
bt [3]

:[2]
push.v self.number
push.d 7.5
cmp.d.v EQ
b [4]

:[3]
push.e 1

:[4]
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v self.number
push.d 0.5
add.d.v
pop.v.v self.number
b [9]

:[8]
push.v self.number
pushi.e 1
add.i.v
pop.v.v self.number

:[9]
push.v self.number
pushi.e 9
cmp.i.v LT
bf [11]

:[10]
pushi.e 130
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
b [end]

:[11]
pushi.e 200
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[end]
.localvar 0 arguments

:[0]
pushi.e 518
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 0
pop.v.i self.reduce
push.v 518.lac
pushi.e 4
cmp.i.v LT
bf [13]

:[2]
push.v 518.damageturn
pushi.e 0
cmp.i.v EQ
bf [12]

:[3]
push.v global.km
push.v self.innate_karma
add.v.v
pop.v.v global.km
push.v self.innate_karma
pushi.e 2
cmp.i.v GTE
bf [5]

:[4]
pushi.e 1
pop.v.i self.innage_karma

:[5]
push.v self.innate_karma
pushi.e 3
cmp.i.v GTE
bf [7]

:[6]
pushi.e 2
pop.v.i self.innate_karma

:[7]
push.v self.innate_karma
pushi.e 5
cmp.i.v GTE
bf [9]

:[8]
pushi.e 3
pop.v.i self.innate_karma

:[9]
pushi.e 518
pushenv [11]

:[10]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[11]
popenv [10]

:[12]
b [end]

:[13]
pushglb.v global.hp
pushi.e 60
cmp.i.v GTE
bf [23]

:[14]
push.v global.km
push.v self.innate_karma
add.v.v
pop.v.v global.km
push.v self.innate_karma
pushi.e 2
cmp.i.v GTE
bf [16]

:[15]
pushi.e 1
pop.v.i self.innage_karma

:[16]
push.v self.innate_karma
pushi.e 3
cmp.i.v GTE
bf [18]

:[17]
pushi.e 2
pop.v.i self.innate_karma

:[18]
push.v self.innate_karma
pushi.e 5
cmp.i.v GTE
bf [20]

:[19]
pushi.e 3
pop.v.i self.innate_karma

:[20]
pushi.e 518
pushenv [22]

:[21]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[22]
popenv [21]
b [end]

:[23]
pushglb.v global.hp
pushi.e 30
cmp.i.v GTE
bf [27]

:[24]
push.v global.km
pushi.e 1
add.i.v
pop.v.v global.km
pushi.e 518
pushenv [26]

:[25]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[26]
popenv [25]
b [end]

:[27]
pushi.e 518
pushenv [29]

:[28]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[29]
popenv [28]

:[end]
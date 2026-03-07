.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 487
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushi.e -5
pushi.e 487
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.x
pushi.e 81
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.how_bad_me_key

:[6]
pushi.e -5
pushi.e 487
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [9]

:[7]
push.v self.x
pushi.e 81
cmp.i.v GT
bf [9]

:[8]
push.v self.x
pushi.e 101
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i self.how_bad_me_key

:[12]
pushi.e -5
pushi.e 487
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [14]

:[13]
push.v self.x
pushi.e 110
cmp.i.v GT
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
pushi.e 1
pop.v.i self.how_bad_me_key

:[end]
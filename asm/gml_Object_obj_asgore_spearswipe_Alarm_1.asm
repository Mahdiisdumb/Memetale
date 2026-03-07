.localvar 0 arguments

:[0]
push.v self.curamt
pushi.e 1
add.i.v
pop.v.v self.curamt
push.v self.curamt
push.v self.amt
cmp.v.v LT
bf [9]

:[1]
pushi.e 0
pop.v.i self.image_index
pushi.e 1
pop.v.i self.image_speed
push.v self.swipewait
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
push.v self.curamt
pushi.e 1
cmp.i.v GT
bf [3]

:[2]
push.v self.curamt
push.v self.amt
cmp.v.v LT
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
push.v self.image_xscale
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e -2
pop.v.i self.image_xscale
b [8]

:[7]
pushi.e 2
pop.v.i self.image_xscale

:[8]
b [end]

:[9]
pushi.e 0
pop.v.i self.image_speed
pushi.e 15
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]
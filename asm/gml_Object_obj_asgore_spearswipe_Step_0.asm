.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.swipetimer
pushi.e 1
add.i.v
pop.v.v self.swipetimer
push.v self.swipetimer
push.v self.initswipewait
cmp.v.v GT
bf [3]

:[2]
pushi.e 1
pop.v.i self.con

:[3]
push.v self.quick
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
pushi.e 2
pop.v.i self.image_index
pushi.e 1
pop.v.i self.con

:[5]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [10]

:[6]
push.v self.image_xscale
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e -2
pop.v.i self.image_xscale
b [9]

:[8]
pushi.e 2
pop.v.i self.image_xscale

:[9]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.hitted
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.swipetimer
push.v self.curamt
pushi.e 1
add.i.v
pop.v.v self.curamt

:[10]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [16]

:[11]
push.v self.curamt
push.v self.amt
cmp.v.v GT
bf [13]

:[12]
pushi.e 99
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
b [16]

:[13]
push.v self.swipetimer
pushi.e 1
add.i.v
pop.v.v self.swipetimer
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
push.v self.swipetimer
push.v self.swipewait
cmp.v.v GT
bf [16]

:[14]
pushi.e 1
pop.v.i self.con
push.v self.quick
pushi.e 1
cmp.i.v GT
bf [16]

:[15]
pushi.e 2
pop.v.i self.image_index

:[16]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[17]
push.v self.image_index
push.v self.cutspeed
add.v.v
pop.v.v self.image_index
push.v self.image_index
pushi.e 6
cmp.i.v GTE
bf [end]

:[18]
pushi.e 2
pop.v.i self.con
pushi.e 0
pop.v.i self.swipetimer

:[end]
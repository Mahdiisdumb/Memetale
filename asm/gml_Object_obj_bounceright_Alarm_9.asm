.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [13]

:[1]
push.v self.mydirection
pushi.e 180
add.i.v
pop.v.v self.mydirection
push.v self.myfacing
pushi.e 2
add.i.v
pop.v.v self.myfacing
push.v self.myfacing
pushi.e 4
cmp.i.v GTE
bf [3]

:[2]
push.v self.myfacing
pushi.e 4
sub.i.v
pop.v.v self.myfacing

:[3]
push.v self.mydirection
pushi.e 360
cmp.i.v GTE
bf [5]

:[4]
push.v self.mydirection
pushi.e 360
sub.i.v
pop.v.v self.mydirection

:[5]
push.v self.myfacing
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1920
pop.v.i self.sprite_index

:[7]
push.v self.myfacing
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1923
pop.v.i self.sprite_index

:[9]
push.v self.myfacing
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1922
pop.v.i self.sprite_index

:[11]
push.v self.myfacing
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1921
pop.v.i self.sprite_index

:[13]
push.v self.fliptime
pushi.e -1
pushi.e 9
pop.v.v [array]self.alarm

:[end]
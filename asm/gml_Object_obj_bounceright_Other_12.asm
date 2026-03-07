.localvar 0 arguments

:[0]
push.v self.mydirection
pushi.e 270
cmp.i.v EQ
bf [3]

:[1]
push.v self.myfacing
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.goldshift
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 0
pop.v.i self.goldshift
push.v self.y
pushi.e 40
sub.i.v
pop.v.v self.y
pushi.e 90
pop.v.i self.mydirection
pushi.e 2
pop.v.i self.myfacing
pushi.e 1922
pop.v.i self.sprite_index

:[6]
push.v self.mydirection
pushi.e 0
cmp.i.v EQ
bf [9]

:[7]
push.v self.myfacing
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.goldshift
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 0
pop.v.i self.goldshift
push.v self.x
pushi.e 40
sub.i.v
pop.v.v self.x
pushi.e 180
pop.v.i self.mydirection
pushi.e 3
pop.v.i self.myfacing
pushi.e 1921
pop.v.i self.sprite_index

:[12]
push.v self.mydirection
pushi.e 180
cmp.i.v EQ
bf [15]

:[13]
push.v self.myfacing
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.v self.goldshift
pushi.e 1
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 0
pop.v.i self.goldshift
push.v self.x
pushi.e 40
add.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.mydirection
pushi.e 1
pop.v.i self.myfacing
pushi.e 1923
pop.v.i self.sprite_index

:[18]
push.v self.mydirection
pushi.e 90
cmp.i.v EQ
bf [21]

:[19]
push.v self.myfacing
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
push.v self.goldshift
pushi.e 1
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [end]

:[23]
pushi.e 0
pop.v.i self.goldshift
push.v self.y
pushi.e 40
add.i.v
pop.v.v self.y
pushi.e 270
pop.v.i self.mydirection
pushi.e 0
pop.v.i self.myfacing
pushi.e 1920
pop.v.i self.sprite_index

:[end]
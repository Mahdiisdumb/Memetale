.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.ch
push.v self.sprite_index
pushi.e 146
cmp.i.v EQ
bf [2]

:[1]
push.v self.ch
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 148
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.ch

:[5]
push.v self.sprite_index
pushi.e 147
cmp.i.v EQ
bf [7]

:[6]
push.v self.ch
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 149
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.ch

:[10]
push.v self.sprite_index
pushi.e 148
cmp.i.v EQ
bf [12]

:[11]
push.v self.ch
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 146
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.ch

:[15]
push.v self.sprite_index
pushi.e 149
cmp.i.v EQ
bf [17]

:[16]
push.v self.ch
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 147
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.ch

:[20]
push.v self.flexspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.offset
pushi.e 1
cmp.i.v EQ
bf [end]

:[21]
pushi.e -4
pop.v.i self.vspeed

:[end]
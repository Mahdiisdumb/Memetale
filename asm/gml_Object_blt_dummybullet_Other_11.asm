.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.part
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v self.type
pushi.e 4
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[5]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 135
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.reds

:[7]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [end]

:[8]
pushi.e -1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]
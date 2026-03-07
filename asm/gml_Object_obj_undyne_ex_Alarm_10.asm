.localvar 0 arguments

:[0]
push.v 744.sprite_index
pushi.e 46
cmp.i.v EQ
bf [8]

:[1]
pushi.e 51
pop.v.i 744.sprite_index
pushi.e 3
pop.v.i 744.movement
pushi.e 0
pop.v.i self.green
push.v self.order
pushi.e 3
cmp.i.v EQ
bt [4]

:[2]
push.v self.order
pushi.e 7
cmp.i.v EQ
bt [4]

:[3]
push.v self.order
pushi.e 12
cmp.i.v EQ
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
pushi.e 15
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[7]
b [9]

:[8]
pushi.e 0
pop.v.i self.green
pushi.e 46
pop.v.i 744.sprite_index
pushi.e 1
pop.v.i 744.movement

:[9]
push.v self.lesson
pushi.e -7
cmp.i.v EQ
bt [12]

:[10]
push.v self.lesson
pushi.e -11
cmp.i.v EQ
bt [12]

:[11]
push.v self.lesson
pushi.e -14
cmp.i.v EQ
b [13]

:[12]
push.e 1

:[13]
bf [end]

:[14]
pushi.e 10
pop.v.i global.turntimer

:[end]
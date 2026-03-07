.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 4
cmp.i.v LT
bf [2]

:[1]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
b [end]

:[2]
pushi.e 25
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]
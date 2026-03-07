.localvar 0 arguments

:[0]
pushbltn.v self.current_hour
pop.v.v self.currenthour
push.v self.currenthour
pushi.e 6
cmp.i.v LTE
bt [2]

:[1]
push.v self.currenthour
pushi.e 18
cmp.i.v GTE
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.image_index
b [6]

:[5]
pushi.e 1
pop.v.i self.image_index

:[6]
pushi.e 1800
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]
.localvar 0 arguments

:[0]
pushi.e -300
pop.v.i self.y
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.x
pushi.e 1
pop.v.i self.visible
pushi.e 1631
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.visible

:[2]
popenv [1]
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]
.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 6
pop.v.i self.image_index
push.v self.xstart
push.v self.shudder
sub.v.v
pop.v.v self.x
push.v self.shudder
pushi.e -1
mul.i.v
pop.v.v self.shudder
push.v self.shudder
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.shudder
pushi.e 1
sub.i.v
pop.v.v self.shudder
b [3]

:[2]
push.v self.shudder
pushi.e 1
add.i.v
pop.v.v self.shudder

:[3]
push.v self.shudder
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
pushi.e 8
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
b [end]

:[5]
pushi.e 1
pop.v.i self.doomcon

:[end]
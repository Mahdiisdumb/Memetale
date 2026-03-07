.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 237
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[2]
push.v self.gift
pushi.e 1
cmp.i.v NEQ
bf [5]

:[3]
push.v self.gift
pushi.e 7
cmp.i.v NEQ
bf [5]

:[4]
push.v self.gift
pushi.e 9
cmp.i.v NEQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v 237.x
pop.v.v self.x
push.v 237.y
pop.v.v self.y
b [end]

:[8]
pushi.e 236
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[9]
push.v 236.x
pop.v.v self.x
push.v 236.y
pop.v.v self.y

:[end]
.localvar 0 arguments

:[0]
pushi.e 863
conv.i.v
pushi.e 120
conv.i.v
pushi.e 54
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.toriel
pushi.e 3
push.v self.toriel
conv.v.i
pop.v.i [stacktop]self.facing
pushi.e 1196
push.v self.toriel
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.direction
pushi.e 180
cmp.i.v EQ
pop.v.b self.toriel
pushi.e 1576
pushenv [2]

:[1]
pushi.e 38
pop.v.i self.x
pushi.e 144
pop.v.i self.y

:[2]
popenv [1]

:[end]
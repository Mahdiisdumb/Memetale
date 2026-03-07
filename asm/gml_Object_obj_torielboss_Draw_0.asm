.localvar 0 arguments
.localvar 1 real_sprite 2044

:[0]
push.v self.sprite_index
pop.v.v local.real_sprite
push.v self.sideface
conv.v.b
bf [2]

:[1]
push.v self.sprite_index
pushi.e 750
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 759
pop.v.i self.sprite_index

:[5]
call.i draw_self(argc=0)
popz.v
pushloc.v local.real_sprite
pop.v.v self.sprite_index

:[end]
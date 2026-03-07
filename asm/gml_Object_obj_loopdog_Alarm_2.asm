.localvar 0 arguments

:[0]
pushi.e 118
pop.v.i self.sprite_index
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 119
pop.v.i self.sprite_index

:[end]
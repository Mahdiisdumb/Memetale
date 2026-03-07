.localvar 0 arguments

:[0]
pushi.e 989
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.whitepro
pushi.e -10
pop.v.i self.timer
pushi.e 0
pop.v.i self.d
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]
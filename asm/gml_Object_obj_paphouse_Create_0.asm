.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
push.v self.depth
pushi.e 100
add.i.v
pop.v.v self.depth

:[end]
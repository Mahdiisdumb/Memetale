.localvar 0 arguments

:[0]
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.xx
pushi.e 1329
conv.i.v
push.v self.y
push.v self.x
call.i scr_marker(argc=3)
pop.v.v self.top
pushi.e 10000
push.v self.top
conv.v.i
pop.v.i [stacktop]self.depth

:[end]
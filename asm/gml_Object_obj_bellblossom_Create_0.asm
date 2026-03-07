.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
call.i scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.con
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.block
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.block
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.block
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.block
pushi.e 0
pop.v.i self.blockon
pushi.e 0
pop.v.i self.blockno
pushi.e 1
pushi.e -5
pushi.e 386
pop.v.i [array]global.flag

:[end]
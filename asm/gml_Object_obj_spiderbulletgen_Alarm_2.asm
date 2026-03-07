.localvar 0 arguments

:[0]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.btype
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 354
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ggg

:[2]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.btype
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 352
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ggg

:[4]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.btype
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 356
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ggg

:[6]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.btype
pushi.e 3
cmp.i.v LT
bf [18]

:[7]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.bchoice
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
push.v self.ggg
conv.v.i
pop.v.v [stacktop]self.choice
b [10]

:[9]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.bchoice
push.v self.ggg
conv.v.i
pop.v.v [stacktop]self.choice

:[10]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.bside
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
push.v self.ggg
conv.v.i
pop.v.v [stacktop]self.side
b [13]

:[12]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.bside
push.v self.ggg
conv.v.i
pop.v.v [stacktop]self.side

:[13]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.bspeed
push.v self.ggg
conv.v.i
pop.v.v [stacktop]self.speedfactor
push.v self.dmg
push.v self.ggg
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 361
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[14]
push.v 361.turnamt
pushi.e 15
cmp.i.v GTE
bf [18]

:[15]
push.v self.ggg
conv.v.i
pushenv [17]

:[16]
push.v self.dmg
pushi.e 1
sub.i.v
pop.v.v self.dmg

:[17]
popenv [16]

:[18]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.btype
pushi.e 3
cmp.i.v EQ
bf [35]

:[19]
pushi.e 354
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg1
pushi.e 354
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg2
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.bchoice
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
push.v self.gg1
conv.v.i
pop.v.i [stacktop]self.choice
pushi.e 2
push.v self.gg2
conv.v.i
pop.v.i [stacktop]self.choice

:[21]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.bchoice
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
push.v self.gg1
conv.v.i
pop.v.i [stacktop]self.choice
pushi.e 3
push.v self.gg2
conv.v.i
pop.v.i [stacktop]self.choice

:[23]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.bchoice
pushi.e 3
cmp.i.v EQ
bf [25]

:[24]
pushi.e 2
push.v self.gg1
conv.v.i
pop.v.i [stacktop]self.choice
pushi.e 3
push.v self.gg2
conv.v.i
pop.v.i [stacktop]self.choice

:[25]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.bside
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
push.v self.gg1
conv.v.i
pop.v.v [stacktop]self.side
push.v self.gg1
conv.v.i
push.v [stacktop]self.side
push.v self.gg2
conv.v.i
pop.v.v [stacktop]self.side
b [28]

:[27]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.bside
push.v self.gg1
conv.v.i
pop.v.v [stacktop]self.side
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.bside
push.v self.gg2
conv.v.i
pop.v.v [stacktop]self.side

:[28]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.bspeed
push.v self.gg1
conv.v.i
pop.v.v [stacktop]self.speedfactor
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.bspeed
push.v self.gg2
conv.v.i
pop.v.v [stacktop]self.speedfactor
push.v self.dmg
push.v self.gg1
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.dmg
push.v self.gg2
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 361
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [35]

:[29]
push.v 361.turnamt
pushi.e 15
cmp.i.v GTE
bf [35]

:[30]
push.v self.gg1
conv.v.i
pushenv [32]

:[31]
push.v self.dmg
pushi.e 1
sub.i.v
pop.v.v self.dmg

:[32]
popenv [31]
push.v self.gg2
conv.v.i
pushenv [34]

:[33]
push.v self.dmg
pushi.e 1
sub.i.v
pop.v.v self.dmg

:[34]
popenv [33]

:[35]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.btime
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
pushglb.v global.firingrate
pushi.e -1
push.v self.bno
conv.v.i
pop.v.v [array]self.btime

:[37]
pushi.e -1
push.v self.bno
conv.v.i
push.v [array]self.btime
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
push.v self.bno
pushi.e 1
add.i.v
pop.v.v self.bno
push.v self.bno
push.v self.bmax
cmp.v.v GTE
bf [end]

:[38]
pushi.e -1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]
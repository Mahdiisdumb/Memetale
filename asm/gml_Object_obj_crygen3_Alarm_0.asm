.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
push.v [stacktop]self.x
pop.v.v self.myx
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
push.v [stacktop]self.y
pop.v.v self.myy
pushi.e 635
conv.i.v
push.v self.myy
pushi.e 48
add.i.v
push.v self.myx
pushi.e 52
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blt1
pushi.e 635
conv.i.v
push.v self.myy
pushi.e 58
add.i.v
push.v self.myx
pushi.e 82
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blt2
pushi.e 0
push.v self.blt1
conv.v.i
pop.v.i [stacktop]self.dmg
pushi.e 0
push.v self.blt2
conv.v.i
pop.v.i [stacktop]self.dmg
pushglb.v global.firingrate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]
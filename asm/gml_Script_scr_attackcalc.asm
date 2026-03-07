.localvar 0 arguments

:[0]
pushi.e -5
pushglb.v global.mytarget
conv.v.i
push.v [array]global.monsterdef
pop.v.v self.defarg
pushglb.v global.wstrength
pushglb.v global.at
add.v.v
pop.v.v global.pwr
pushglb.v global.pwr
push.v self.defarg
sub.v.v
pop.v.v self.damage

:[end]
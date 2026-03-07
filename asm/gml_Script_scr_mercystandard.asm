.localvar 0 arguments

:[0]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushglb.v global.at
sub.v.v
pushglb.v global.wstrength
sub.v.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterdef
add.v.v
push.v self.mercymod
sub.v.v
pop.v.v self.mercy

:[end]
.localvar 0 arguments

:[0]
pushi.e -5
pushglb.v global.mytarget
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
push.v [stacktop]self.wd
pop.v.v self.stretchwidth
push.v self.stretchwidth
pushi.e -5
pushglb.v global.mytarget
conv.v.i
push.v [array]global.monstermaxhp
div.v.v
pop.v.v self.stretchfactor
pushi.e -5
pushglb.v global.mytarget
conv.v.i
push.v [array]global.monsterhp
pop.v.v self.apparenthp
pushi.e -5
pushglb.v global.mytarget
conv.v.i
push.v [array]global.monsterhp
pop.v.v self.actualhp
pushi.e -5
pushglb.v global.mytarget
conv.v.i
push.v [array]global.monstermaxhp
pop.v.v self.maxhp
pushi.e 0
pop.v.i self.negative
pushi.e 0
pop.v.i self.special
pushglb.v global.damage
pop.v.v self.dmg
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.i
push.v self.dmg
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
pushi.e -4
pop.v.i self.vspeed
push.d 0.5
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction

:[2]
pushi.e 1
pop.v.i self.drawbar

:[end]
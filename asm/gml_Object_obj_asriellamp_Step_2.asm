.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.idealvolume
cmp.v.v GT
bf [5]

:[2]
push.v self.curvol1
push.d 0.05
sub.d.v
pop.v.v self.curvol1
push.v self.curvol1
pushi.e -1
pushi.e 0
push.v [array]self.idealvolume
cmp.v.v LT
bf [4]

:[3]
pushi.e -1
pushi.e 0
push.v [array]self.idealvolume
pop.v.v self.curvol1

:[4]
push.v self.curvol1
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[5]
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pushi.e -1
pushi.e 0
push.v [array]self.idealvolume
cmp.v.v LT
bf [9]

:[6]
push.v self.curvol1
push.d 0.05
add.d.v
pop.v.v self.curvol1
push.v self.curvol1
pushi.e -1
pushi.e 0
push.v [array]self.idealvolume
cmp.v.v GT
bf [8]

:[7]
pushi.e -1
pushi.e 0
push.v [array]self.idealvolume
pop.v.v self.curvol1

:[8]
push.v self.curvol1
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v

:[9]
pushglb.v global.currentsong2
call.i caster_get_volume(argc=1)
pushi.e -1
pushi.e 1
push.v [array]self.idealvolume
cmp.v.v GT
bf [13]

:[10]
push.v self.curvol2
push.d 0.05
sub.d.v
pop.v.v self.curvol2
push.v self.curvol2
pushi.e -1
pushi.e 1
push.v [array]self.idealvolume
cmp.v.v LT
bf [12]

:[11]
pushi.e -1
pushi.e 1
push.v [array]self.idealvolume
pop.v.v self.curvol2

:[12]
push.v self.curvol2
pushglb.v global.currentsong2
call.i caster_set_volume(argc=2)
popz.v

:[13]
pushglb.v global.currentsong2
call.i caster_get_volume(argc=1)
pushi.e -1
pushi.e 1
push.v [array]self.idealvolume
cmp.v.v LT
bf [end]

:[14]
push.v self.curvol2
push.d 0.05
add.d.v
pop.v.v self.curvol2
push.v self.curvol2
pushi.e -1
pushi.e 1
push.v [array]self.idealvolume
cmp.v.v GT
bf [16]

:[15]
pushi.e -1
pushi.e 1
push.v [array]self.idealvolume
pop.v.v self.curvol2

:[16]
push.v self.curvol2
pushglb.v global.currentsong2
call.i caster_set_volume(argc=2)
popz.v

:[end]
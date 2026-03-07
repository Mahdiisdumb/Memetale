.localvar 0 arguments

:[0]
pushglb.v global.battlephase
pushi.e 6
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.unhinged
push.i 9999999
pop.v.i self.maxtimer
pushi.e 1591
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.megadamage
pushi.e 5
pop.v.i self.mustype
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mus_finale3
call.i caster_loop(argc=3)
popz.v

:[3]
popenv [2]
pushi.e 900
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 1592
pushenv [5]

:[4]
pushi.e 1
pop.v.i self.desperate
pushi.e 0
pop.v.i self.wimpy

:[5]
popenv [4]

:[end]
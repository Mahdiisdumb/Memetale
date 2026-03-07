.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 754
pop.v.i self.maxtimer
pushglb.v global.battlephase
pushi.e 1
cmp.i.v EQ
bt [2]

:[1]
pushglb.v global.battlephase
pushi.e 5
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 678
pop.v.i self.maxtimer

:[5]
pushi.e 0
pop.v.i self.soultimer
pushi.e 460
pop.v.i self.soulmax
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.attacktimer
pushi.e 9999
pop.v.i self.attacktimermax
pushi.e 0
pop.v.i self.attackno
pushi.e 0
pop.v.i self.save_attackno
pushi.e 7
pushi.e -1
pushi.e 0
pop.v.i [array]self.attackid
pushi.e 7
pushi.e -1
pushi.e 1
pop.v.i [array]self.attackid
pushi.e 7
pushi.e -1
pushi.e 2
pop.v.i [array]self.attackid
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.phase_1
pushi.e 0
pop.v.i self.phase_s
push.i 1287248374
pop.v.i self.ourattack
pushi.e 0
pop.v.i self.overtype
pushi.e 0
pop.v.i self.unhinged
pushi.e -1
pop.v.i self.atimer
pushglb.v global.battlephase
pushi.e 0
cmp.i.v EQ
bf [9]

:[6]
pushi.e 1591
pushenv [8]

:[7]
pushi.e 3
pop.v.i self.fileset
pushi.e 20
pop.v.i self.savetimer

:[8]
popenv [7]

:[9]
pushglb.v global.battlephase
pushi.e 0
cmp.i.v EQ
bt [11]

:[10]
pushglb.v global.battlephase
pushi.e 3
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [16]

:[13]
pushi.e 1591
pushenv [15]

:[14]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.mus_phase
call.i caster_play(argc=3)
popz.v

:[15]
popenv [14]
pushi.e 200
pushi.e 200
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v self.atimer

:[16]
pushglb.v global.battlephase
pushi.e 1
cmp.i.v EQ
bt [18]

:[17]
pushglb.v global.battlephase
pushi.e 5
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [23]

:[20]
pushi.e 1591
pushenv [22]

:[21]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
push.v [array]self.mus_phase
call.i caster_play(argc=3)
popz.v

:[22]
popenv [21]
pushi.e 200
pushi.e 180
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
add.v.i
pop.v.v self.atimer

:[23]
pushglb.v global.battlephase
pushi.e 2
cmp.i.v EQ
bt [25]

:[24]
pushglb.v global.battlephase
pushi.e 4
cmp.i.v EQ
b [26]

:[25]
push.e 1

:[26]
bf [30]

:[27]
pushi.e 500
pop.v.i self.maxtimer
pushi.e 1
pop.v.i self.overtype
pushi.e 1591
pushenv [29]

:[28]
pushi.e 3
pop.v.i self.mustype
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mus_repeat1
call.i caster_loop(argc=3)
popz.v

:[29]
popenv [28]

:[30]
pushglb.v global.battlephase
pushi.e 6
cmp.i.v EQ
bf [end]

:[31]
pushi.e 150
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
pushi.e 1592
pushenv [33]

:[32]
pushi.e 1
pop.v.i self.wimpy
pushi.e 0
pop.v.i self.desperate

:[33]
popenv [32]
push.i 9999999
pop.v.i self.maxtimer
pushi.e 160
pop.v.i self.atimer
pushi.e 1591
pushenv [35]

:[34]
pushi.e 4
pop.v.i self.mustype
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mus_finale2
call.i caster_play(argc=3)
popz.v

:[35]
popenv [34]
pushi.e 1214
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[end]
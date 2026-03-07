.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 10
pop.v.i global.firingrate
push.v global.turntimer
pushi.e 30
sub.i.v
pop.v.v global.turntimer

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 16
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 16
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 16
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 16
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 16
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 16
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 8
pop.v.i global.firingrate

:[4]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 16
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 9
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 16
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 9
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 16
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 16
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 16
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 16
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 12
pop.v.i global.firingrate

:[6]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 9
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 9
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 16
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
push.v global.turntimer
pushi.e 10
add.i.v
pop.v.v global.turntimer
pushi.e 14
pop.v.i global.firingrate

:[8]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
pushi.e 18
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 18
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 14
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
push.d 9.5
conv.d.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 14
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
push.d 9.5
conv.d.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 13
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 13
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 12
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
push.d 10.5
conv.d.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 12
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
push.d 10.5
conv.d.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 11
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 11
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 11
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 11
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 14
pop.v.i global.firingrate

:[10]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 15
pop.v.i global.firingrate
push.v global.turntimer
pushi.e 10
sub.i.v
pop.v.v global.turntimer

:[12]
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 11
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 11
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 11
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 11
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 11
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 11
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 11
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 10
pop.v.i global.firingrate
push.v global.turntimer
pushi.e 10
sub.i.v
pop.v.v global.turntimer

:[14]
push.v self.type
pushi.e 7
cmp.i.v EQ
bf [16]

:[15]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 14
pop.v.i global.firingrate
push.v global.turntimer
pushi.e 40
add.i.v
pop.v.v global.turntimer

:[16]
push.v self.type
pushi.e 8
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
push.v global.turntimer
pushi.e 10
add.i.v
pop.v.v global.turntimer
pushi.e 20
pop.v.i global.firingrate

:[18]
push.v self.type
pushi.e 9
cmp.i.v EQ
bf [20]

:[19]
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 9
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 15
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.d 9.5
conv.d.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 14
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.d 9.5
conv.d.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 13
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 11
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 12
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 11
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 11
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 12
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 18
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 13
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 9
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 14
pop.v.i global.firingrate

:[20]
push.v self.type
pushi.e 10
cmp.i.v EQ
bf [22]

:[21]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 18
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 12
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 9
pop.v.i global.firingrate

:[22]
push.v self.type
pushi.e 11
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 8
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 20
pop.v.i global.firingrate

:[24]
push.v self.type
pushi.e 12
cmp.i.v EQ
bf [26]

:[25]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 18
pop.v.i global.firingrate
push.v global.turntimer
pushi.e 90
add.i.v
pop.v.v global.turntimer

:[26]
push.v self.type
pushi.e 13
cmp.i.v EQ
bf [28]

:[27]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 14
pop.v.i global.firingrate
push.v global.turntimer
pushi.e 30
add.i.v
pop.v.v global.turntimer

:[28]
push.v self.type
pushi.e 14
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 38
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 40
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 25
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 14
pop.v.i global.firingrate
push.v global.turntimer
pushi.e 50
add.i.v
pop.v.v global.turntimer

:[30]
push.v self.type
pushi.e 15
cmp.i.v EQ
bf [end]

:[31]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 10
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.d 10.5
conv.d.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
push.d 10.5
conv.d.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.d 10.5
conv.d.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
push.d 10.5
conv.d.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 11
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 11
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 11
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 11
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.d 11.5
conv.d.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
push.d 11.5
conv.d.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 12
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 12
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 12
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
pushi.e 12
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sp(argc=5)
popz.v
pushi.e 9
pop.v.i global.firingrate

:[end]
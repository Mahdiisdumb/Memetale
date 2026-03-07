.localvar 0 arguments

:[0]
pushi.e 265
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 265
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 265
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gen
push.v self.gen
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.v self.rating
push.v self.gen
conv.v.i
pop.v.v [stacktop]self.rating

:[6]
pushi.e 0
pop.v.i self.i
push.v self.lesson
pushi.e -51
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.4
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.4
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.4
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.4
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.4
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.4
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.4
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.4
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[8]
push.v self.lesson
pushi.e -50
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[10]
push.v self.lesson
pushi.e -40
cmp.i.v EQ
bf [14]

:[11]
pushi.e 15
dup.i 0
push.i 0
cmp.i.i LTE
bt [13]

:[12]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [12]

:[13]
popz.i
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg
pushi.e 1
pop.v.i self.dmg

:[14]
push.v self.lesson
pushi.e -39
cmp.i.v EQ
bf [18]

:[15]
pushi.e 12
pop.v.i self.rating
pushi.e 12
dup.i 0
push.i 0
cmp.i.i LTE
bt [17]

:[16]
push.d 1.2
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [16]

:[17]
popz.i
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg
pushi.e 1
pop.v.i self.dmg
push.v self.gen
conv.v.i
dup.i 0
push.v [stacktop]self.rating
pushi.e 2
add.i.v
pop.i.v [stacktop]self.rating
pushi.e 300
pop.v.i global.turntimer

:[18]
push.v self.lesson
pushi.e -38
cmp.i.v EQ
bf [20]

:[19]
push.d 0.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 16
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.rating
pushi.e 300
pop.v.i global.turntimer
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg
pushi.e 1
pop.v.i self.dmg

:[20]
push.v self.lesson
pushi.e -37
cmp.i.v EQ
bf [22]

:[21]
pushi.e 300
pop.v.i global.turntimer
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 20
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.rating
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg
pushi.e 1
pop.v.i self.dmg

:[22]
push.v self.lesson
pushi.e -36
cmp.i.v GTE
bf [24]

:[23]
push.v self.lesson
pushi.e -25
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [29]

:[26]
pushi.e 300
pop.v.i global.turntimer
pushi.e 34
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.rating
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [28]

:[27]
push.d 0.25
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [27]

:[28]
popz.i
pushi.e 1
push.v self.gen
conv.v.i
pop.v.i [stacktop]self.dmg
pushi.e 1
pop.v.i self.dmg

:[29]
push.v self.lesson
pushi.e -5
cmp.i.v EQ
bf [31]

:[30]
push.d 0.5
conv.d.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.5
conv.d.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.5
conv.d.v
push.d 6.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[31]
push.v self.lesson
pushi.e -6
cmp.i.v EQ
bf [33]

:[32]
push.d 1.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.8
conv.d.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.8
conv.d.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[33]
push.v self.lesson
pushi.e -7
cmp.i.v EQ
bf [37]

:[34]
pushi.e 18
dup.i 0
push.i 0
cmp.i.i LTE
bt [36]

:[35]
push.d 0.4
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [35]

:[36]
popz.i
pushi.e 1
pop.v.i self.refuse

:[37]
push.v self.lesson
pushi.e -8
cmp.i.v EQ
bf [39]

:[38]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.47
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[39]
push.v self.lesson
pushi.e -9
cmp.i.v EQ
bf [41]

:[40]
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[41]
push.v self.lesson
pushi.e -10
cmp.i.v EQ
bf [43]

:[42]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 1
pop.v.i self.refuse

:[43]
push.v self.lesson
pushi.e -11
cmp.i.v EQ
bf [45]

:[44]
pushi.e 2
conv.i.v
push.d 1.25
conv.d.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 1.25
conv.d.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 1.25
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 1.25
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 1.25
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 1.25
conv.d.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 1.25
conv.d.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 1.25
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 1.25
conv.d.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
push.d 1.25
conv.d.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[45]
push.v self.lesson
pushi.e -12
cmp.i.v EQ
bf [49]

:[46]
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [48]

:[47]
push.d 1.3
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.3
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.3
conv.d.v
push.d 0.1
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.3
conv.d.v
push.d 2.2
conv.d.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.3
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.3
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.3
conv.d.v
push.d 0.1
conv.d.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.3
conv.d.v
push.d 2.2
conv.d.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [47]

:[48]
popz.i

:[49]
push.v self.lesson
pushi.e -13
cmp.i.v EQ
bf [51]

:[50]
push.d 1.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
push.d 2.2
conv.d.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
push.d 2.2
conv.d.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[51]
push.v self.lesson
pushi.e -14
cmp.i.v EQ
bf [55]

:[52]
pushi.e 24
dup.i 0
push.i 0
cmp.i.i LTE
bt [54]

:[53]
push.d 0.3
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [53]

:[54]
popz.i
pushi.e 1
pop.v.i self.refuse

:[55]
push.v self.lesson
pushi.e 0
cmp.i.v EQ
bf [57]

:[56]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[57]
push.v self.lesson
pushi.e 1
cmp.i.v EQ
bf [61]

:[58]
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [60]

:[59]
push.d 0.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [59]

:[60]
popz.i

:[61]
push.v self.lesson
pushi.e 2
cmp.i.v EQ
bf [63]

:[62]
push.d 0.625
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.625
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.625
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.625
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.625
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.625
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[63]
push.v self.lesson
pushi.e 3
cmp.i.v EQ
bf [65]

:[64]
push.d 0.75
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.75
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.75
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.75
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.75
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.75
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.75
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 0.75
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[65]
push.v self.lesson
pushi.e 4
cmp.i.v EQ
bf [67]

:[66]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[67]
push.v self.lesson
pushi.e 5
cmp.i.v EQ
bf [69]

:[68]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[69]
push.v self.lesson
pushi.e 6
cmp.i.v EQ
bf [71]

:[70]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 1
pop.v.i self.refuse

:[71]
push.v self.lesson
pushi.e 7
cmp.i.v EQ
bt [73]

:[72]
push.v self.lesson
pushi.e 8
cmp.i.v EQ
b [74]

:[73]
push.e 1

:[74]
bf [76]

:[75]
pushi.e 0
conv.i.v
push.d 1.2
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 1.2
conv.d.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[76]
push.v self.lesson
pushi.e 9
cmp.i.v EQ
bf [80]

:[77]
push.v self.rating
pop.v.v self.rr
push.v self.rating
pushi.e 11
cmp.i.v GTE
bf [79]

:[78]
push.v self.rr
pushi.e 1
sub.i.v
pop.v.v self.rr

:[79]
pushi.e 3
conv.i.d
push.v self.rr
div.v.d
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[80]
push.v self.lesson
pushi.e 10
cmp.i.v EQ
bf [84]

:[81]
pushi.e 0
pop.v.i self.rr
push.v self.rating
pushi.e 11
cmp.i.v LTE
bf [83]

:[82]
push.d 0.5
pop.v.d self.rr

:[83]
pushi.e 1
conv.i.v
push.d 0.1
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
push.d 0.1
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
push.v self.rr
add.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 1
conv.i.v
push.d 0.1
conv.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
push.d 0.1
conv.d.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 2
push.v self.rr
add.v.i
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[84]
push.v self.lesson
pushi.e 11
cmp.i.v EQ
bf [86]

:[85]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 2.2
conv.d.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
push.d 2.2
conv.d.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 1
pop.v.i self.refuse

:[86]
push.v self.lesson
pushi.e 12
cmp.i.v EQ
bt [88]

:[87]
push.v self.lesson
pushi.e 13
cmp.i.v EQ
b [89]

:[88]
push.e 1

:[89]
bf [91]

:[90]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[91]
push.v self.lesson
pushi.e 14
cmp.i.v EQ
bf [93]

:[92]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[93]
push.v self.lesson
pushi.e 15
cmp.i.v EQ
bf [95]

:[94]
push.d 1.6
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 1.2
conv.d.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 1.2
conv.d.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 1.2
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 1.2
conv.d.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[95]
push.v self.lesson
pushi.e 16
cmp.i.v EQ
bf [97]

:[96]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[97]
push.v self.lesson
pushi.e 17
cmp.i.v EQ
bf [99]

:[98]
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 1.6
conv.d.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[99]
push.v self.lesson
pushi.e 18
cmp.i.v EQ
bf [103]

:[100]
pushi.e 10
dup.i 0
push.i 0
cmp.i.i LTE
bt [102]

:[101]
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [101]

:[102]
popz.i

:[103]
push.v self.lesson
pushi.e 19
cmp.i.v EQ
bf [105]

:[104]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[105]
push.v self.lesson
pushi.e 20
cmp.i.v EQ
bf [109]

:[106]
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [108]

:[107]
push.d 1.5
conv.d.v
push.d 1.25
conv.d.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
push.d 1.25
conv.d.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
push.d 1.25
conv.d.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.5
conv.d.v
push.d 1.25
conv.d.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 1
pop.v.i self.refuse
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [107]

:[108]
popz.i

:[109]
push.v self.lesson
pushi.e 20
cmp.i.v GT
bf [end]

:[110]
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
push.d 1.6
conv.d.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i scr_sr(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i scr_sr(argc=4)
popz.v

:[end]
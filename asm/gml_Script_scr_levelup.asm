.localvar 0 arguments

:[0]
pushglb.v global.lv
pop.v.v self.currentlevel
pushglb.v global.xp
pushi.e 10
cmp.i.v GTE
bf [2]

:[1]
pushi.e 2
pop.v.i global.lv

:[2]
pushglb.v global.xp
pushi.e 30
cmp.i.v GTE
bf [4]

:[3]
pushi.e 3
pop.v.i global.lv

:[4]
pushglb.v global.xp
pushi.e 70
cmp.i.v GTE
bf [6]

:[5]
pushi.e 4
pop.v.i global.lv

:[6]
pushglb.v global.xp
pushi.e 120
cmp.i.v GTE
bf [8]

:[7]
pushi.e 5
pop.v.i global.lv

:[8]
pushglb.v global.xp
pushi.e 200
cmp.i.v GTE
bf [10]

:[9]
pushi.e 6
pop.v.i global.lv

:[10]
pushglb.v global.xp
pushi.e 300
cmp.i.v GTE
bf [12]

:[11]
pushi.e 7
pop.v.i global.lv

:[12]
pushglb.v global.xp
pushi.e 500
cmp.i.v GTE
bf [14]

:[13]
pushi.e 8
pop.v.i global.lv

:[14]
pushglb.v global.xp
pushi.e 800
cmp.i.v GTE
bf [16]

:[15]
pushi.e 9
pop.v.i global.lv

:[16]
pushglb.v global.xp
pushi.e 1200
cmp.i.v GTE
bf [18]

:[17]
pushi.e 10
pop.v.i global.lv

:[18]
pushglb.v global.xp
pushi.e 1700
cmp.i.v GTE
bf [20]

:[19]
pushi.e 11
pop.v.i global.lv

:[20]
pushglb.v global.xp
pushi.e 2500
cmp.i.v GTE
bf [22]

:[21]
pushi.e 12
pop.v.i global.lv

:[22]
pushglb.v global.xp
pushi.e 3500
cmp.i.v GTE
bf [24]

:[23]
pushi.e 13
pop.v.i global.lv

:[24]
pushglb.v global.xp
pushi.e 5000
cmp.i.v GTE
bf [26]

:[25]
pushi.e 14
pop.v.i global.lv

:[26]
pushglb.v global.xp
pushi.e 7000
cmp.i.v GTE
bf [28]

:[27]
pushi.e 15
pop.v.i global.lv

:[28]
pushglb.v global.xp
pushi.e 10000
cmp.i.v GTE
bf [30]

:[29]
pushi.e 16
pop.v.i global.lv

:[30]
pushglb.v global.xp
pushi.e 15000
cmp.i.v GTE
bf [32]

:[31]
pushi.e 17
pop.v.i global.lv

:[32]
pushglb.v global.xp
pushi.e 25000
cmp.i.v GTE
bf [34]

:[33]
pushi.e 18
pop.v.i global.lv

:[34]
pushglb.v global.xp
push.i 50000
cmp.i.v GTE
bf [36]

:[35]
pushi.e 19
pop.v.i global.lv

:[36]
pushglb.v global.xp
push.i 99999
cmp.i.v GTE
bf [38]

:[37]
pushi.e 20
pop.v.i global.lv
push.i 99999
pop.v.i global.xp

:[38]
pushglb.v global.lv
push.v self.currentlevel
cmp.v.v NEQ
bf [42]

:[39]
pushi.e 1
pop.v.i self.levelup
pushi.e 16
pushglb.v global.lv
pushi.e 4
mul.i.v
add.v.i
pop.v.v global.maxhp
pushi.e 8
pushglb.v global.lv
pushi.e 2
mul.i.v
add.v.i
pop.v.v global.at
pushi.e 9
pushglb.v global.lv
pushi.e 4
conv.i.d
div.d.v
call.i ceil(argc=1)
add.v.i
pop.v.v global.df
pushglb.v global.lv
pushi.e 20
cmp.i.v EQ
bf [41]

:[40]
pushi.e 99
pop.v.i global.maxhp
pushi.e 99
pop.v.i global.at
pushi.e 99
pop.v.i global.df

:[41]
b [end]

:[42]
pushi.e 0
pop.v.i self.levelup

:[end]
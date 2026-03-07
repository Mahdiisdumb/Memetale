.localvar 0 arguments

:[0]
pushglb.v global.armor
pushi.e 4
cmp.i.v EQ
bf [2]

:[1]
pushi.e -1
pushi.e 0
push.v [array]self.armor_worn
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.armor_worn
pushi.e 1
pop.v.i self.novel_armor

:[5]
pushglb.v global.armor
pushi.e 12
cmp.i.v EQ
bf [7]

:[6]
pushi.e -1
pushi.e 1
push.v [array]self.armor_worn
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.armor_worn
pushi.e 1
pop.v.i self.novel_armor

:[10]
pushglb.v global.armor
pushi.e 15
cmp.i.v EQ
bf [12]

:[11]
pushi.e -1
pushi.e 2
push.v [array]self.armor_worn
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.armor_worn
pushi.e 1
pop.v.i self.novel_armor

:[15]
pushglb.v global.armor
pushi.e 24
cmp.i.v EQ
bf [17]

:[16]
pushi.e -1
pushi.e 3
push.v [array]self.armor_worn
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pushi.e -1
pushi.e 3
pop.v.i [array]self.armor_worn
pushi.e 1
pop.v.i self.novel_armor

:[20]
pushglb.v global.armor
pushi.e 44
cmp.i.v EQ
bf [22]

:[21]
pushi.e -1
pushi.e 4
push.v [array]self.armor_worn
pushi.e 0
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.armor_worn
pushi.e 1
pop.v.i self.novel_armor

:[25]
pushglb.v global.armor
pushi.e 46
cmp.i.v EQ
bf [27]

:[26]
pushi.e -1
pushi.e 5
push.v [array]self.armor_worn
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.armor_worn
pushi.e 1
pop.v.i self.novel_armor

:[30]
pushglb.v global.armor
pushi.e 48
cmp.i.v EQ
bf [32]

:[31]
pushi.e -1
pushi.e 6
push.v [array]self.armor_worn
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.armor_worn
pushi.e 1
pop.v.i self.novel_armor

:[35]
pushglb.v global.armor
pushi.e 50
cmp.i.v EQ
bf [37]

:[36]
pushi.e -1
pushi.e 7
push.v [array]self.armor_worn
pushi.e 0
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 1
pushi.e -1
pushi.e 7
pop.v.i [array]self.armor_worn
pushi.e 1
pop.v.i self.novel_armor

:[40]
pushglb.v global.armor
pushi.e 64
cmp.i.v EQ
bf [42]

:[41]
pushi.e -1
pushi.e 8
push.v [array]self.armor_worn
pushi.e 0
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [end]

:[44]
pushi.e 1
pushi.e -1
pushi.e 8
pop.v.i [array]self.armor_worn
pushi.e 1
pop.v.i self.novel_armor

:[end]
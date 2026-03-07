.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myself
pushi.e -5
pushi.e 1
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.myself
pushi.e 1
pushi.e -5
pushi.e 2
pop.v.i [array]global.monster

:[2]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.myself
pushi.e 2
cmp.i.v NEQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.myself
pushi.e 1
pushi.e -5
pushi.e 1
pop.v.i [array]global.monster

:[7]
pushi.e -5
pushi.e 0
push.v [array]global.monster
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i self.myself
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.monster

:[9]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.s "monstername_1"@5095
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 23
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 23
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[11]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.s "monstername_2"@5096
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 15
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 15
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[13]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.s "monstername_3"@5097
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 20
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 20
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 20
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[15]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 4
cmp.i.v EQ
bf [17]

:[16]
push.s "monstername_4"@5098
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 30
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 30
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[17]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 5
cmp.i.v EQ
bf [19]

:[18]
push.s "monstername_5"@5099
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[19]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 6
cmp.i.v EQ
bf [21]

:[20]
push.s "monstername_6"@5100
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 50
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 50
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[21]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 7
cmp.i.v EQ
bf [23]

:[22]
push.s "monstername_7"@5101
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 40
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 40
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[23]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 8
cmp.i.v EQ
bf [25]

:[24]
push.s "monstername_8"@5102
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 72
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 72
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[25]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 9
cmp.i.v EQ
bf [27]

:[26]
push.s "monstername_9"@5103
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 50
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 50
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[27]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 10
cmp.i.v EQ
bf [33]

:[28]
push.s "monstername_10"@5104
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 440
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 440
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -5
pushi.e 6
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk

:[30]
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
call.i scr_murderlv(argc=0)
pushi.e 1
cmp.i.v GTE
bf [32]

:[31]
pushi.e -9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[32]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[33]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 11
cmp.i.v EQ
bf [35]

:[34]
push.s "monstername_11"@5105
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 88
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 88
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e -1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[35]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 12
cmp.i.v EQ
bf [37]

:[36]
push.s "monstername_12"@5106
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 50
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 50
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[37]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 13
cmp.i.v EQ
bf [39]

:[38]
push.s "monstername_13"@5107
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 70
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 70
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 30
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 20
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[39]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 14
cmp.i.v EQ
bf [41]

:[40]
push.s "monstername_14"@5108
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 60
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 60
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 18
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 15
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[41]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 15
cmp.i.v EQ
bf [43]

:[42]
push.s "monstername_15"@5109
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 108
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 108
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 30
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 25
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[43]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 16
cmp.i.v EQ
bf [45]

:[44]
push.s "monstername_16"@5110
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 108
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 108
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 30
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 25
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[45]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 17
cmp.i.v EQ
bf [47]

:[46]
push.s "monstername_17"@5111
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 105
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 105
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 80
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 60
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[47]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 18
cmp.i.v EQ
bf [51]

:[48]
push.s "monstername_18"@5112
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e -5
pushi.e 57
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [50]

:[49]
push.s "monstername_18b"@5113
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername

:[50]
pushi.e 74
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 74
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 22
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 18
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[51]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 19
cmp.i.v EQ
bf [53]

:[52]
push.s "monstername_19"@5114
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 48
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 48
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 17
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 17
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[53]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 20
cmp.i.v EQ
bf [55]

:[54]
push.s "monstername_20"@5115
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 48
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 48
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 25
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 40
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[55]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 21
cmp.i.v EQ
bf [57]

:[56]
push.s "monstername_21"@5116
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 80
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 80
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 55
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[57]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 22
cmp.i.v EQ
bf [59]

:[58]
push.s "monstername_22"@5117
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 114
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 114
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 35
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 30
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[59]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 23
cmp.i.v EQ
bf [61]

:[60]
push.s "monstername_23"@5118
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 98
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 98
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 52
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 25
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[61]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 24
cmp.i.v EQ
bf [63]

:[62]
push.s "monstername_24"@5119
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -20
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 40
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 50
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[63]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 25
cmp.i.v EQ
bf [65]

:[64]
push.s "monstername_25"@5120
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 680
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 680
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[65]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 26
cmp.i.v EQ
bf [67]

:[66]
push.s "monstername_26"@5121
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 70
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 70
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 46
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 30
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[67]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 28
cmp.i.v EQ
bf [69]

:[68]
push.s "monstername_28"@5122
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 70
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 70
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 52
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 25
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[69]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 29
cmp.i.v EQ
bf [71]

:[70]
push.s "monstername_29"@5123
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 66
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 66
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 52
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 25
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[71]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 30
cmp.i.v EQ
bf [73]

:[72]
push.s "monstername_30"@5124
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 98
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 98
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 52
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 20
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[73]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 31
cmp.i.v EQ
bf [75]

:[74]
push.s "monstername_31"@5125
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 200
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 200
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -40
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[75]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 32
cmp.i.v EQ
bf [77]

:[76]
push.s "monstername_32"@5126
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 1500
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 1500
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[77]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 33
cmp.i.v EQ
bf [79]

:[78]
push.s "monstername_33"@5127
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[79]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 34
cmp.i.v EQ
bf [81]

:[80]
push.s "monstername_34"@5128
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 150
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 150
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 110
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 60
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[81]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 35
cmp.i.v EQ
bf [83]

:[82]
push.s "monstername_35"@5129
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 150
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 150
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 110
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 60
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[83]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 36
cmp.i.v EQ
bf [85]

:[84]
push.s "monstername_36"@5130
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 80
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 80
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 95
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 45
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[85]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 37
cmp.i.v EQ
bf [87]

:[86]
push.s "monstername_37"@5131
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 20
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 20
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 70
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 50
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[87]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 38
cmp.i.v EQ
bf [89]

:[88]
push.s "monstername_38"@5132
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 110
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 110
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 80
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 40
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[89]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 39
cmp.i.v EQ
bf [91]

:[90]
push.s "monstername_39"@5133
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 1250
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 1250
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 300
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e -5
pushi.e 59
push.v [array]global.flag
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[91]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 40
cmp.i.v EQ
bf [93]

:[92]
push.s "monstername_40"@5134
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[93]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 41
cmp.i.v EQ
bf [95]

:[94]
push.s "monstername_41"@5135
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 1500
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 1500
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[95]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 42
cmp.i.v EQ
bf [97]

:[96]
push.s "monstername_42"@5136
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 190
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 190
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 150
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 120
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[97]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 43
cmp.i.v EQ
bf [99]

:[98]
push.s "monstername_43"@5137
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 230
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 230
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 180
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 150
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[99]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 44
cmp.i.v EQ
bf [101]

:[100]
push.s "monstername_44"@5138
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 120
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 80
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[101]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 45
cmp.i.v EQ
bf [103]

:[102]
push.s "monstername_45"@5139
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 120
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 120
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 130
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 85
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[103]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 46
cmp.i.v EQ
bf [105]

:[104]
push.s "monstername_46"@5140
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 95
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 95
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 110
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 80
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[105]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 47
cmp.i.v EQ
bf [107]

:[106]
push.s "monstername_47"@5141
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 99
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 99
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[107]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 48
cmp.i.v EQ
bf [109]

:[108]
push.s "monstername_48"@5142
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 110
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 60
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[109]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 49
cmp.i.v EQ
bf [111]

:[110]
push.s "monstername_49"@5143
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 110
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 60
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[111]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 50
cmp.i.v EQ
bf [113]

:[112]
push.s "monstername_50"@5144
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[113]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 51
cmp.i.v EQ
bf [115]

:[114]
push.s "monstername_51"@5145
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 1600
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 1600
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[115]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 52
cmp.i.v EQ
bf [117]

:[116]
push.s "monstername_52"@5146
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 3500
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 3500
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -30
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[117]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 53
cmp.i.v EQ
bf [119]

:[118]
push.s "monstername_53"@5147
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[119]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 54
cmp.i.v EQ
bf [121]

:[120]
push.s "monstername_54"@5148
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 9
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[121]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 55
cmp.i.v EQ
bf [123]

:[122]
push.s "monstername_55"@5149
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 400
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 400
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[123]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 56
cmp.i.v EQ
bf [125]

:[124]
push.s "monstername_56"@5150
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 9
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[125]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 57
cmp.i.v EQ
bf [127]

:[126]
push.s "monstername_57"@5151
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 9
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[127]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 58
cmp.i.v EQ
bf [129]

:[128]
push.s "monstername_58"@5152
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[129]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 59
cmp.i.v EQ
bf [131]

:[130]
push.s "monstername_59"@5153
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[131]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 60
cmp.i.v EQ
bf [133]

:[132]
push.s "monstername_60"@5154
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[133]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 61
cmp.i.v EQ
bf [135]

:[134]
push.s "monstername_61"@5155
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[135]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 62
cmp.i.v EQ
bf [137]

:[136]
push.s "monstername_62"@5156
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[137]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 63
cmp.i.v EQ
bf [139]

:[138]
push.s "monstername_63"@5157
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[139]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 64
cmp.i.v EQ
bf [141]

:[140]
push.s "monstername_64"@5158
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -900
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[141]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 65
cmp.i.v EQ
bf [143]

:[142]
push.s "monstername_65"@5159
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 23000
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 23000
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 12
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[143]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 66
cmp.i.v EQ
bf [145]

:[144]
push.s "monstername_66"@5160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 200
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[145]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 67
cmp.i.v EQ
bf [147]

:[146]
push.s "monstername_67"@5161
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 30000
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 30000
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 10
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
push.i -40000
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[147]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 68
cmp.i.v EQ
bf [149]

:[148]
push.s "monstername_68"@5162
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[149]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 70
cmp.i.v EQ
bf [151]

:[150]
push.s "monstername_70"@5163
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 32
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 32
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[151]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 71
cmp.i.v EQ
bf [153]

:[152]
push.s "monstername_71"@5164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 50
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 50
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[153]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 72
cmp.i.v EQ
bf [155]

:[154]
push.s "monstername_72"@5165
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 20
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 20
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[155]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 73
cmp.i.v EQ
bf [157]

:[156]
push.s "monstername_73"@5166
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 45
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 45
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[157]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 74
cmp.i.v EQ
bf [159]

:[158]
push.s "monstername_74"@5167
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 52
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 52
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -4
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 5
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 3
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[159]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 75
cmp.i.v EQ
bf [161]

:[160]
push.s "monstername_75"@5168
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 72
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 72
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 7
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 2
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[161]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 76
cmp.i.v EQ
bf [163]

:[162]
push.s "monstername_76"@5169
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 220
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 220
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 9
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -20
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 140
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[163]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 80
cmp.i.v EQ
bf [165]

:[164]
push.s "monstername_80"@5170
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 1100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 1100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 9
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e -6
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 1
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 300
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 1
pop.v.i global.itemrewardid
pushi.e 50
pop.v.i global.itemrewardchance

:[165]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 81
cmp.i.v EQ
bf [167]

:[166]
push.s "monstername_81"@5171
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 100
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[167]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 99
cmp.i.v EQ
bf [169]

:[168]
push.s "monstername_99"@5172
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[169]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 100
cmp.i.v EQ
bf [171]

:[170]
push.s "monstername_100"@5173
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
pushi.e 9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 8
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
pushi.e 9999
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pop.v.i global.itemrewardid
pushi.e 0
pop.v.i global.itemrewardchance

:[171]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstertype
pushi.e 666
cmp.i.v EQ
bf [end]

:[172]
push.s "monstername_666"@5174
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]global.monstername
push.i 666666
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monstermaxhp
push.i 666666
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterhp
push.i 66666
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsteratk
push.i 66666
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e -6666
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.xpreward
pushi.e -6666
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 666
pop.v.i global.itemrewardid
pushi.e 666
pop.v.i global.itemrewardchance

:[end]
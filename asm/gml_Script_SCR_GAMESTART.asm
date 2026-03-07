.localvar 0 arguments

:[0]
call.i randomize(argc=0)
popz.v
pushi.e 128
conv.i.v
call.i audio_channel_num(argc=1)
popz.v
pushi.e 0
pop.v.i global.awfultest
pushi.e 0
pop.v.i global.steam_int
call.i steam_initialised(argc=0)
conv.v.b
bf [8]

:[1]
pushi.e 1
pop.v.i global.steam_int
push.s "system_information_962"@3398
conv.s.v
call.i steam_file_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.s "system_information_962"@3398
conv.s.v
call.i file_text_open_write(argc=1)
pop.v.v self.exd
push.s "a"@2906
conv.s.v
push.v self.exd
call.i file_text_write_string(argc=2)
popz.v
push.v self.exd
call.i file_text_close(argc=1)
popz.v

:[3]
push.s "system_information_963"@3403
conv.s.v
call.i steam_file_exists(argc=1)
conv.v.b
bf [8]

:[4]
push.s "system_information_963"@3403
conv.s.v
call.i file_text_open_write(argc=1)
pop.v.v self.exd
push.s "b"@2904
conv.s.v
push.v self.exd
call.i file_text_write_string(argc=2)
popz.v
push.v self.exd
call.i file_text_close(argc=1)
popz.v
push.s "system_information_962"@3398
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.s "system_information_962"@3398
conv.s.v
call.i file_delete(argc=1)
popz.v

:[6]
push.s "system_information_962"@3398
conv.s.v
call.i steam_file_exists(argc=1)
conv.v.b
bf [8]

:[7]
push.s "system_information_962"@3398
conv.s.v
call.i steam_file_delete(argc=1)
popz.v

:[8]
pushi.e 0
pop.v.i global.debug
pushi.e 20
pop.v.i global.hp
pushi.e 20
pop.v.i global.maxhp
pushi.e 20
pop.v.i global.en
pushi.e 20
pop.v.i global.maxen
pushi.e 10
pop.v.i global.at
pushi.e 10
pop.v.i global.df
pushi.e 0
pop.v.i global.adef
pushi.e 4
pop.v.i global.sp
pushi.e 4
pop.v.i global.asp
pushi.e 5
pop.v.i global.hb
pushi.e 5
pop.v.i global.gt
pushi.e 0
pop.v.i global.km
pushi.e 0
pop.v.i global.ph
pushi.e 0
pop.v.i global.gold
pushi.e 0
pop.v.i global.xp
pushi.e 1
pop.v.i global.lv
pushi.e 0
pop.v.i global.area
push.s "CHARA"@3413
pop.v.s global.charname
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [11]

:[10]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.item
pushi.e 1
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.spell
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.bulletvariable
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.menucoord
pushi.e 0
pop.v.i global.bmenuno
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.bmenucoord
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [9]

:[11]
pushi.e 0
pop.v.i self.i

:[12]
push.v self.i
pushi.e 24
cmp.i.v LT
bf [14]

:[13]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.areapop
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [12]

:[14]
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
pushi.e 99
cmp.i.v LT
bf [17]

:[16]
push.s "%%%"@16
pushi.e -5
push.v self.i
conv.v.i
pop.v.s [array]global.msg
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[17]
pushi.e 0
pop.v.i global.area
pushi.e 0
pop.v.i self.i

:[18]
push.v self.i
pushi.e 512
cmp.i.v LT
bf [20]

:[19]
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.flag
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [18]

:[20]
pushi.e 14
pushi.e -5
pushi.e 300
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 301
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 302
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 303
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 304
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 512
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.idealborder
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.idealborder
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.idealborder
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.idealborder
pushi.e 0
pop.v.i global.plot
pushi.e 0
pop.v.i global.currentroom
pushi.e 0
pop.v.i self.i

:[21]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [23]

:[22]
push.s "Error"@3420
pushi.e -5
push.v self.i
conv.v.i
pop.v.s [array]global.monstername
pushi.e 50
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monsterhp
pushi.e 50
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monstermaxhp
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.goldreward
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.itemrewardid
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.itemrewardchance
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.monster
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.attacker
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.mnpwr
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.bulletpwr
pushi.e 0
pushi.e -5
push.v self.i
conv.v.i
pop.v.i [array]global.hurtanim
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [21]

:[23]
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.xpreward
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.goldreward
pushi.e 3
pop.v.i global.battlegroup
pushi.e 0
pop.v.i global.turntimer
pushi.e 0
pop.v.i global.talked
pushi.e 20
pop.v.i global.inv
pushi.e 0
pop.v.i global.invc
pushi.e 0
pop.v.i global.turnmax
pushi.e 0
pop.v.i global.myfight
pushi.e 0
pop.v.i global.mnfight
pushi.e 0
pop.v.i global.incombat
pushi.e 14
pop.v.i global.firingrate
pushi.e 0
pop.v.i global.border
pushi.e 0
pop.v.i global.turn
pushi.e 0
pop.v.i global.actfirst
pushi.e 0
pop.v.i global.extraintro
pushi.e 0
pop.v.i global.mytarget
push.s "ord('z')"@3445
pop.v.s global.confirm
pushi.e 90
pop.v.i global.damagetimer
pushi.e 1
pop.v.i global.attacktype
pushi.e 0
pop.v.i global.wstrength
pushi.e 0
pop.v.i global.pwr
pushi.e 11
pop.v.i global.attackspeed
pushi.e 2
pop.v.i global.attackspeedr
pushi.e 0
pop.v.i global.wstrength
pushi.e 0
pop.v.i global.kills
pushi.e 0
pop.v.i global.specialbattle
push.l 43872483278
pop.v.l global.batmusic
pushi.e 0
pop.v.i global.myview
pushi.e 0
pop.v.i global.hshake
pushi.e 0
pop.v.i global.vshake
pushi.e 0
pop.v.i global.shakespeed
pushi.e 0
pop.v.i global.encounter
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.phasing
pushi.e 0
pop.v.i global.choices
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.viewpan
pushi.e 0
pop.v.i global.inbattle
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.seriousbattle
pushi.e 0
pop.v.i global.mercy
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 4
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 5
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 6
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 7
pop.v.i [array]global.item
pushi.e 0
pushi.e -5
pushi.e 8
pop.v.i [array]global.item
pushi.e 3
pop.v.i global.weapon
pushi.e 4
pop.v.i global.armor
pushi.e 0
pushi.e -5
pushi.e 0
pop.v.i [array]global.phone
pushi.e 0
pushi.e -5
pushi.e 1
pop.v.i [array]global.phone
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.phone
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.phone
pushi.e 0
pushi.e -5
pushi.e 4
pop.v.i [array]global.phone
pushi.e 0
pushi.e -5
pushi.e 5
pop.v.i [array]global.phone
pushi.e 0
pushi.e -5
pushi.e 6
pop.v.i [array]global.phone
pushi.e 0
pushi.e -5
pushi.e 7
pop.v.i [array]global.phone
pushi.e 0
pushi.e -5
pushi.e 8
pop.v.i [array]global.phone
pushi.e 1
pushi.e -5
pushi.e 0
pop.v.i [array]global.menuchoice
pushi.e 1
pushi.e -5
pushi.e 1
pop.v.i [array]global.menuchoice
pushi.e 0
pushi.e -5
pushi.e 2
pop.v.i [array]global.menuchoice
pushi.e 0
pushi.e -5
pushi.e 3
pop.v.i [array]global.menuchoice
pushi.e -1
pop.v.i global.choice
pushi.e 0
pop.v.i global.lastsavedtime
pushi.e 0
pop.v.i global.lastsavedkills
pushi.e 0
pop.v.i global.lastsavedlv
pushi.e 0
pop.v.i global.filechoice
pushi.e 0
pop.v.i global.dontfade
pushi.e 0
pop.v.i global.entrance
pushi.e -1
pop.v.i global.currentsong
pushi.e -1
pop.v.i global.currentsong2
pushi.e -1
pop.v.i global.batmusic
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.hardmode

:[end]
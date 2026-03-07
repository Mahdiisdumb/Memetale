.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_monstersetup(argc=5)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 186
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 4
pop.v.i self.gen
pushi.e 232
pop.v.i self.part1
push.v self.part1
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mypart1
pushi.e 0
pop.v.i self.hurtanim
pushi.e 43
pop.v.i self.hurtsound
pushi.e 0
pop.v.i self.talked
pushi.e -1
pop.v.i self.whatiheard
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.killed
pushi.e 0
pop.v.i global.heard
pushi.e 0
pop.v.i self.takedamage
pushi.e 0
pop.v.i self.mercymod
pushi.e 0
pop.v.i self.insult
pushi.e 0
pop.v.i self.close
pushi.e 0
pop.v.i self.dogignore
pushi.e 0
pop.v.i self.pet
pushi.e 0
pop.v.i global.vaporspeed
pushi.e 0
pop.v.i self.hotcha
pushi.e 0
pop.v.i self.flirto
pushi.e 0
pop.v.i self.flirt2
pushi.e 0
pop.v.i self.stalk
pushi.e 0
pop.v.i self.conversation
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pop.v.v self.prevhp
pushi.e 0
pop.v.i self.talkify
push.s "music/papyrusboss.ogg"@2832
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.batmusic2
pushi.e 0
pop.v.i self.truefight
pushi.e -1
pop.v.i self.fighto
pushi.e 0
pop.v.i self.xfight
pushi.e 0
pop.v.i self.dontcancel
pushi.e 0
pop.v.i self.bonetalk
pushi.e 0
pop.v.i self.bonetalk2
pushi.e 0
pop.v.i self.bonetalk3
pushi.e 0
pop.v.i self.bonetalk4
pushglb.v global.hp
pop.v.v self.hearthp
pushglb.v global.hp
pop.v.v self.hearthp2
pushi.e 0
pop.v.i self.xxtalk
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
pushi.e 1
pop.v.i self.truefight
pushi.e 1
pop.v.i self.conversation

:[4]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e -2
cmp.i.v EQ
bf [6]

:[5]
pushi.e -3
pushi.e -5
pushi.e 67
pop.v.i [array]global.flag

:[6]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e -1
cmp.i.v EQ
bf [8]

:[7]
pushi.e -2
pushi.e -5
pushi.e 67
pop.v.i [array]global.flag

:[8]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e -1
pushi.e -5
pushi.e 67
pop.v.i [array]global.flag

:[10]
pushi.e 1
pushi.e -5
pushi.e 68
pop.v.i [array]global.flag
pushi.e 15
pop.v.i self.blcon_textofs
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [12]

:[11]
push.v self.blcon_textofs
pushi.e 11
add.i.v
pop.v.v self.blcon_textofs

:[12]
push.v self.sprite_height
pop.v.v self.ht
push.v self.sprite_width
pop.v.v self.wd
pushi.e 0
pop.v.i self.murder
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [14]

:[13]
pushi.e 1
pop.v.i self.murder
pushi.e 1
pushi.e -5
pushi.e 290
pop.v.i [array]global.flag
pushi.e -20000
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
pushi.e 0
pop.v.i self.dontcancel
pushi.e -2
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.bonetalk3
pushi.e 8000
pop.v.i self.mercymod

:[14]
push.l 8589458454
pop.v.l self.blcon
push.l 584589485934
pop.v.l self.blconwd

:[end]
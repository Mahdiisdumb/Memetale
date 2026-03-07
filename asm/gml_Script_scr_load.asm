.localvar 0 arguments

:[0]
pushglb.v global.filechoice
pop.v.v self.filechoicebk
pushi.e 0
conv.i.v
pushglb.v global.currentroom
call.i room_set_persistent(argc=2)
popz.v
pushi.e 66
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.filechoicebk
pop.v.v global.filechoice
push.s "file"@3360
pushglb.v global.filechoice
call.i string(argc=1)
add.v.s
pop.v.v self.file
push.v self.file
call.i ossafe_file_text_open_read(argc=1)
pop.v.v self.myfileid
push.v self.myfileid
call.i ossafe_file_text_read_string(argc=1)
pop.v.v global.charname
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.lv
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.maxhp
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.maxen
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.at
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.wstrength
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.df
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.adef
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.sp
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.xp
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.gold
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.kills
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [3]

:[2]
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.item
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.phone
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.weapon
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.armor
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 512
cmp.i.v LT
bf [6]

:[5]
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.flag
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.plot
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[7]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [9]

:[8]
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.menuchoice
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [7]

:[9]
pushi.e 0
pushi.e -5
pushi.e 94
pop.v.i [array]global.flag
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.currentsong
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v global.currentroom
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
push.v self.myfileid
call.i ossafe_file_text_read_real(argc=1)
pop.v.v 1575.time
push.v self.myfileid
call.i ossafe_file_text_readln(argc=1)
popz.v
pushglb.v global.kills
pop.v.v global.lastsavedkills
push.v 1575.time
pop.v.v global.lastsavedtime
pushglb.v global.lv
pop.v.v global.lastsavedlv
push.v self.myfileid
call.i ossafe_file_text_close(argc=1)
popz.v
pushglb.v global.maxhp
pop.v.v global.hp
pushglb.v global.maxen
pop.v.v global.en
pushi.e 63
conv.i.v
call.i script_execute(argc=1)
popz.v
pushglb.v global.currentroom
pushi.e 75
cmp.i.v LT
bf [11]

:[10]
pushi.e 0
pop.v.i global.area

:[11]
pushglb.v global.currentroom
pushi.e 75
cmp.i.v GTE
bf [13]

:[12]
pushi.e 1
pop.v.i global.area

:[13]
pushi.e 0
pushi.e -5
pushi.e 360
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 361
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 362
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 363
pop.v.i [array]global.flag
pushi.e 0
pushi.e -5
pushi.e 364
pop.v.i [array]global.flag
call.i scr_dogcheck(argc=0)
popz.v
push.v self.dogcheck
pushi.e 1
cmp.i.v EQ
bf [end]

:[14]
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v

:[end]
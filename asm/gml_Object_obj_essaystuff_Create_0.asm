.localvar 0 arguments

:[0]
push.s " "@18
pop.v.s self.mystring
pushi.e 450
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.cantype
pushi.e 415
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 1
pop.v.i self.draw_on
pushi.e 0
pop.v.i self.dotimer
pushi.e 0
pop.v.i global.border
pushi.e 180
pop.v.i self.endbuffer
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "EssayNo"@48789
conv.s.v
push.s "MTT"@48790
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.essaynum
call.i ossafe_ini_close(argc=0)
popz.v

:[4]
push.v self.essaynum
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 150
pop.v.i self.endbuffer

:[6]
push.v self.essaynum
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 120
pop.v.i self.endbuffer

:[8]
push.v self.essaynum
pushi.e 3
cmp.i.v GTE
bf [10]

:[9]
pushi.e 100
pop.v.i self.endbuffer

:[10]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [12]

:[11]
pushi.e 1
pop.v.i self.keyboard_present
b [13]

:[12]
pushi.e 0
pop.v.i self.keyboard_present

:[13]
push.v self.keyboard_present
conv.v.b
not.b
bf [end]

:[14]
pushi.e 1
pop.v.i global.disable_os_pause
push.s ""@36
conv.s.v
push.s "mett_essay_prompt_console"@32220
conv.s.v
call.i scr_gettext(argc=1)
call.i get_string_async(argc=2)
pop.v.v self.getstring_event_id
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]
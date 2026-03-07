.localvar 0 arguments

:[0]
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q
pushi.e 300
pop.v.i self.quiztimer
pushi.e 1
pop.v.i self.phase
pushi.e -1
pop.v.i self.answer
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 99
pop.v.i 744.movement
push.v self.q
pushi.e 99
cmp.i.v EQ
bf [2]

:[1]
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "What's a pretzel's#favorite color?"@48412
pop.v.s self.qtext
push.s "Black"@48413
pop.v.s self.a1
push.s "Yellow"@48414
pop.v.s self.a2
push.s "Red"@48415
pop.v.s self.a3
push.s "Dusk"@48416
pop.v.s self.a4
pushi.e 2
pop.v.i self.correct
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
push.v self.q
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 80
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "mettquiz_q1_text"@32972
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.qtext
push.s "mettquiz_q1_a1"@32974
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a1
push.s "mettquiz_q1_a2"@32976
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a2
push.s "mettquiz_q1_a3"@32978
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a3
push.s "mettquiz_q1_a4"@32980
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a4
pushi.e 3
pop.v.i self.correct
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[4]
push.v self.q
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "mettquiz_q2_text"@32982
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.qtext
push.s "mettquiz_q2_a1"@32984
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a1
push.s "mettquiz_q2_a2"@32986
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a2
push.s "mettquiz_q2_a3"@32988
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a3
push.s "mettquiz_q2_a4"@32990
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a4
pushi.e 2
pop.v.i self.correct
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
push.v self.q
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "mettquiz_q3_text"@32992
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.qtext
push.s "mettquiz_q3_a1"@32994
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a1
push.s "mettquiz_q3_a2"@32996
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a2
push.s "mettquiz_q3_a3"@32998
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a3
push.s "mettquiz_q3_a4"@33000
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a4
pushi.e 1
pop.v.i self.correct
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[8]
push.v self.q
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
push.s "mettquiz_q4_text"@33002
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.qtext
push.s "mettquiz_q4_a1"@33004
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a1
push.s "mettquiz_q4_a2"@33006
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a2
push.s "mettquiz_q4_a3"@33008
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a3
push.s "mettquiz_q4_a4"@33010
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a4
pushi.e 3
pop.v.i self.correct
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[10]
push.v self.q
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "mettquiz_q5_text"@33012
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.qtext
push.s "mettquiz_q5_a1"@33014
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a1
push.s "mettquiz_q5_a2"@33016
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a2
push.s "mettquiz_q5_a3"@33018
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a3
push.s "mettquiz_q5_a4"@33020
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a4
pushi.e 0
pop.v.i self.correct
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 306
conv.i.v
pushi.e 120
conv.i.v
pushi.e 280
conv.i.v
call.i instance_create(argc=3)
popz.v

:[12]
push.v self.q
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "mettquiz_q6_text"@33022
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.qtext
push.s "mettquiz_q6_a1"@33023
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a1
push.s "mettquiz_q6_a2"@33024
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a2
push.s "mettquiz_q6_a3"@33025
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a3
push.s "mettquiz_q6_a4"@33026
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a4
pushi.e 3
pop.v.i self.correct
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 304
conv.i.v
pushi.e 120
conv.i.v
pushi.e 250
conv.i.v
call.i instance_create(argc=3)
popz.v

:[14]
push.v self.q
pushi.e 7
cmp.i.v EQ
bf [16]

:[15]
push.s "mettquiz_q7_text"@33028
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.qtext
push.s "mettquiz_q7_a1"@33030
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a1
push.s "mettquiz_q7_a2"@33031
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a2
push.s "mettquiz_q7_a3"@33032
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a3
push.s "mettquiz_q7_a4"@33033
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a4
pushi.e 5
pop.v.i self.correct
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[16]
push.v self.q
pushi.e 8
cmp.i.v EQ
bf [18]

:[17]
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "mettquiz_q8_text"@33035
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.qtext
push.s "special1"@48392
pop.v.s self.a1
push.s "special1"@48392
pop.v.s self.a2
push.s "special1"@48392
pop.v.s self.a3
push.s "special1"@48392
pop.v.s self.a4
pushi.e 2
pop.v.i self.correct
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[18]
push.v self.q
pushi.e 9
cmp.i.v EQ
bf [20]

:[19]
pushi.e 200
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "mettquiz_q9_text"@33037
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.qtext
pushi.e 5
pop.v.i self.correct

:[20]
push.v self.q
pushi.e 10
cmp.i.v EQ
bf [22]

:[21]
pushi.e 70
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
push.s "mettquiz_q10_text"@33039
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.qtext
push.s "mettquiz_q10_a1"@33040
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a1
push.s "mettquiz_q10_a2"@33041
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a2
push.s "mettquiz_q10_a3"@33043
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a3
push.s "mettquiz_q10_a4"@33045
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.a4
pushi.e 6
pop.v.i self.correct
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[22]
push.v self.q
pushi.e 14
cmp.i.v EQ
bf [end]

:[23]
push.s "How bright is#this text?"@48417
pop.v.s self.qtext
push.s "85% Bright"@48418
pop.v.s self.a1
push.s "84% Bright"@48419
pop.v.s self.a2
push.s "86% Bright"@48420
pop.v.s self.a3
push.s "83% Bright"@48421
pop.v.s self.a4
pushi.e 1
pop.v.i self.correct
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]
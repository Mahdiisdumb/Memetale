.localvar 0 arguments
.localvar 1 bc 510

:[0]
pushi.e 0
pop.v.i self.i
pushi.e 1
pop.v.i self.loop
pushi.e 0
pop.v.i self.noroom
pushi.e 999
pushi.e -5
pushi.e 8
pop.v.i [array]global.item

:[1]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [7]

:[2]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.item
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushbltn.v self.argument0
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.item
b [7]

:[4]
push.v self.i
pushi.e 8
cmp.i.v EQ
bf [6]

:[5]
pushi.e 91
conv.i.v
call.i script_execute(argc=1)
popz.v
b [7]

:[6]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[7]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "BC"@3571
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local.bc
pushloc.v local.bc
pushi.e 4
cmp.i.v LT
bf [9]

:[8]
push.v local.bc
push.e 1
add.i.v
pop.v.v local.bc
pushloc.v local.bc
push.s "BC"@3571
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v
b [10]

:[9]
call.i ossafe_ini_close(argc=0)
popz.v

:[10]
pushloc.v local.bc
pushi.e 1
cmp.i.v GTE
bf [12]

:[11]
push.s "item_1"@3573
conv.s.v
call.i trophy_unlock(argc=1)
popz.v

:[12]
pushloc.v local.bc
pushi.e 2
cmp.i.v GTE
bf [14]

:[13]
push.s "item_2"@3574
conv.s.v
call.i trophy_unlock(argc=1)
popz.v

:[14]
pushloc.v local.bc
pushi.e 3
cmp.i.v GTE
bf [16]

:[15]
push.s "item_3"@3575
conv.s.v
call.i trophy_unlock(argc=1)
popz.v

:[16]
pushloc.v local.bc
pushi.e 4
cmp.i.v GTE
bf [18]

:[17]
push.s "item_4"@3576
conv.s.v
call.i trophy_unlock(argc=1)
popz.v

:[18]
pushi.e 79
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e 86
conv.i.v
call.i script_execute(argc=1)
popz.v

:[end]
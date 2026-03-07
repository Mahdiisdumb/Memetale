.localvar 0 arguments
.localvar 1 json 855

:[0]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [2]

:[1]
b [end]

:[2]
pushglb.v global.savedata_async_id
pushi.e 0
cmp.i.v GTE
bf [4]

:[3]
pushi.e 0
conv.i.v
ret.v

:[4]
push.s "Memetale"@6249
conv.s.v
call.i buffer_async_group_begin(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "showdialog"@6251
conv.s.v
call.i buffer_async_group_option(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "savepadindex"@6253
conv.s.v
call.i buffer_async_group_option(argc=2)
popz.v
push.s "Memetale"@6249
conv.s.v
push.s "slottitle"@6254
conv.s.v
call.i buffer_async_group_option(argc=2)
popz.v
push.s "Memetale Save Data"@6255
conv.s.v
push.s "subtitle"@6256
conv.s.v
call.i buffer_async_group_option(argc=2)
popz.v
pushglb.v global.savedata
call.i json_encode(argc=1)
pop.v.v local.json
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.json
call.i string_byte_length(argc=1)
pushi.e 1
add.i.v
call.i buffer_create(argc=3)
pop.v.v global.savedata_buffer
pushloc.v local.json
pushi.e 11
conv.i.v
pushglb.v global.savedata_buffer
call.i buffer_write(argc=3)
popz.v
pushglb.v global.savedata_buffer
call.i buffer_get_size(argc=1)
pushi.e 0
conv.i.v
push.s "undertale.sav"@6259
conv.s.v
pushglb.v global.savedata_buffer
call.i buffer_save_async(argc=4)
popz.v
pushi.e 0
pop.v.i global.savedata_async_load
push.s "save in progress"@6270
pop.v.s global.savedata_debuginfo
call.i buffer_async_group_end(argc=0)
pop.v.v global.savedata_async_id

:[end]
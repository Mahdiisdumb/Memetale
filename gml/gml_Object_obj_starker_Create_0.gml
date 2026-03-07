subject = 287294723489372960000;

if (global.flag[85] == 1) {
    instance_destroy();
    exit;
}

if (instance_exists(obj_mainchara)) {
    obj_mainchara.usprite = 1095;
    obj_mainchara.rsprite = 1096;
    obj_mainchara.dsprite = 1093;
    obj_mainchara.lsprite = 1097;
    subject = 1576;
}

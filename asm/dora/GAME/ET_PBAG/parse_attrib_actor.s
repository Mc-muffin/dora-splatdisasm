.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel parse_attrib_actor
/* F25C 8001EA5C C8FFBD27 */  addiu      $sp, $sp, -0x38
/* F260 8001EA60 3000BEAF */  sw         $fp, 0x30($sp)
/* F264 8001EA64 21F08000 */  addu       $fp, $a0, $zero
/* F268 8001EA68 2C00B7AF */  sw         $s7, 0x2C($sp)
/* F26C 8001EA6C 21B8A000 */  addu       $s7, $a1, $zero
/* F270 8001EA70 3400BFAF */  sw         $ra, 0x34($sp)
/* F274 8001EA74 2800B6AF */  sw         $s6, 0x28($sp)
/* F278 8001EA78 2400B5AF */  sw         $s5, 0x24($sp)
/* F27C 8001EA7C 2000B4AF */  sw         $s4, 0x20($sp)
/* F280 8001EA80 1C00B3AF */  sw         $s3, 0x1C($sp)
/* F284 8001EA84 1800B2AF */  sw         $s2, 0x18($sp)
/* F288 8001EA88 1400B1AF */  sw         $s1, 0x14($sp)
/* F28C 8001EA8C BC42010C */  jal        pbag_init
/* F290 8001EA90 1000B0AF */   sw        $s0, 0x10($sp)
/* F294 8001EA94 21A00000 */  addu       $s4, $zero, $zero
/* F298 8001EA98 2600E01A */  blez       $s7, .L8001EB34
/* F29C 8001EA9C 21900000 */   addu      $s2, $zero, $zero
.L8001EAA0:
/* F2A0 8001EAA0 FF42010C */  jal        pbag_getnum
/* F2A4 8001EAA4 01005226 */   addiu     $s2, $s2, 0x1
/* F2A8 8001EAA8 1543010C */  jal        pbag_getptr
/* F2AC 8001EAAC 21804000 */   addu      $s0, $v0, $zero
/* F2B0 8001EAB0 21884000 */  addu       $s1, $v0, $zero
/* F2B4 8001EAB4 0000248E */  lw         $a0, 0x0($s1)
/* F2B8 8001EAB8 B142010C */  jal        pbag_getenum
/* F2BC 8001EABC 00000000 */   nop
/* F2C0 8001EAC0 1700001A */  blez       $s0, .L8001EB20
/* F2C4 8001EAC4 00000000 */   nop
/* F2C8 8001EAC8 04001624 */  addiu      $s6, $zero, 0x4
/* F2CC 8001EACC 07001524 */  addiu      $s5, $zero, 0x7
/* F2D0 8001EAD0 FFEF1334 */  ori        $s3, $zero, 0xEFFF
.L8001EAD4:
/* F2D4 8001EAD4 0A005614 */  bne        $v0, $s6, .L8001EB00
/* F2D8 8001EAD8 00000000 */   nop
/* F2DC 8001EADC 0800228E */  lw         $v0, 0x8($s1)
/* F2E0 8001EAE0 00000000 */  nop
/* F2E4 8001EAE4 0000428C */  lw         $v0, 0x0($v0)
/* F2E8 8001EAE8 00000000 */  nop
/* F2EC 8001EAEC 04005510 */  beq        $v0, $s5, .L8001EB00
/* F2F0 8001EAF0 2A106202 */   slt       $v0, $s3, $v0
/* F2F4 8001EAF4 02004014 */  bnez       $v0, .L8001EB00
/* F2F8 8001EAF8 00000000 */   nop
/* F2FC 8001EAFC 01009426 */  addiu      $s4, $s4, 0x1
.L8001EB00:
/* F300 8001EB00 E742010C */  jal        pbag_advanceONE
/* F304 8001EB04 FFFF1026 */   addiu     $s0, $s0, -0x1
/* F308 8001EB08 21884000 */  addu       $s1, $v0, $zero
/* F30C 8001EB0C 0000248E */  lw         $a0, 0x0($s1)
/* F310 8001EB10 B142010C */  jal        pbag_getenum
/* F314 8001EB14 00000000 */   nop
/* F318 8001EB18 EEFF0016 */  bnez       $s0, .L8001EAD4
/* F31C 8001EB1C 00000000 */   nop
.L8001EB20:
/* F320 8001EB20 C042010C */  jal        pbag_advance
/* F324 8001EB24 00000000 */   nop
/* F328 8001EB28 2A105702 */  slt        $v0, $s2, $s7
/* F32C 8001EB2C DCFF4014 */  bnez       $v0, .L8001EAA0
/* F330 8001EB30 00000000 */   nop
.L8001EB34:
/* F334 8001EB34 50008226 */  addiu      $v0, $s4, 0x50
/* F338 8001EB38 C0200200 */  sll        $a0, $v0, 3
/* F33C 8001EB3C 21208200 */  addu       $a0, $a0, $v0
/* F340 8001EB40 2B3F010C */  jal        new_malloc
/* F344 8001EB44 80200400 */   sll       $a0, $a0, 2
/* F348 8001EB48 2120C003 */  addu       $a0, $fp, $zero
/* F34C 8001EB4C 21A84000 */  addu       $s5, $v0, $zero
/* F350 8001EB50 0880033C */  lui        $v1, %hi(TestWorld)
/* F354 8001EB54 8C656224 */  addiu      $v0, $v1, %lo(TestWorld)
/* F358 8001EB58 1C0055AC */  sw         $s5, 0x1C($v0)
/* F35C 8001EB5C BC42010C */  jal        pbag_init
/* F360 8001EB60 100054AC */   sw        $s4, 0x10($v0)
/* F364 8001EB64 21980000 */  addu       $s3, $zero, $zero
/* F368 8001EB68 02000424 */  addiu      $a0, $zero, 0x2
/* F36C 8001EB6C 0980013C */  lui        $at, %hi(g_number_of_actorsinlist)
/* F370 8001EB70 B85620AC */  sw         $zero, %lo(g_number_of_actorsinlist)($at)
/* F374 8001EB74 0980013C */  lui        $at, %hi(DefaultCameraEnum)
/* F378 8001EB78 DC5620AC */  sw         $zero, %lo(DefaultCameraEnum)($at)
/* F37C 8001EB7C 0980013C */  lui        $at, %hi(CurrentCameraEnum)
/* F380 8001EB80 B04C20AC */  sw         $zero, %lo(CurrentCameraEnum)($at)
/* F384 8001EB84 F481000C */  jal        SetEndLevel
/* F388 8001EB88 409C0534 */   ori       $a1, $zero, 0x9C40
/* F38C 8001EB8C 8000E01A */  blez       $s7, .L8001ED90
/* F390 8001EB90 21900000 */   addu      $s2, $zero, $zero
.L8001EB94:
/* F394 8001EB94 FF42010C */  jal        pbag_getnum
/* F398 8001EB98 00000000 */   nop
/* F39C 8001EB9C C0181300 */  sll        $v1, $s3, 3
/* F3A0 8001EBA0 21187300 */  addu       $v1, $v1, $s3
/* F3A4 8001EBA4 80180300 */  sll        $v1, $v1, 2
/* F3A8 8001EBA8 3443010C */  jal        pbag_getrawptr
/* F3AC 8001EBAC 2180A302 */   addu      $s0, $s5, $v1
/* F3B0 8001EBB0 21204000 */  addu       $a0, $v0, $zero
/* F3B4 8001EBB4 157A000C */  jal        parse_attrib_common
/* F3B8 8001EBB8 21280002 */   addu      $a1, $s0, $zero
/* F3BC 8001EBBC 3443010C */  jal        pbag_getrawptr
/* F3C0 8001EBC0 21884000 */   addu      $s1, $v0, $zero
/* F3C4 8001EBC4 21304000 */  addu       $a2, $v0, $zero
/* F3C8 8001EBC8 1D000224 */  addiu      $v0, $zero, 0x1D
/* F3CC 8001EBCC 07002216 */  bne        $s1, $v0, .L8001EBEC
/* F3D0 8001EBD0 0880033C */   lui       $v1, %hi(TestWorld)
/* F3D4 8001EBD4 0980053C */  lui        $a1, %hi(gWorld)
/* F3D8 8001EBD8 3C56A58C */  lw         $a1, %lo(gWorld)($a1)
/* F3DC 8001EBDC 71DB000C */  jal        parse_attrib_actorpool
/* F3E0 8001EBE0 2120C000 */   addu      $a0, $a2, $zero
/* F3E4 8001EBE4 5F7B0008 */  j          .L8001ED7C
/* F3E8 8001EBE8 00000000 */   nop
.L8001EBEC:
/* F3EC 8001EBEC 8C656224 */  addiu      $v0, $v1, %lo(TestWorld)
/* F3F0 8001EBF0 1000038E */  lw         $v1, 0x10($s0)
/* F3F4 8001EBF4 2000448C */  lw         $a0, 0x20($v0)
/* F3F8 8001EBF8 00190300 */  sll        $v1, $v1, 4
/* F3FC 8001EBFC 21186400 */  addu       $v1, $v1, $a0
/* F400 8001EC00 0C00628C */  lw         $v0, 0xC($v1)
/* F404 8001EC04 00000000 */  nop
/* F408 8001EC08 01004224 */  addiu      $v0, $v0, 0x1
/* F40C 8001EC0C 0C0062AC */  sw         $v0, 0xC($v1)
/* F410 8001EC10 1000048E */  lw         $a0, 0x10($s0)
/* F414 8001EC14 07000224 */  addiu      $v0, $zero, 0x7
/* F418 8001EC18 02008210 */  beq        $a0, $v0, .L8001EC24
/* F41C 8001EC1C FAFF2326 */   addiu     $v1, $s1, -0x6
/* F420 8001EC20 01007326 */  addiu      $s3, $s3, 0x1
.L8001EC24:
/* F424 8001EC24 1100622C */  sltiu      $v0, $v1, 0x11
/* F428 8001EC28 54004010 */  beqz       $v0, .L8001ED7C
/* F42C 8001EC2C 0180023C */   lui       $v0, %hi(jtbl_800107D8)
/* F430 8001EC30 D8074224 */  addiu      $v0, $v0, %lo(jtbl_800107D8)
/* F434 8001EC34 80180300 */  sll        $v1, $v1, 2
/* F438 8001EC38 21186200 */  addu       $v1, $v1, $v0
/* F43C 8001EC3C 0000648C */  lw         $a0, 0x0($v1)
/* F440 8001EC40 00000000 */  nop
/* F444 8001EC44 08008000 */  jr         $a0
/* F448 8001EC48 00000000 */   nop
jlabel .L8001EC4C
/* F44C 8001EC4C 0B000224 */  addiu      $v0, $zero, 0xB
/* F450 8001EC50 5F7B0008 */  j          .L8001ED7C
/* F454 8001EC54 0C0002AE */   sw        $v0, 0xC($s0)
jlabel .L8001EC58
/* F458 8001EC58 2120C000 */  addu       $a0, $a2, $zero
/* F45C 8001EC5C 1C00038E */  lw         $v1, 0x1C($s0)
/* F460 8001EC60 11000224 */  addiu      $v0, $zero, 0x11
/* F464 8001EC64 0C0002AE */  sw         $v0, 0xC($s0)
/* F468 8001EC68 8000023C */  lui        $v0, (0x800000 >> 16)
/* F46C 8001EC6C 25186200 */  or         $v1, $v1, $v0
/* F470 8001EC70 241B010C */  jal        parse_attrib_tracker
/* F474 8001EC74 1C0003AE */   sw        $v1, 0x1C($s0)
/* F478 8001EC78 5F7B0008 */  j          .L8001ED7C
/* F47C 8001EC7C 180002AE */   sw        $v0, 0x18($s0)
jlabel .L8001EC80
/* F480 8001EC80 2120C000 */  addu       $a0, $a2, $zero
/* F484 8001EC84 1C00038E */  lw         $v1, 0x1C($s0)
/* F488 8001EC88 0F000224 */  addiu      $v0, $zero, 0xF
/* F48C 8001EC8C 0C0002AE */  sw         $v0, 0xC($s0)
/* F490 8001EC90 8000023C */  lui        $v0, (0x800000 >> 16)
/* F494 8001EC94 25186200 */  or         $v1, $v1, $v0
/* F498 8001EC98 C917010C */  jal        parse_attrib_Projectile
/* F49C 8001EC9C 1C0003AE */   sw        $v1, 0x1C($s0)
/* F4A0 8001ECA0 5F7B0008 */  j          .L8001ED7C
/* F4A4 8001ECA4 180002AE */   sw        $v0, 0x18($s0)
jlabel .L8001ECA8
/* F4A8 8001ECA8 2120C000 */  addu       $a0, $a2, $zero
/* F4AC 8001ECAC 1C00038E */  lw         $v1, 0x1C($s0)
/* F4B0 8001ECB0 13000224 */  addiu      $v0, $zero, 0x13
/* F4B4 8001ECB4 0C0002AE */  sw         $v0, 0xC($s0)
/* F4B8 8001ECB8 8000023C */  lui        $v0, (0x800000 >> 16)
/* F4BC 8001ECBC 25186200 */  or         $v1, $v1, $v0
/* F4C0 8001ECC0 9C1C010C */  jal        parse_attrib_hedgehog
/* F4C4 8001ECC4 1C0003AE */   sw        $v1, 0x1C($s0)
/* F4C8 8001ECC8 5F7B0008 */  j          .L8001ED7C
/* F4CC 8001ECCC 180002AE */   sw        $v0, 0x18($s0)
jlabel .L8001ECD0
/* F4D0 8001ECD0 2120C000 */  addu       $a0, $a2, $zero
/* F4D4 8001ECD4 14000224 */  addiu      $v0, $zero, 0x14
/* F4D8 8001ECD8 BD1E010C */  jal        parse_attrib_vehicle
/* F4DC 8001ECDC 0C0002AE */   sw        $v0, 0xC($s0)
/* F4E0 8001ECE0 5F7B0008 */  j          .L8001ED7C
/* F4E4 8001ECE4 180002AE */   sw        $v0, 0x18($s0)
jlabel .L8001ECE8
/* F4E8 8001ECE8 2120C000 */  addu       $a0, $a2, $zero
/* F4EC 8001ECEC 1C00038E */  lw         $v1, 0x1C($s0)
/* F4F0 8001ECF0 15000224 */  addiu      $v0, $zero, 0x15
/* F4F4 8001ECF4 0C0002AE */  sw         $v0, 0xC($s0)
/* F4F8 8001ECF8 8000023C */  lui        $v0, (0x800000 >> 16)
/* F4FC 8001ECFC 25186200 */  or         $v1, $v1, $v0
/* F500 8001ED00 1022010C */  jal        parse_attrib_release
/* F504 8001ED04 1C0003AE */   sw        $v1, 0x1C($s0)
/* F508 8001ED08 5F7B0008 */  j          .L8001ED7C
/* F50C 8001ED0C 180002AE */   sw        $v0, 0x18($s0)
jlabel .L8001ED10
/* F510 8001ED10 2120C000 */  addu       $a0, $a2, $zero
/* F514 8001ED14 1C00038E */  lw         $v1, 0x1C($s0)
/* F518 8001ED18 16000224 */  addiu      $v0, $zero, 0x16
/* F51C 8001ED1C 0C0002AE */  sw         $v0, 0xC($s0)
/* F520 8001ED20 8000023C */  lui        $v0, (0x800000 >> 16)
/* F524 8001ED24 25186200 */  or         $v1, $v1, $v0
/* F528 8001ED28 9FD9000C */  jal        parse_attrib_swiper
/* F52C 8001ED2C 1C0003AE */   sw        $v1, 0x1C($s0)
/* F530 8001ED30 5F7B0008 */  j          .L8001ED7C
/* F534 8001ED34 180002AE */   sw        $v0, 0x18($s0)
jlabel .L8001ED38
/* F538 8001ED38 2120C000 */  addu       $a0, $a2, $zero
/* F53C 8001ED3C 21280002 */  addu       $a1, $s0, $zero
/* F540 8001ED40 06000224 */  addiu      $v0, $zero, 0x6
/* F544 8001ED44 0C0002AE */  sw         $v0, 0xC($s0)
/* F548 8001ED48 6002010C */  jal        parse_attrib_trigger
/* F54C 8001ED4C 180000AE */   sw        $zero, 0x18($s0)
/* F550 8001ED50 5F7B0008 */  j          .L8001ED7C
/* F554 8001ED54 00000000 */   nop
jlabel .L8001ED58
/* F558 8001ED58 07000224 */  addiu      $v0, $zero, 0x7
/* F55C 8001ED5C 0C0002AE */  sw         $v0, 0xC($s0)
/* F560 8001ED60 5F7B0008 */  j          .L8001ED7C
/* F564 8001ED64 180000AE */   sw        $zero, 0x18($s0)
jlabel .L8001ED68
/* F568 8001ED68 2120C000 */  addu       $a0, $a2, $zero
/* F56C 8001ED6C 09000224 */  addiu      $v0, $zero, 0x9
/* F570 8001ED70 D11B010C */  jal        parse_attrib_wwheel
/* F574 8001ED74 0C0002AE */   sw        $v0, 0xC($s0)
/* F578 8001ED78 180002AE */  sw         $v0, 0x18($s0)
jlabel .L8001ED7C
/* F57C 8001ED7C C042010C */  jal        pbag_advance
/* F580 8001ED80 01005226 */   addiu     $s2, $s2, 0x1
/* F584 8001ED84 2A105702 */  slt        $v0, $s2, $s7
/* F588 8001ED88 82FF4014 */  bnez       $v0, .L8001EB94
/* F58C 8001ED8C 00000000 */   nop
.L8001ED90:
/* F590 8001ED90 2110A002 */  addu       $v0, $s5, $zero
/* F594 8001ED94 3400BF8F */  lw         $ra, 0x34($sp)
/* F598 8001ED98 3000BE8F */  lw         $fp, 0x30($sp)
/* F59C 8001ED9C 2C00B78F */  lw         $s7, 0x2C($sp)
/* F5A0 8001EDA0 2800B68F */  lw         $s6, 0x28($sp)
/* F5A4 8001EDA4 2400B58F */  lw         $s5, 0x24($sp)
/* F5A8 8001EDA8 2000B48F */  lw         $s4, 0x20($sp)
/* F5AC 8001EDAC 1C00B38F */  lw         $s3, 0x1C($sp)
/* F5B0 8001EDB0 1800B28F */  lw         $s2, 0x18($sp)
/* F5B4 8001EDB4 1400B18F */  lw         $s1, 0x14($sp)
/* F5B8 8001EDB8 1000B08F */  lw         $s0, 0x10($sp)
/* F5BC 8001EDBC 0800E003 */  jr         $ra
/* F5C0 8001EDC0 3800BD27 */   addiu     $sp, $sp, 0x38
.size parse_attrib_actor, . - parse_attrib_actor

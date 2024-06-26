.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel parse_attrib_vehicle
/* 382F4 80047AF4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 382F8 80047AF8 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 382FC 80047AFC 1800B2AF */  sw         $s2, 0x18($sp)
/* 38300 80047B00 1400B1AF */  sw         $s1, 0x14($sp)
/* 38304 80047B04 BC42010C */  jal        pbag_init
/* 38308 80047B08 1000B0AF */   sw        $s0, 0x10($sp)
/* 3830C 80047B0C 1543010C */  jal        pbag_getptr
/* 38310 80047B10 00000000 */   nop
/* 38314 80047B14 21804000 */  addu       $s0, $v0, $zero
/* 38318 80047B18 2B3F010C */  jal        new_malloc
/* 3831C 80047B1C 34000424 */   addiu     $a0, $zero, 0x34
/* 38320 80047B20 21884000 */  addu       $s1, $v0, $zero
/* 38324 80047B24 E8030224 */  addiu      $v0, $zero, 0x3E8
/* 38328 80047B28 FA000324 */  addiu      $v1, $zero, 0xFA
/* 3832C 80047B2C 1C0020AE */  sw         $zero, 0x1C($s1)
/* 38330 80047B30 200020AE */  sw         $zero, 0x20($s1)
/* 38334 80047B34 100022AE */  sw         $v0, 0x10($s1)
/* 38338 80047B38 180023AE */  sw         $v1, 0x18($s1)
/* 3833C 80047B3C 300020AE */  sw         $zero, 0x30($s1)
/* 38340 80047B40 0000048E */  lw         $a0, 0x0($s0)
/* 38344 80047B44 B142010C */  jal        pbag_getenum
/* 38348 80047B48 00000000 */   nop
/* 3834C 80047B4C 21184000 */  addu       $v1, $v0, $zero
/* 38350 80047B50 FFFF0234 */  ori        $v0, $zero, 0xFFFF
/* 38354 80047B54 5B006210 */  beq        $v1, $v0, .L80047CC4
/* 38358 80047B58 01801234 */   ori       $s2, $zero, 0x8001
.L80047B5C:
/* 3835C 80047B5C 40007210 */  beq        $v1, $s2, .L80047C60
/* 38360 80047B60 2A104302 */   slt       $v0, $s2, $v1
/* 38364 80047B64 06004014 */  bnez       $v0, .L80047B80
/* 38368 80047B68 00810234 */   ori       $v0, $zero, 0x8100
/* 3836C 80047B6C 00800234 */  ori        $v0, $zero, 0x8000
/* 38370 80047B70 07006210 */  beq        $v1, $v0, .L80047B90
/* 38374 80047B74 00000000 */   nop
/* 38378 80047B78 271F0108 */  j          .L80047C9C
/* 3837C 80047B7C 00000000 */   nop
.L80047B80:
/* 38380 80047B80 41006210 */  beq        $v1, $v0, .L80047C88
/* 38384 80047B84 00000000 */   nop
/* 38388 80047B88 271F0108 */  j          .L80047C9C
/* 3838C 80047B8C 00000000 */   nop
.L80047B90:
/* 38390 80047B90 0800028E */  lw         $v0, 0x8($s0)
/* 38394 80047B94 00000000 */  nop
/* 38398 80047B98 0000448C */  lw         $a0, 0x0($v0)
/* 3839C 80047B9C 5413010C */  jal        GetWorldPathData
/* 383A0 80047BA0 00000000 */   nop
/* 383A4 80047BA4 0400438C */  lw         $v1, 0x4($v0)
/* 383A8 80047BA8 00000000 */  nop
/* 383AC 80047BAC 0B006104 */  bgez       $v1, .L80047BDC
/* 383B0 80047BB0 00000000 */   nop
/* 383B4 80047BB4 0800028E */  lw         $v0, 0x8($s0)
/* 383B8 80047BB8 00000000 */  nop
/* 383BC 80047BBC 0000448C */  lw         $a0, 0x0($v0)
/* 383C0 80047BC0 4415010C */  jal        MoveInBBoxInit
/* 383C4 80047BC4 00000000 */   nop
/* 383C8 80047BC8 1C0022AE */  sw         $v0, 0x1C($s1)
/* 383CC 80047BCC 271F0108 */  j          .L80047C9C
/* 383D0 80047BD0 200020AE */   sw        $zero, 0x20($s1)
.L80047BD4:
/* 383D4 80047BD4 0F1F0108 */  j          .L80047C3C
/* 383D8 80047BD8 2120A000 */   addu      $a0, $a1, $zero
.L80047BDC:
/* 383DC 80047BDC 0800028E */  lw         $v0, 0x8($s0)
/* 383E0 80047BE0 00000000 */  nop
/* 383E4 80047BE4 0000448C */  lw         $a0, 0x0($v0)
/* 383E8 80047BE8 4313010C */  jal        GetWorldPathBrain
/* 383EC 80047BEC 00000000 */   nop
/* 383F0 80047BF0 200022AE */  sw         $v0, 0x20($s1)
/* 383F4 80047BF4 0800028E */  lw         $v0, 0x8($s0)
/* 383F8 80047BF8 1415838F */  lw         $v1, %gp_rel(g_totalnumfreeways)($gp)
/* 383FC 80047BFC 0000448C */  lw         $a0, 0x0($v0)
/* 38400 80047C00 0D006018 */  blez       $v1, .L80047C38
/* 38404 80047C04 21300000 */   addu      $a2, $zero, $zero
/* 38408 80047C08 1015828F */  lw         $v0, %gp_rel(freeways)($gp)
/* 3840C 80047C0C 21386000 */  addu       $a3, $v1, $zero
/* 38410 80047C10 04004324 */  addiu      $v1, $v0, 0x4
/* 38414 80047C14 21284000 */  addu       $a1, $v0, $zero
.L80047C18:
/* 38418 80047C18 0000628C */  lw         $v0, 0x0($v1)
/* 3841C 80047C1C 00000000 */  nop
/* 38420 80047C20 ECFF4410 */  beq        $v0, $a0, .L80047BD4
/* 38424 80047C24 2C006324 */   addiu     $v1, $v1, 0x2C
/* 38428 80047C28 0100C624 */  addiu      $a2, $a2, 0x1
/* 3842C 80047C2C 2A10C700 */  slt        $v0, $a2, $a3
/* 38430 80047C30 F9FF4014 */  bnez       $v0, .L80047C18
/* 38434 80047C34 2C00A524 */   addiu     $a1, $a1, 0x2C
.L80047C38:
/* 38438 80047C38 21200000 */  addu       $a0, $zero, $zero
.L80047C3C:
/* 3843C 80047C3C 280024AE */  sw         $a0, 0x28($s1)
/* 38440 80047C40 2400838C */  lw         $v1, 0x24($a0)
/* 38444 80047C44 00000000 */  nop
/* 38448 80047C48 2C0023AE */  sw         $v1, 0x2C($s1)
/* 3844C 80047C4C 2400828C */  lw         $v0, 0x24($a0)
/* 38450 80047C50 00000000 */  nop
/* 38454 80047C54 01004224 */  addiu      $v0, $v0, 0x1
/* 38458 80047C58 271F0108 */  j          .L80047C9C
/* 3845C 80047C5C 240082AC */   sw        $v0, 0x24($a0)
.L80047C60:
/* 38460 80047C60 0800028E */  lw         $v0, 0x8($s0)
/* 38464 80047C64 00000000 */  nop
/* 38468 80047C68 0000438C */  lw         $v1, 0x0($v0)
/* 3846C 80047C6C 00000000 */  nop
/* 38470 80047C70 100023AE */  sw         $v1, 0x10($s1)
/* 38474 80047C74 0800028E */  lw         $v0, 0x8($s0)
/* 38478 80047C78 00000000 */  nop
/* 3847C 80047C7C 0000438C */  lw         $v1, 0x0($v0)
/* 38480 80047C80 271F0108 */  j          .L80047C9C
/* 38484 80047C84 140023AE */   sw        $v1, 0x14($s1)
.L80047C88:
/* 38488 80047C88 0800028E */  lw         $v0, 0x8($s0)
/* 3848C 80047C8C 00000000 */  nop
/* 38490 80047C90 0000438C */  lw         $v1, 0x0($v0)
/* 38494 80047C94 00000000 */  nop
/* 38498 80047C98 300023AE */  sw         $v1, 0x30($s1)
.L80047C9C:
/* 3849C 80047C9C E742010C */  jal        pbag_advanceONE
/* 384A0 80047CA0 00000000 */   nop
/* 384A4 80047CA4 21804000 */  addu       $s0, $v0, $zero
/* 384A8 80047CA8 0000048E */  lw         $a0, 0x0($s0)
/* 384AC 80047CAC B142010C */  jal        pbag_getenum
/* 384B0 80047CB0 00000000 */   nop
/* 384B4 80047CB4 21184000 */  addu       $v1, $v0, $zero
/* 384B8 80047CB8 FFFF0234 */  ori        $v0, $zero, 0xFFFF
/* 384BC 80047CBC A7FF6214 */  bne        $v1, $v0, .L80047B5C
/* 384C0 80047CC0 00000000 */   nop
.L80047CC4:
/* 384C4 80047CC4 21102002 */  addu       $v0, $s1, $zero
/* 384C8 80047CC8 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 384CC 80047CCC 1800B28F */  lw         $s2, 0x18($sp)
/* 384D0 80047CD0 1400B18F */  lw         $s1, 0x14($sp)
/* 384D4 80047CD4 1000B08F */  lw         $s0, 0x10($sp)
/* 384D8 80047CD8 0800E003 */  jr         $ra
/* 384DC 80047CDC 2000BD27 */   addiu     $sp, $sp, 0x20
.size parse_attrib_vehicle, . - parse_attrib_vehicle

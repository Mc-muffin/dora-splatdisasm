.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LowRezVSyncFunc
/* 4BDAC 8005B5AC C416828F */  lw         $v0, %gp_rel(VCounter)($gp)
/* 4BDB0 8005B5B0 00000000 */  nop
/* 4BDB4 8005B5B4 01004224 */  addiu      $v0, $v0, 0x1
/* 4BDB8 8005B5B8 C41682AF */  sw         $v0, %gp_rel(VCounter)($gp)
/* 4BDBC 8005B5BC C416838F */  lw         $v1, %gp_rel(VCounter)($gp)
/* 4BDC0 8005B5C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4BDC4 8005B5C4 3C00632C */  sltiu      $v1, $v1, 0x3C
/* 4BDC8 8005B5C8 0E006014 */  bnez       $v1, .L8005B604
/* 4BDCC 8005B5CC 1000BFAF */   sw        $ra, 0x10($sp)
/* 4BDD0 8005B5D0 0A80043C */  lui        $a0, %hi(gDemoTimer)
/* 4BDD4 8005B5D4 788B8424 */  addiu      $a0, $a0, %lo(gDemoTimer)
/* 4BDD8 8005B5D8 0017828F */  lw         $v0, %gp_rel(FrameCount)($gp)
/* 4BDDC 8005B5DC FFFF0524 */  addiu      $a1, $zero, -0x1
/* 4BDE0 8005B5E0 FC1682AF */  sw         $v0, %gp_rel(FramesPerSecond)($gp)
/* 4BDE4 8005B5E4 C41680AF */  sw         $zero, %gp_rel(VCounter)($gp)
/* 4BDE8 8005B5E8 001780AF */  sw         $zero, %gp_rel(FrameCount)($gp)
/* 4BDEC 8005B5EC 196F010C */  jal        TimerUpdate
/* 4BDF0 8005B5F0 00000000 */   nop
/* 4BDF4 8005B5F4 0A80043C */  lui        $a0, %hi(gMisc)
/* 4BDF8 8005B5F8 888B8424 */  addiu      $a0, $a0, %lo(gMisc)
/* 4BDFC 8005B5FC 196F010C */  jal        TimerUpdate
/* 4BE00 8005B600 FFFF0524 */   addiu     $a1, $zero, -0x1
.L8005B604:
/* 4BE04 8005B604 FC10868F */  lw         $a2, %gp_rel(VBLoadImageIndex)($gp)
/* 4BE08 8005B608 00000000 */  nop
/* 4BE0C 8005B60C 0B00C010 */  beqz       $a2, .L8005B63C
/* 4BE10 8005B610 FFFFC624 */   addiu     $a2, $a2, -0x1
/* 4BE14 8005B614 40100600 */  sll        $v0, $a2, 1
/* 4BE18 8005B618 21104600 */  addu       $v0, $v0, $a2
/* 4BE1C 8005B61C 80100200 */  sll        $v0, $v0, 2
/* 4BE20 8005B620 0B80043C */  lui        $a0, %hi(VBLoadImageRects)
/* 4BE24 8005B624 C8B78424 */  addiu      $a0, $a0, %lo(VBLoadImageRects)
/* 4BE28 8005B628 21188200 */  addu       $v1, $a0, $v0
/* 4BE2C 8005B62C 0800658C */  lw         $a1, 0x8($v1)
/* 4BE30 8005B630 FC1086AF */  sw         $a2, %gp_rel(VBLoadImageIndex)($gp)
/* 4BE34 8005B634 E1DB010C */  jal        LoadImage
/* 4BE38 8005B638 21204400 */   addu      $a0, $v0, $a0
.L8005B63C:
/* 4BE3C 8005B63C 1000BF8F */  lw         $ra, 0x10($sp)
/* 4BE40 8005B640 02000224 */  addiu      $v0, $zero, 0x2
/* 4BE44 8005B644 DC1082AF */  sw         $v0, %gp_rel(RenderState)($gp)
/* 4BE48 8005B648 0800E003 */  jr         $ra
/* 4BE4C 8005B64C 1800BD27 */   addiu     $sp, $sp, 0x18
.size LowRezVSyncFunc, . - LowRezVSyncFunc

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawTPages
/* 4C4D8 8005BCD8 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 4C4DC 8005BCDC 3C00BFAF */  sw         $ra, 0x3C($sp)
/* 4C4E0 8005BCE0 3800B6AF */  sw         $s6, 0x38($sp)
/* 4C4E4 8005BCE4 3400B5AF */  sw         $s5, 0x34($sp)
/* 4C4E8 8005BCE8 3000B4AF */  sw         $s4, 0x30($sp)
/* 4C4EC 8005BCEC 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 4C4F0 8005BCF0 2800B2AF */  sw         $s2, 0x28($sp)
/* 4C4F4 8005BCF4 2400B1AF */  sw         $s1, 0x24($sp)
/* 4C4F8 8005BCF8 2000B0AF */  sw         $s0, 0x20($sp)
.L8005BCFC:
/* 4C4FC 8005BCFC 36DB010C */  jal        DrawSync
/* 4C500 8005BD00 01000424 */   addiu     $a0, $zero, 0x1
/* 4C504 8005BD04 FDFF4014 */  bnez       $v0, .L8005BCFC
/* 4C508 8005BD08 00000000 */   nop
/* 4C50C 8005BD0C 1BE7010C */  jal        SetLineF2
/* 4C510 8005BD10 1000A427 */   addiu     $a0, $sp, 0x10
/* 4C514 8005BD14 21200000 */  addu       $a0, $zero, $zero
/* 4C518 8005BD18 FF000224 */  addiu      $v0, $zero, 0xFF
/* 4C51C 8005BD1C 1400A2A3 */  sb         $v0, 0x14($sp)
/* 4C520 8005BD20 1500A2A3 */  sb         $v0, 0x15($sp)
/* 4C524 8005BD24 1600A2A3 */  sb         $v0, 0x16($sp)
/* 4C528 8005BD28 21180000 */  addu       $v1, $zero, $zero
.L8005BD2C:
/* 4C52C 8005BD2C 01009624 */  addiu      $s6, $a0, 0x1
/* 4C530 8005BD30 00AA0400 */  sll        $s5, $a0, 8
/* 4C534 8005BD34 21A0A002 */  addu       $s4, $s5, $zero
/* 4C538 8005BD38 21800000 */  addu       $s0, $zero, $zero
.L8005BD3C:
/* 4C53C 8005BD3C 01007324 */  addiu      $s3, $v1, 0x1
/* 4C540 8005BD40 80910300 */  sll        $s2, $v1, 6
/* 4C544 8005BD44 21884002 */  addu       $s1, $s2, $zero
.L8005BD48:
/* 4C548 8005BD48 EBD6010C */  jal        VSync
/* 4C54C 8005BD4C 21200000 */   addu      $a0, $zero, $zero
/* 4C550 8005BD50 1000A427 */  addiu      $a0, $sp, 0x10
/* 4C554 8005BD54 80111300 */  sll        $v0, $s3, 6
/* 4C558 8005BD58 1800B2A7 */  sh         $s2, 0x18($sp)
/* 4C55C 8005BD5C 1A00B4A7 */  sh         $s4, 0x1A($sp)
/* 4C560 8005BD60 1C00A2A7 */  sh         $v0, 0x1C($sp)
/* 4C564 8005BD64 9CDC010C */  jal        DrawPrim
/* 4C568 8005BD68 1E00B4A7 */   sh        $s4, 0x1E($sp)
/* 4C56C 8005BD6C 01001026 */  addiu      $s0, $s0, 0x1
.L8005BD70:
/* 4C570 8005BD70 36DB010C */  jal        DrawSync
/* 4C574 8005BD74 01000424 */   addiu     $a0, $zero, 0x1
/* 4C578 8005BD78 FDFF4014 */  bnez       $v0, .L8005BD70
/* 4C57C 8005BD7C 1000A427 */   addiu     $a0, $sp, 0x10
/* 4C580 8005BD80 00121600 */  sll        $v0, $s6, 8
/* 4C584 8005BD84 1800B1A7 */  sh         $s1, 0x18($sp)
/* 4C588 8005BD88 1A00B5A7 */  sh         $s5, 0x1A($sp)
/* 4C58C 8005BD8C 1C00B1A7 */  sh         $s1, 0x1C($sp)
/* 4C590 8005BD90 9CDC010C */  jal        DrawPrim
/* 4C594 8005BD94 1E00A2A7 */   sh        $v0, 0x1E($sp)
.L8005BD98:
/* 4C598 8005BD98 36DB010C */  jal        DrawSync
/* 4C59C 8005BD9C 01000424 */   addiu     $a0, $zero, 0x1
/* 4C5A0 8005BDA0 FDFF4014 */  bnez       $v0, .L8005BD98
/* 4C5A4 8005BDA4 0200022A */   slti      $v0, $s0, 0x2
/* 4C5A8 8005BDA8 E7FF4014 */  bnez       $v0, .L8005BD48
/* 4C5AC 8005BDAC 21186002 */   addu      $v1, $s3, $zero
/* 4C5B0 8005BDB0 10006228 */  slti       $v0, $v1, 0x10
/* 4C5B4 8005BDB4 E1FF4014 */  bnez       $v0, .L8005BD3C
/* 4C5B8 8005BDB8 21800000 */   addu      $s0, $zero, $zero
/* 4C5BC 8005BDBC 2120C002 */  addu       $a0, $s6, $zero
/* 4C5C0 8005BDC0 02008228 */  slti       $v0, $a0, 0x2
/* 4C5C4 8005BDC4 D9FF4014 */  bnez       $v0, .L8005BD2C
/* 4C5C8 8005BDC8 21180000 */   addu      $v1, $zero, $zero
/* 4C5CC 8005BDCC 36DB010C */  jal        DrawSync
/* 4C5D0 8005BDD0 21200000 */   addu      $a0, $zero, $zero
/* 4C5D4 8005BDD4 3C00BF8F */  lw         $ra, 0x3C($sp)
/* 4C5D8 8005BDD8 3800B68F */  lw         $s6, 0x38($sp)
/* 4C5DC 8005BDDC 3400B58F */  lw         $s5, 0x34($sp)
/* 4C5E0 8005BDE0 3000B48F */  lw         $s4, 0x30($sp)
/* 4C5E4 8005BDE4 2C00B38F */  lw         $s3, 0x2C($sp)
/* 4C5E8 8005BDE8 2800B28F */  lw         $s2, 0x28($sp)
/* 4C5EC 8005BDEC 2400B18F */  lw         $s1, 0x24($sp)
/* 4C5F0 8005BDF0 2000B08F */  lw         $s0, 0x20($sp)
/* 4C5F4 8005BDF4 0800E003 */  jr         $ra
/* 4C5F8 8005BDF8 4000BD27 */   addiu     $sp, $sp, 0x40
.size DrawTPages, . - DrawTPages

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitialiseHUDSprite
/* D4F0 8001CCF0 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* D4F4 8001CCF4 2000B0AF */  sw         $s0, 0x20($sp)
/* D4F8 8001CCF8 2180A000 */  addu       $s0, $a1, $zero
/* D4FC 8001CCFC 4400BFAF */  sw         $ra, 0x44($sp)
/* D500 8001CD00 4000BEAF */  sw         $fp, 0x40($sp)
/* D504 8001CD04 3C00B7AF */  sw         $s7, 0x3C($sp)
/* D508 8001CD08 3800B6AF */  sw         $s6, 0x38($sp)
/* D50C 8001CD0C 3400B5AF */  sw         $s5, 0x34($sp)
/* D510 8001CD10 3000B4AF */  sw         $s4, 0x30($sp)
/* D514 8001CD14 2C00B3AF */  sw         $s3, 0x2C($sp)
/* D518 8001CD18 2800B2AF */  sw         $s2, 0x28($sp)
/* D51C 8001CD1C 535E010C */  jal        LoadTexture
/* D520 8001CD20 2400B1AF */   sw        $s1, 0x24($sp)
/* D524 8001CD24 80000924 */  addiu      $t1, $zero, 0x80
/* D528 8001CD28 80001724 */  addiu      $s7, $zero, 0x80
/* D52C 8001CD2C 21880002 */  addu       $s1, $s0, $zero
/* D530 8001CD30 0C80043C */  lui        $a0, %hi(VRAMItems)
/* D534 8001CD34 0980023C */  lui        $v0, %hi(TexInfo)
/* D538 8001CD38 00594284 */  lh         $v0, %lo(TexInfo)($v0)
/* D53C 8001CD3C 38AD8424 */  addiu      $a0, $a0, %lo(VRAMItems)
/* D540 8001CD40 580002AE */  sw         $v0, 0x58($s0)
/* D544 8001CD44 0980033C */  lui        $v1, %hi(TexInfo + 0x2)
/* D548 8001CD48 02596394 */  lhu        $v1, %lo(TexInfo + 0x2)($v1)
/* D54C 8001CD4C 01000824 */  addiu      $t0, $zero, 0x1
/* D550 8001CD50 1000A3AF */  sw         $v1, 0x10($sp)
/* D554 8001CD54 5C0003AE */  sw         $v1, 0x5C($s0)
/* D558 8001CD58 80180200 */  sll        $v1, $v0, 2
/* D55C 8001CD5C 21186200 */  addu       $v1, $v1, $v0
/* D560 8001CD60 80180300 */  sll        $v1, $v1, 2
/* D564 8001CD64 21306400 */  addu       $a2, $v1, $a0
/* D568 8001CD68 21108300 */  addu       $v0, $a0, $v1
/* D56C 8001CD6C 21208300 */  addu       $a0, $a0, $v1
/* D570 8001CD70 1100C580 */  lb         $a1, 0x11($a2)
/* D574 8001CD74 12004784 */  lh         $a3, 0x12($v0)
/* D578 8001CD78 0F00D490 */  lbu        $s4, 0xF($a2)
/* D57C 8001CD7C 0E00D290 */  lbu        $s2, 0xE($a2)
/* D580 8001CD80 08008494 */  lhu        $a0, 0x8($a0)
/* D584 8001CD84 40280500 */  sll        $a1, $a1, 1
/* D588 8001CD88 8000BE24 */  addiu      $fp, $a1, 0x80
/* D58C 8001CD8C 8000F624 */  addiu      $s6, $a3, 0x80
/* D590 8001CD90 21108702 */  addu       $v0, $s4, $a3
/* D594 8001CD94 FFFF5524 */  addiu      $s5, $v0, -0x1
/* D598 8001CD98 21104502 */  addu       $v0, $s2, $a1
/* D59C 8001CD9C FFFF5324 */  addiu      $s3, $v0, -0x1
/* D5A0 8001CDA0 1400A4AF */  sw         $a0, 0x14($sp)
/* D5A4 8001CDA4 500005AE */  sw         $a1, 0x50($s0)
/* D5A8 8001CDA8 540007AE */  sw         $a3, 0x54($s0)
.L8001CDAC:
/* D5AC 8001CDAC 21202002 */  addu       $a0, $s1, $zero
/* D5B0 8001CDB0 1800A8AF */  sw         $t0, 0x18($sp)
/* D5B4 8001CDB4 FBE6010C */  jal        SetPolyFT4
/* D5B8 8001CDB8 1C00A9AF */   sw        $t1, 0x1C($sp)
/* D5BC 8001CDBC 1400A38F */  lw         $v1, 0x14($sp)
/* D5C0 8001CDC0 07002292 */  lbu        $v0, 0x7($s1)
/* D5C4 8001CDC4 1800A88F */  lw         $t0, 0x18($sp)
/* D5C8 8001CDC8 160023A6 */  sh         $v1, 0x16($s1)
/* D5CC 8001CDCC 1000A38F */  lw         $v1, 0x10($sp)
/* D5D0 8001CDD0 FFFF0825 */  addiu      $t0, $t0, -0x1
/* D5D4 8001CDD4 0E0023A6 */  sh         $v1, 0xE($s1)
/* D5D8 8001CDD8 1C00A98F */  lw         $t1, 0x1C($sp)
/* D5DC 8001CDDC 02004234 */  ori        $v0, $v0, 0x2
/* D5E0 8001CDE0 080037A6 */  sh         $s7, 0x8($s1)
/* D5E4 8001CDE4 0A0037A6 */  sh         $s7, 0xA($s1)
/* D5E8 8001CDE8 10003EA6 */  sh         $fp, 0x10($s1)
/* D5EC 8001CDEC 120037A6 */  sh         $s7, 0x12($s1)
/* D5F0 8001CDF0 180037A6 */  sh         $s7, 0x18($s1)
/* D5F4 8001CDF4 1A0036A6 */  sh         $s6, 0x1A($s1)
/* D5F8 8001CDF8 20003EA6 */  sh         $fp, 0x20($s1)
/* D5FC 8001CDFC 220036A6 */  sh         $s6, 0x22($s1)
/* D600 8001CE00 0C0032A2 */  sb         $s2, 0xC($s1)
/* D604 8001CE04 0D0034A2 */  sb         $s4, 0xD($s1)
/* D608 8001CE08 140033A2 */  sb         $s3, 0x14($s1)
/* D60C 8001CE0C 150034A2 */  sb         $s4, 0x15($s1)
/* D610 8001CE10 1C0032A2 */  sb         $s2, 0x1C($s1)
/* D614 8001CE14 1D0035A2 */  sb         $s5, 0x1D($s1)
/* D618 8001CE18 240033A2 */  sb         $s3, 0x24($s1)
/* D61C 8001CE1C 250035A2 */  sb         $s5, 0x25($s1)
/* D620 8001CE20 070022A2 */  sb         $v0, 0x7($s1)
/* D624 8001CE24 040029A2 */  sb         $t1, 0x4($s1)
/* D628 8001CE28 050029A2 */  sb         $t1, 0x5($s1)
/* D62C 8001CE2C 060029A2 */  sb         $t1, 0x6($s1)
/* D630 8001CE30 DEFF0105 */  bgez       $t0, .L8001CDAC
/* D634 8001CE34 28003126 */   addiu     $s1, $s1, 0x28
/* D638 8001CE38 4400BF8F */  lw         $ra, 0x44($sp)
/* D63C 8001CE3C 4000BE8F */  lw         $fp, 0x40($sp)
/* D640 8001CE40 3C00B78F */  lw         $s7, 0x3C($sp)
/* D644 8001CE44 3800B68F */  lw         $s6, 0x38($sp)
/* D648 8001CE48 3400B58F */  lw         $s5, 0x34($sp)
/* D64C 8001CE4C 3000B48F */  lw         $s4, 0x30($sp)
/* D650 8001CE50 2C00B38F */  lw         $s3, 0x2C($sp)
/* D654 8001CE54 2800B28F */  lw         $s2, 0x28($sp)
/* D658 8001CE58 2400B18F */  lw         $s1, 0x24($sp)
/* D65C 8001CE5C 2000B08F */  lw         $s0, 0x20($sp)
/* D660 8001CE60 0800E003 */  jr         $ra
/* D664 8001CE64 4800BD27 */   addiu     $sp, $sp, 0x48
.size InitialiseHUDSprite, . - InitialiseHUDSprite

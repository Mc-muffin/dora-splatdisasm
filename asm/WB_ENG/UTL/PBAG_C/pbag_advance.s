.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pbag_advance
/* 41300 80050B00 D015868F */  lw         $a2, %gp_rel(pbag_BASE)($gp)
/* 41304 80050B04 FFFF0524 */  addiu      $a1, $zero, -0x1
/* 41308 80050B08 00FF073C */  lui        $a3, (0xFF000000 >> 16)
.L80050B0C:
/* 4130C 80050B0C CC15828F */  lw         $v0, %gp_rel(pbag_IDX)($gp)
/* 41310 80050B10 00000000 */  nop
/* 41314 80050B14 80100200 */  sll        $v0, $v0, 2
/* 41318 80050B18 21104600 */  addu       $v0, $v0, $a2
/* 4131C 80050B1C 0000448C */  lw         $a0, 0x0($v0)
/* 41320 80050B20 00000000 */  nop
/* 41324 80050B24 07008510 */  beq        $a0, $a1, .L80050B44
/* 41328 80050B28 21180000 */   addu      $v1, $zero, $zero
/* 4132C 80050B2C 24108700 */  and        $v0, $a0, $a3
/* 41330 80050B30 02160200 */  srl        $v0, $v0, 24
/* 41334 80050B34 03004014 */  bnez       $v0, .L80050B44
/* 41338 80050B38 01004324 */   addiu     $v1, $v0, 0x1
/* 4133C 80050B3C 03000224 */  addiu      $v0, $zero, 0x3
/* 41340 80050B40 01004324 */  addiu      $v1, $v0, 0x1
.L80050B44:
/* 41344 80050B44 CC15828F */  lw         $v0, %gp_rel(pbag_IDX)($gp)
/* 41348 80050B48 00000000 */  nop
/* 4134C 80050B4C 21104300 */  addu       $v0, $v0, $v1
/* 41350 80050B50 CC1582AF */  sw         $v0, %gp_rel(pbag_IDX)($gp)
/* 41354 80050B54 EDFF8514 */  bne        $a0, $a1, .L80050B0C
/* 41358 80050B58 01004324 */   addiu     $v1, $v0, 0x1
/* 4135C 80050B5C CC1583AF */  sw         $v1, %gp_rel(pbag_IDX)($gp)
/* 41360 80050B60 FFFF0224 */  addiu      $v0, $zero, -0x1
/* 41364 80050B64 0B008214 */  bne        $a0, $v0, .L80050B94
/* 41368 80050B68 FFFF0624 */   addiu     $a2, $zero, -0x1
/* 4136C 80050B6C D015858F */  lw         $a1, %gp_rel(pbag_BASE)($gp)
.L80050B70:
/* 41370 80050B70 80100300 */  sll        $v0, $v1, 2
/* 41374 80050B74 21104500 */  addu       $v0, $v0, $a1
/* 41378 80050B78 0000448C */  lw         $a0, 0x0($v0)
/* 4137C 80050B7C 00000000 */  nop
/* 41380 80050B80 03008614 */  bne        $a0, $a2, .L80050B90
/* 41384 80050B84 00000000 */   nop
/* 41388 80050B88 DC420108 */  j          .L80050B70
/* 4138C 80050B8C 01006324 */   addiu     $v1, $v1, 0x1
.L80050B90:
/* 41390 80050B90 CC1583AF */  sw         $v1, %gp_rel(pbag_IDX)($gp)
.L80050B94:
/* 41394 80050B94 0800E003 */  jr         $ra
/* 41398 80050B98 00000000 */   nop
.size pbag_advance, . - pbag_advance

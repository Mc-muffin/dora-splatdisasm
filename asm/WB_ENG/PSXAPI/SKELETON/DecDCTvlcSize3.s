.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DecDCTvlcSize3
/* 58528 80067D28 0980083C */  lui        $t0, %hi(D_800883CC)
/* 5852C 80067D2C CC830825 */  addiu      $t0, $t0, %lo(D_800883CC)
/* 58530 80067D30 0300801C */  bgtz       $a0, .L80067D40
/* 58534 80067D34 40200400 */   sll       $a0, $a0, 1
/* 58538 80067D38 FF00043C */  lui        $a0, (0xFFFFFF >> 16)
/* 5853C 80067D3C FFFF8434 */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
.L80067D40:
/* 58540 80067D40 0000028D */  lw         $v0, 0x0($t0)
/* 58544 80067D44 000004AD */  sw         $a0, 0x0($t0)
/* 58548 80067D48 0800E003 */  jr         $ra
/* 5854C 80067D4C 00000000 */   nop
.size DecDCTvlcSize3, . - DecDCTvlcSize3

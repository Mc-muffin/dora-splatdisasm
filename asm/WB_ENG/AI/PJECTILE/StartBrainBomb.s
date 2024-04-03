.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel StartBrainBomb
/* 36BF0 800463F0 700D838F */  lw         $v1, %gp_rel(BrainBombStartScale)($gp)
/* 36BF4 800463F4 6C0D858F */  lw         $a1, %gp_rel(BrainBombStartSize)($gp)
/* 36BF8 800463F8 00000000 */  nop
/* 36BFC 800463FC 1800A300 */  mult       $a1, $v1
/* 36C00 80046400 140083AC */  sw         $v1, 0x14($a0)
/* 36C04 80046404 4C0085AC */  sw         $a1, 0x4C($a0)
/* 36C08 80046408 12100000 */  mflo       $v0
/* 36C0C 8004640C 03130200 */  sra        $v0, $v0, 12
/* 36C10 80046410 0800E003 */  jr         $ra
/* 36C14 80046414 500082AC */   sw        $v0, 0x50($a0)
.size StartBrainBomb, . - StartBrainBomb

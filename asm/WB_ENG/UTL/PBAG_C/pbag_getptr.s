.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel pbag_getptr
/* 41454 80050C54 CC15828F */  lw         $v0, %gp_rel(pbag_IDX)($gp)
/* 41458 80050C58 D015838F */  lw         $v1, %gp_rel(pbag_BASE)($gp)
/* 4145C 80050C5C 80100200 */  sll        $v0, $v0, 2
/* 41460 80050C60 21186200 */  addu       $v1, $v1, $v0
/* 41464 80050C64 0A80023C */  lui        $v0, %hi(work_pair.27)
/* 41468 80050C68 0000658C */  lw         $a1, 0x0($v1)
/* 4146C 80050C6C 28774624 */  addiu      $a2, $v0, %lo(work_pair.27)
/* 41470 80050C70 02260500 */  srl        $a0, $a1, 24
/* 41474 80050C74 02008014 */  bnez       $a0, .L80050C80
/* 41478 80050C78 287745AC */   sw        $a1, %lo(work_pair.27)($v0)
/* 4147C 80050C7C 03000424 */  addiu      $a0, $zero, 0x3
.L80050C80:
/* 41480 80050C80 02140500 */  srl        $v0, $a1, 16
/* 41484 80050C84 0600C2A0 */  sb         $v0, 0x6($a2)
/* 41488 80050C88 04006224 */  addiu      $v0, $v1, 0x4
/* 4148C 80050C8C 0800C2AC */  sw         $v0, 0x8($a2)
/* 41490 80050C90 2110C000 */  addu       $v0, $a2, $zero
/* 41494 80050C94 0700C4A0 */  sb         $a0, 0x7($a2)
/* 41498 80050C98 0800E003 */  jr         $ra
/* 4149C 80050C9C 0400C5A4 */   sh        $a1, 0x4($a2)
.size pbag_getptr, . - pbag_getptr

.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Credits14Service
/* 19030 80028830 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 19034 80028834 0180043C */  lui        $a0, %hi(D_800117BC)
/* 19038 80028838 BC178424 */  addiu      $a0, $a0, %lo(D_800117BC)
/* 1903C 8002883C A0000524 */  addiu      $a1, $zero, 0xA0
/* 19040 80028840 1000B0AF */  sw         $s0, 0x10($sp)
/* 19044 80028844 FC07908F */  lw         $s0, %gp_rel(CREDITSSTARTY)($gp)
/* 19048 80028848 01000724 */  addiu      $a3, $zero, 0x1
/* 1904C 8002884C 1400BFAF */  sw         $ra, 0x14($sp)
/* 19050 80028850 30001026 */  addiu      $s0, $s0, 0x30
/* 19054 80028854 7163010C */  jal        TextAddStringC
/* 19058 80028858 21300002 */   addu      $a2, $s0, $zero
/* 1905C 8002885C 0180043C */  lui        $a0, %hi(D_800117D4)
/* 19060 80028860 D4178424 */  addiu      $a0, $a0, %lo(D_800117D4)
/* 19064 80028864 A0000524 */  addiu      $a1, $zero, 0xA0
/* 19068 80028868 20000626 */  addiu      $a2, $s0, 0x20
/* 1906C 8002886C 7163010C */  jal        TextAddStringC
/* 19070 80028870 01000724 */   addiu     $a3, $zero, 0x1
/* 19074 80028874 1400BF8F */  lw         $ra, 0x14($sp)
/* 19078 80028878 1000B08F */  lw         $s0, 0x10($sp)
/* 1907C 8002887C 0800E003 */  jr         $ra
/* 19080 80028880 1800BD27 */   addiu     $sp, $sp, 0x18
.size Credits14Service, . - Credits14Service

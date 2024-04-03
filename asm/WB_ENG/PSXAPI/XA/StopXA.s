.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel StopXA
/* 4F874 8005F074 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4F878 8005F078 0B000224 */  addiu      $v0, $zero, 0xB
/* 4F87C 8005F07C 1000BFAF */  sw         $ra, 0x10($sp)
/* 4F880 8005F080 781182AF */  sw         $v0, %gp_rel(gCDCallback_status)($gp)
/* 4F884 8005F084 B3D2010C */  jal        CdSyncCallback
/* 4F888 8005F088 21200000 */   addu      $a0, $zero, $zero
/* 4F88C 8005F08C BBD2010C */  jal        CdReadyCallback
/* 4F890 8005F090 21200000 */   addu      $a0, $zero, $zero
/* 4F894 8005F094 09000424 */  addiu      $a0, $zero, 0x9
/* 4F898 8005F098 0C80063C */  lui        $a2, %hi(gCdStatus)
/* 4F89C 8005F09C 21280000 */  addu       $a1, $zero, $zero
/* 4F8A0 8005F0A0 C3D2010C */  jal        CdControl
/* 4F8A4 8005F0A4 80E8C624 */   addiu     $a2, $a2, %lo(gCdStatus)
/* 4F8A8 8005F0A8 1000BF8F */  lw         $ra, 0x10($sp)
/* 4F8AC 8005F0AC 00000000 */  nop
/* 4F8B0 8005F0B0 0800E003 */  jr         $ra
/* 4F8B4 8005F0B4 1800BD27 */   addiu     $sp, $sp, 0x18
.size StopXA, . - StopXA

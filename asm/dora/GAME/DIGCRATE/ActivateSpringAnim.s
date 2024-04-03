.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ActivateSpringAnim
/* 12124 80021924 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 12128 80021928 1000B0AF */  sw         $s0, 0x10($sp)
/* 1212C 8002192C 21808000 */  addu       $s0, $a0, $zero
/* 12130 80021930 1400BFAF */  sw         $ra, 0x14($sp)
/* 12134 80021934 0000048E */  lw         $a0, 0x0($s0)
/* 12138 80021938 A38A010C */  jal        ToggleCellAnimation
/* 1213C 8002193C 00000000 */   nop
/* 12140 80021940 09004010 */  beqz       $v0, .L80021968
/* 12144 80021944 00000000 */   nop
/* 12148 80021948 0000048E */  lw         $a0, 0x0($s0)
/* 1214C 8002194C DB94010C */  jal        GetSoundCellAnimation
/* 12150 80021950 21280000 */   addu      $a1, $zero, $zero
/* 12154 80021954 04004004 */  bltz       $v0, .L80021968
/* 12158 80021958 1C000424 */   addiu     $a0, $zero, 0x1C
/* 1215C 8002195C 21284000 */  addu       $a1, $v0, $zero
/* 12160 80021960 6F4A010C */  jal        pxm_sendevent
/* 12164 80021964 01000624 */   addiu     $a2, $zero, 0x1
.L80021968:
/* 12168 80021968 1400BF8F */  lw         $ra, 0x14($sp)
/* 1216C 8002196C 1000B08F */  lw         $s0, 0x10($sp)
/* 12170 80021970 0800E003 */  jr         $ra
/* 12174 80021974 1800BD27 */   addiu     $sp, $sp, 0x18
.size ActivateSpringAnim, . - ActivateSpringAnim

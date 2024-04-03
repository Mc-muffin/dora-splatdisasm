.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DrawALine
/* 4C110 8005B910 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 4C114 8005B914 2C00B3AF */  sw         $s3, 0x2C($sp)
/* 4C118 8005B918 FFFF9330 */  andi       $s3, $a0, 0xFFFF
/* 4C11C 8005B91C 1000A427 */  addiu      $a0, $sp, 0x10
/* 4C120 8005B920 2000B0AF */  sw         $s0, 0x20($sp)
/* 4C124 8005B924 FFFFB030 */  andi       $s0, $a1, 0xFFFF
/* 4C128 8005B928 2400B1AF */  sw         $s1, 0x24($sp)
/* 4C12C 8005B92C FFFFD130 */  andi       $s1, $a2, 0xFFFF
/* 4C130 8005B930 2800B2AF */  sw         $s2, 0x28($sp)
/* 4C134 8005B934 3000BFAF */  sw         $ra, 0x30($sp)
/* 4C138 8005B938 1BE7010C */  jal        SetLineF2
/* 4C13C 8005B93C FFFFF230 */   andi      $s2, $a3, 0xFFFF
/* 4C140 8005B940 1000A427 */  addiu      $a0, $sp, 0x10
/* 4C144 8005B944 FF000224 */  addiu      $v0, $zero, 0xFF
/* 4C148 8005B948 1400A2A3 */  sb         $v0, 0x14($sp)
/* 4C14C 8005B94C 1500A2A3 */  sb         $v0, 0x15($sp)
/* 4C150 8005B950 1600A2A3 */  sb         $v0, 0x16($sp)
/* 4C154 8005B954 1800B3A7 */  sh         $s3, 0x18($sp)
/* 4C158 8005B958 1A00B0A7 */  sh         $s0, 0x1A($sp)
/* 4C15C 8005B95C 1C00B1A7 */  sh         $s1, 0x1C($sp)
/* 4C160 8005B960 9CDC010C */  jal        DrawPrim
/* 4C164 8005B964 1E00B2A7 */   sh        $s2, 0x1E($sp)
/* 4C168 8005B968 36DB010C */  jal        DrawSync
/* 4C16C 8005B96C 21200000 */   addu      $a0, $zero, $zero
/* 4C170 8005B970 3000BF8F */  lw         $ra, 0x30($sp)
/* 4C174 8005B974 2C00B38F */  lw         $s3, 0x2C($sp)
/* 4C178 8005B978 2800B28F */  lw         $s2, 0x28($sp)
/* 4C17C 8005B97C 2400B18F */  lw         $s1, 0x24($sp)
/* 4C180 8005B980 2000B08F */  lw         $s0, 0x20($sp)
/* 4C184 8005B984 0800E003 */  jr         $ra
/* 4C188 8005B988 3800BD27 */   addiu     $sp, $sp, 0x38
.size DrawALine, . - DrawALine

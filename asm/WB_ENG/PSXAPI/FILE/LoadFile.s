.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel LoadFile
/* 47924 80057124 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 47928 80057128 1400B1AF */  sw         $s1, 0x14($sp)
/* 4792C 8005712C 21888000 */  addu       $s1, $a0, $zero
/* 47930 80057130 0B80043C */  lui        $a0, %hi(file_lastfname)
/* 47934 80057134 38B48424 */  addiu      $a0, $a0, %lo(file_lastfname)
/* 47938 80057138 1800B2AF */  sw         $s2, 0x18($sp)
/* 4793C 8005713C 2190A000 */  addu       $s2, $a1, $zero
/* 47940 80057140 21282002 */  addu       $a1, $s1, $zero
/* 47944 80057144 1C00BFAF */  sw         $ra, 0x1C($sp)
/* 47948 80057148 8FC2010C */  jal        strcpy
/* 4794C 8005714C 1000B0AF */   sw        $s0, 0x10($sp)
/* 47950 80057150 06004016 */  bnez       $s2, .L8005716C
/* 47954 80057154 21804002 */   addu      $s0, $s2, $zero
/* 47958 80057158 B35C010C */  jal        GetSizeOfFile
/* 4795C 8005715C 21202002 */   addu      $a0, $s1, $zero
/* 47960 80057160 2B3F010C */  jal        new_malloc
/* 47964 80057164 21204000 */   addu      $a0, $v0, $zero
/* 47968 80057168 21804000 */  addu       $s0, $v0, $zero
.L8005716C:
/* 4796C 8005716C 21202002 */  addu       $a0, $s1, $zero
/* 47970 80057170 2F5B010C */  jal        CDFile_ReadFileDeviceToBuf
/* 47974 80057174 21280002 */   addu      $a1, $s0, $zero
/* 47978 80057178 21184000 */  addu       $v1, $v0, $zero
/* 4797C 8005717C 02004012 */  beqz       $s2, .L80057188
/* 47980 80057180 21100002 */   addu      $v0, $s0, $zero
/* 47984 80057184 21106000 */  addu       $v0, $v1, $zero
.L80057188:
/* 47988 80057188 1C00BF8F */  lw         $ra, 0x1C($sp)
/* 4798C 8005718C 1800B28F */  lw         $s2, 0x18($sp)
/* 47990 80057190 1400B18F */  lw         $s1, 0x14($sp)
/* 47994 80057194 1000B08F */  lw         $s0, 0x10($sp)
/* 47998 80057198 0800E003 */  jr         $ra
/* 4799C 8005719C 2000BD27 */   addiu     $sp, $sp, 0x20
.size LoadFile, . - LoadFile

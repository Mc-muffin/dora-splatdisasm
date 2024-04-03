.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ForceAnim
/* 29370 80038B70 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 29374 80038B74 1000B0AF */  sw         $s0, 0x10($sp)
/* 29378 80038B78 2180C000 */  addu       $s0, $a2, $zero
/* 2937C 80038B7C 1400BFAF */  sw         $ra, 0x14($sp)
/* 29380 80038B80 140005AE */  sw         $a1, 0x14($s0)
/* 29384 80038B84 28E3000C */  jal        GetSeqNumFrames
/* 29388 80038B88 0C0000AE */   sw        $zero, 0xC($s0)
/* 2938C 80038B8C 1400038E */  lw         $v1, 0x14($s0)
/* 29390 80038B90 0C00048E */  lw         $a0, 0xC($s0)
/* 29394 80038B94 1400BF8F */  lw         $ra, 0x14($sp)
/* 29398 80038B98 00120200 */  sll        $v0, $v0, 8
/* 2939C 80038B9C 1C0002AE */  sw         $v0, 0x1C($s0)
/* 293A0 80038BA0 200000AE */  sw         $zero, 0x20($s0)
/* 293A4 80038BA4 100003AE */  sw         $v1, 0x10($s0)
/* 293A8 80038BA8 080004AE */  sw         $a0, 0x8($s0)
/* 293AC 80038BAC 1000B08F */  lw         $s0, 0x10($sp)
/* 293B0 80038BB0 0800E003 */  jr         $ra
/* 293B4 80038BB4 1800BD27 */   addiu     $sp, $sp, 0x18
.size ForceAnim, . - ForceAnim

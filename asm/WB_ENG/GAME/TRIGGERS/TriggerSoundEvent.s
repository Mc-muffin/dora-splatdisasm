.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel TriggerSoundEvent
/* 30FB0 800407B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 30FB4 800407B4 1400BFAF */  sw         $ra, 0x14($sp)
/* 30FB8 800407B8 1000B0AF */  sw         $s0, 0x10($sp)
/* 30FBC 800407BC 2801908C */  lw         $s0, 0x128($a0)
/* 30FC0 800407C0 00000000 */  nop
/* 30FC4 800407C4 0800038E */  lw         $v1, 0x8($s0)
/* 30FC8 800407C8 00000000 */  nop
/* 30FCC 800407CC 0B006004 */  bltz       $v1, .L800407FC
/* 30FD0 800407D0 00000000 */   nop
/* 30FD4 800407D4 4FC30234 */  ori        $v0, $zero, 0xC34F
/* 30FD8 800407D8 2A104300 */  slt        $v0, $v0, $v1
/* 30FDC 800407DC 04004010 */  beqz       $v0, .L800407F0
/* 30FE0 800407E0 2E000424 */   addiu     $a0, $zero, 0x2E
/* 30FE4 800407E4 A668000C */  jal        SetPlayerWait
/* 30FE8 800407E8 00000000 */   nop
/* 30FEC 800407EC 2E000424 */  addiu      $a0, $zero, 0x2E
.L800407F0:
/* 30FF0 800407F0 0800058E */  lw         $a1, 0x8($s0)
/* 30FF4 800407F4 6F4A010C */  jal        pxm_sendevent
/* 30FF8 800407F8 21300000 */   addu      $a2, $zero, $zero
.L800407FC:
/* 30FFC 800407FC 1400BF8F */  lw         $ra, 0x14($sp)
/* 31000 80040800 1000B08F */  lw         $s0, 0x10($sp)
/* 31004 80040804 0800E003 */  jr         $ra
/* 31008 80040808 1800BD27 */   addiu     $sp, $sp, 0x18
.size TriggerSoundEvent, . - TriggerSoundEvent

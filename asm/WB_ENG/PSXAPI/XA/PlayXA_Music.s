.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PlayXA_Music
/* 4F6C8 8005EEC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4F6CC 8005EECC 21288000 */  addu       $a1, $a0, $zero
/* 4F6D0 8005EED0 0C80073C */  lui        $a3, %hi(XAFiles)
/* 4F6D4 8005EED4 1000B0AF */  sw         $s0, 0x10($sp)
/* 4F6D8 8005EED8 28E8F024 */  addiu      $s0, $a3, %lo(XAFiles)
/* 4F6DC 8005EEDC 01000224 */  addiu      $v0, $zero, 0x1
/* 4F6E0 8005EEE0 0600A328 */  slti       $v1, $a1, 0x6
/* 4F6E4 8005EEE4 1400BFAF */  sw         $ra, 0x14($sp)
/* 4F6E8 8005EEE8 02006014 */  bnez       $v1, .L8005EEF4
/* 4F6EC 8005EEEC 180002AE */   sw        $v0, 0x18($s0)
/* 4F6F0 8005EEF0 21280000 */  addu       $a1, $zero, $zero
.L8005EEF4:
/* 4F6F4 8005EEF4 0880023C */  lui        $v0, %hi(XAMusicTable)
/* 4F6F8 8005EEF8 B4654224 */  addiu      $v0, $v0, %lo(XAMusicTable)
/* 4F6FC 8005EEFC C0180500 */  sll        $v1, $a1, 3
/* 4F700 8005EF00 21286200 */  addu       $a1, $v1, $v0
/* 4F704 8005EF04 21104300 */  addu       $v0, $v0, $v1
/* 4F708 8005EF08 0000A68C */  lw         $a2, 0x0($a1)
/* 4F70C 8005EF0C 0980043C */  lui        $a0, %hi(MusicVolume)
/* 4F710 8005EF10 9C49848C */  lw         $a0, %lo(MusicVolume)($a0)
/* 4F714 8005EF14 0400438C */  lw         $v1, 0x4($v0)
/* 4F718 8005EF18 28E8E6AC */  sw         $a2, %lo(XAFiles)($a3)
/* 4F71C 8005EF1C 1F7B010C */  jal        SetXA_Volume
/* 4F720 8005EF20 040003AE */   sw        $v1, 0x4($s0)
/* 4F724 8005EF24 C47A010C */  jal        PlayXA
/* 4F728 8005EF28 21200002 */   addu      $a0, $s0, $zero
/* 4F72C 8005EF2C 1400BF8F */  lw         $ra, 0x14($sp)
/* 4F730 8005EF30 1000B08F */  lw         $s0, 0x10($sp)
/* 4F734 8005EF34 0800E003 */  jr         $ra
/* 4F738 8005EF38 1800BD27 */   addiu     $sp, $sp, 0x18
.size PlayXA_Music, . - PlayXA_Music

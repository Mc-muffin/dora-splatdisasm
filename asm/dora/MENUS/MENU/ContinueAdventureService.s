.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel ContinueAdventureService
/* 17008 80026808 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 1700C 8002680C 0180043C */  lui        $a0, %hi(D_80011550)
/* 17010 80026810 50158424 */  addiu      $a0, $a0, %lo(D_80011550)
/* 17014 80026814 A0000524 */  addiu      $a1, $zero, 0xA0
/* 17018 80026818 64000624 */  addiu      $a2, $zero, 0x64
/* 1701C 8002681C 01000724 */  addiu      $a3, $zero, 0x1
/* 17020 80026820 2C00BFAF */  sw         $ra, 0x2C($sp)
/* 17024 80026824 7163010C */  jal        TextAddStringC
/* 17028 80026828 2800B0AF */   sw        $s0, 0x28($sp)
/* 1702C 8002682C 21200000 */  addu       $a0, $zero, $zero
/* 17030 80026830 01000524 */  addiu      $a1, $zero, 0x1
/* 17034 80026834 10000624 */  addiu      $a2, $zero, 0x10
/* 17038 80026838 40000724 */  addiu      $a3, $zero, 0x40
/* 1703C 8002683C 0980033C */  lui        $v1, %hi(Trg0)
/* 17040 80026840 30596384 */  lh         $v1, %lo(Trg0)($v1)
/* 17044 80026844 48078227 */  addiu      $v0, $gp, %gp_rel(MainMenuSelection)
/* 17048 80026848 1400A0AF */  sw         $zero, 0x14($sp)
/* 1704C 8002684C 1800A2AF */  sw         $v0, 0x18($sp)
/* 17050 80026850 4649010C */  jal        CheckOption
/* 17054 80026854 1000A3AF */   sw        $v1, 0x10($sp)
/* 17058 80026858 0980033C */  lui        $v1, %hi(Trg0)
/* 1705C 8002685C 30596394 */  lhu        $v1, %lo(Trg0)($v1)
/* 17060 80026860 00000000 */  nop
/* 17064 80026864 00106330 */  andi       $v1, $v1, 0x1000
/* 17068 80026868 1A006010 */  beqz       $v1, .L800268D4
/* 1706C 8002686C 21280000 */   addu      $a1, $zero, $zero
/* 17070 80026870 1A000424 */  addiu      $a0, $zero, 0x1A
/* 17074 80026874 6F4A010C */  jal        pxm_sendevent
/* 17078 80026878 21300000 */   addu      $a2, $zero, $zero
/* 1707C 8002687C 2000A427 */  addiu      $a0, $sp, 0x20
/* 17080 80026880 01000224 */  addiu      $v0, $zero, 0x1
/* 17084 80026884 9C13908F */  lw         $s0, %gp_rel(Menu00)($gp)
/* 17088 80026888 C0020324 */  addiu      $v1, $zero, 0x2C0
/* 1708C 8002688C 480782AF */  sw         $v0, %gp_rel(MainMenuSelection)($gp)
/* 17090 80026890 40010224 */  addiu      $v0, $zero, 0x140
/* 17094 80026894 2400A2A7 */  sh         $v0, 0x24($sp)
/* 17098 80026898 F0000224 */  addiu      $v0, $zero, 0xF0
/* 1709C 8002689C 440780AF */  sw         $zero, %gp_rel(MainMenuState)($gp)
/* 170A0 800268A0 2000A3A7 */  sh         $v1, 0x20($sp)
/* 170A4 800268A4 2200A0A7 */  sh         $zero, 0x22($sp)
/* 170A8 800268A8 2600A2A7 */  sh         $v0, 0x26($sp)
/* 170AC 800268AC E1DB010C */  jal        LoadImage
/* 170B0 800268B0 08020526 */   addiu     $a1, $s0, 0x208
/* 170B4 800268B4 36DB010C */  jal        DrawSync
/* 170B8 800268B8 21200000 */   addu      $a0, $zero, $zero
/* 170BC 800268BC 03000016 */  bnez       $s0, .L800268CC
/* 170C0 800268C0 00000000 */   nop
/* 170C4 800268C4 1C40010C */  jal        new_free
/* 170C8 800268C8 21200000 */   addu      $a0, $zero, $zero
.L800268CC:
/* 170CC 800268CC EBD6010C */  jal        VSync
/* 170D0 800268D0 21200000 */   addu      $a0, $zero, $zero
.L800268D4:
/* 170D4 800268D4 2C00BF8F */  lw         $ra, 0x2C($sp)
/* 170D8 800268D8 2800B08F */  lw         $s0, 0x28($sp)
/* 170DC 800268DC 0800E003 */  jr         $ra
/* 170E0 800268E0 3000BD27 */   addiu     $sp, $sp, 0x30
.size ContinueAdventureService, . - ContinueAdventureService

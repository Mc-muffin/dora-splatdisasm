.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitIsoCamera
/* 57064 80066864 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 57068 80066868 21200000 */  addu       $a0, $zero, $zero
/* 5706C 8006686C 64000524 */  addiu      $a1, $zero, 0x64
/* 57070 80066870 64000624 */  addiu      $a2, $zero, 0x64
/* 57074 80066874 00040724 */  addiu      $a3, $zero, 0x400
/* 57078 80066878 2000BFAF */  sw         $ra, 0x20($sp)
/* 5707C 8006687C 1000A0AF */  sw         $zero, 0x10($sp)
/* 57080 80066880 1400A0AF */  sw         $zero, 0x14($sp)
/* 57084 80066884 61EC000C */  jal        InitCamera
/* 57088 80066888 1800A0AF */   sw        $zero, 0x18($sp)
/* 5708C 8006688C DDE9000C */  jal        CameraInit
/* 57090 80066890 00000000 */   nop
/* 57094 80066894 2000BF8F */  lw         $ra, 0x20($sp)
/* 57098 80066898 00000000 */  nop
/* 5709C 8006689C 0800E003 */  jr         $ra
/* 570A0 800668A0 2800BD27 */   addiu     $sp, $sp, 0x28
.size InitIsoCamera, . - InitIsoCamera

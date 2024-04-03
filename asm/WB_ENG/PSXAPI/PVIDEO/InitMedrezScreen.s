.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitMedrezScreen
/* 4BCB8 8005B4B8 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* 4BCBC 8005B4BC 0800E003 */  jr         $ra
/* 4BCC0 8005B4C0 3000BD27 */   addiu     $sp, $sp, 0x30
.size InitMedrezScreen, . - InitMedrezScreen

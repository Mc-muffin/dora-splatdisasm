.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel DeAllocIntroMovieRAM
/* 40244 8004FA44 2C0F848F */  lw         $a0, %gp_rel(Ring_Buff)($gp)
/* 40248 8004FA48 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 4024C 8004FA4C 03008010 */  beqz       $a0, .L8004FA5C
/* 40250 8004FA50 1000BFAF */   sw        $ra, 0x10($sp)
/* 40254 8004FA54 1C40010C */  jal        new_free
/* 40258 8004FA58 00000000 */   nop
.L8004FA5C:
/* 4025C 8004FA5C 1000BF8F */  lw         $ra, 0x10($sp)
/* 40260 8004FA60 00000000 */  nop
/* 40264 8004FA64 0800E003 */  jr         $ra
/* 40268 8004FA68 1800BD27 */   addiu     $sp, $sp, 0x18
.size DeAllocIntroMovieRAM, . - DeAllocIntroMovieRAM

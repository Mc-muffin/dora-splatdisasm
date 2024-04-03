.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel CheckEndETSlide
/* A834 8001A034 5C00828F */  lw         $v0, %gp_rel(SlideFlag)($gp)
/* A838 8001A038 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A83C 8001A03C 1000B0AF */  sw         $s0, 0x10($sp)
/* A840 8001A040 21808000 */  addu       $s0, $a0, $zero
/* A844 8001A044 0A004010 */  beqz       $v0, .L8001A070
/* A848 8001A048 1400BFAF */   sw        $ra, 0x14($sp)
/* A84C 8001A04C 25000424 */  addiu      $a0, $zero, 0x25
/* A850 8001A050 01000524 */  addiu      $a1, $zero, 0x1
/* A854 8001A054 5C0080AF */  sw         $zero, %gp_rel(SlideFlag)($gp)
/* A858 8001A058 6F4A010C */  jal        pxm_sendevent
/* A85C 8001A05C 21300000 */   addu      $a2, $zero, $zero
/* A860 8001A060 5401038E */  lw         $v1, 0x154($s0)
/* A864 8001A064 0080023C */  lui        $v0, (0x80000000 >> 16)
/* A868 8001A068 25186200 */  or         $v1, $v1, $v0
/* A86C 8001A06C 540103AE */  sw         $v1, 0x154($s0)
.L8001A070:
/* A870 8001A070 1400BF8F */  lw         $ra, 0x14($sp)
/* A874 8001A074 1000B08F */  lw         $s0, 0x10($sp)
/* A878 8001A078 0800E003 */  jr         $ra
/* A87C 8001A07C 1800BD27 */   addiu     $sp, $sp, 0x18
.size CheckEndETSlide, . - CheckEndETSlide

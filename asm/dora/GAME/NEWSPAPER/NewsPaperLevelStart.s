.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel NewsPaperLevelStart
/* 14F34 80024734 E806828F */  lw         $v0, %gp_rel(PaperScaleMid)($gp)
/* 14F38 80024738 78FEBD27 */  addiu      $sp, $sp, -0x188
/* 14F3C 8002473C D00680AF */  sw         $zero, %gp_rel(NewsPaperPauseFlag)($gp)
/* 14F40 80024740 D80680AF */  sw         $zero, %gp_rel(DrawScreenGrabFlag)($gp)
/* 14F44 80024744 FC0680AF */  sw         $zero, %gp_rel(PaperState)($gp)
/* 14F48 80024748 F40682AF */  sw         $v0, %gp_rel(ScalePaper)($gp)
/* 14F4C 8002474C 0800E003 */  jr         $ra
/* 14F50 80024750 8801BD27 */   addiu     $sp, $sp, 0x188
.size NewsPaperLevelStart, . - NewsPaperLevelStart

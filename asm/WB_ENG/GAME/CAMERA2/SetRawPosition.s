.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetRawPosition
/* 2C084 8003B884 0A80033C */  lui        $v1, %hi(GeomEnv)
/* 2C088 8003B888 9014828F */  lw         $v0, %gp_rel(currentCamera)($gp)
/* 2C08C 8003B88C 40B16324 */  addiu      $v1, $v1, %lo(GeomEnv)
/* 2C090 8003B890 080064AC */  sw         $a0, 0x8($v1)
/* 2C094 8003B894 0C0065AC */  sw         $a1, 0xC($v1)
/* 2C098 8003B898 100066AC */  sw         $a2, 0x10($v1)
/* 2C09C 8003B89C 200044AC */  sw         $a0, 0x20($v0)
/* 2C0A0 8003B8A0 240045AC */  sw         $a1, 0x24($v0)
/* 2C0A4 8003B8A4 280046AC */  sw         $a2, 0x28($v0)
/* 2C0A8 8003B8A8 2C0044AC */  sw         $a0, 0x2C($v0)
/* 2C0AC 8003B8AC 300045AC */  sw         $a1, 0x30($v0)
/* 2C0B0 8003B8B0 0800E003 */  jr         $ra
/* 2C0B4 8003B8B4 340046AC */   sw        $a2, 0x34($v0)
.size SetRawPosition, . - SetRawPosition

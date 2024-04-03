.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel InitMeshIDTable
/* C4D4 8001BCD4 0800E003 */  jr         $ra
/* C4D8 8001BCD8 00000000 */   nop
.size InitMeshIDTable, . - InitMeshIDTable

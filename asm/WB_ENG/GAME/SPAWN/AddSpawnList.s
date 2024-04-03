.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel AddSpawnList
/* 33CC0 800434C0 A00C838F */  lw         $v1, %gp_rel(NumSpawnedActors)($gp)
/* 33CC4 800434C4 00000000 */  nop
/* 33CC8 800434C8 01006224 */  addiu      $v0, $v1, 0x1
/* 33CCC 800434CC A00C82AF */  sw         $v0, %gp_rel(NumSpawnedActors)($gp)
/* 33CD0 800434D0 40100300 */  sll        $v0, $v1, 1
/* 33CD4 800434D4 21104300 */  addu       $v0, $v0, $v1
/* 33CD8 800434D8 00110200 */  sll        $v0, $v0, 4
/* 33CDC 800434DC 21104300 */  addu       $v0, $v0, $v1
/* 33CE0 800434E0 C0100200 */  sll        $v0, $v0, 3
/* 33CE4 800434E4 0A80033C */  lui        $v1, %hi(SpawnServiceList)
/* 33CE8 800434E8 B8C06324 */  addiu      $v1, $v1, %lo(SpawnServiceList)
/* 33CEC 800434EC 0800E003 */  jr         $ra
/* 33CF0 800434F0 21104300 */   addu      $v0, $v0, $v1
.size AddSpawnList, . - AddSpawnList

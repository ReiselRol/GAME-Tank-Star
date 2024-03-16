if ((global.Wins[0] + global.Wins[1]) % (Match_TotalMatchs - 1) == 0) {
    // Cambiar el equipo defensor
    if (global.Defenders == 0) {
        global.Defenders = 1;
    } else {
        global.Defenders = 0;
    }
    // Actualizar el equipo que comenzó defendiendo
    global.OldDefenders = global.Defenders;
}
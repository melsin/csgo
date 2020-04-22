#!/bin/bash

${STEAMCMDDIR}/steamcmd.sh +login anonymous +force_install_dir ${STEAMAPPDIR} +app_update ${STEAMAPPID} +quit

${STEAMAPPDIR}/srcds_run -game csgo -console -autoupdate -steam_dir ${STEAMCMDDIR} -steamcmd_script ${STEAMAPPDIR}/csgo_update.txt -usercon +fps_max $SRCDS_FPSMAX \
			-tickrate $SRCDS_TICKRATE -maxplayers_override $SRCDS_MAXPLAYERS +game_type $SRCDS_GAMETYPE +game_mode $SRCDS_GAMEMODE \
			+sv_setsteamaccount $SRCDS_TOKEN $SRCDS_CMD

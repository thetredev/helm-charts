{{- define "steamcmd.image" -}}
{{ $games := dict "cs" "hlds" "czero" "hlds" "dmc" "hlds" "dod" "hlds" "hlmp" "hlds" "op4" "hlds" "tfc" "hlds" "bms" "source2" "cs2" "source2" "css" "srcds" "dods" "srcds" "gm" "srcds" "hl2mp" "srcds" "l4d" "srcds" "l4d2" "srcds" }}
{{- get $games .Values.deployment.game -}}
{{- end -}}

{{- define "steamcmd.game" -}}
{{ $games := dict "cs" "cstrike" "czero" "czero" "hlmp" "valve" "op4" "gearbox" "css" "cstrike" "dods" "dod" "gm" "garrysmod" "l4d" "left4dead" "l4d2" "left4dead2" }}
{{ if hasKey $games .Values.deployment.game }}
{{- get $games .Values.deployment.game -}}
{{ else }}
{{- .Values.deployment.game -}}
{{ end }}
{{- end -}}

{{- define "steamcmd.map" -}}
{{ $games := dict "cs" "de_dust2" "czero" "de_dust2_cz" "dmc" "dmc_dm2" "dod" "dod_donner" "hlmp" "c1a1" "op4" "op4_demise" "tfc" "2fort" "bms" "dm_bounce" "cs2" "de_dust2" "css" "de_dust2" "dods" "dod_palermo" "gm" "gm_construct" "hl2mp" "dm_lockdown" "l4d" "l4d_hospital01_apartment" "l4d2" "c2m1_highway" }}
{{- get $games .Values.deployment.game -}}
{{- end -}}

{{- define "steamcmd.appid" -}}
{{ $appids := dict "bms" "346680" "cs2" "730" "css" "232330" "dods" "232290" "gm" "4020" "hl2mp" "232370" "l4d" "510" "l4d2" "222860" }}
{{ if hasKey $appids .Values.deployment.game }}
{{- get $appids .Values.deployment.game -}}
{{ else }}
{{- print "90" -}}
{{ end }}
{{- end -}}

{{- define "steamcmd.app-config" -}}
{{ $mods := dict "czero" "czero" "dod" "dod" "op4" "gearbox" "tfc" "tfc" }}
{{ if hasKey $mods .Values.deployment.game }}
{{- printf "+app_set_config 90 mod %s" (get $mods .Values.deployment.game) -}}
{{ else }}
{{- "" -}}
{{ end }}
{{- end -}}

{{- define "steamcmd.maxplayers" -}}
{{ if eq .Values.deployment.game "cs2" }}
{{- "-maxplayer" -}}
{{ else }}
{{- "+maxplayers" -}}
{{ end }}
{{- end -}}

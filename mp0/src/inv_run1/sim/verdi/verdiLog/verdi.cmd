simSetSimulator "-vcssv" -exec \
           "/home/maxma2/Documents/Coursework/ece425/mp0/src/inv_run1/sim/sim/tb" \
           -args
debImport "-dbdir" \
          "/home/maxma2/Documents/Coursework/ece425/mp0/src/inv_run1/sim/sim/tb.daidir"
debLoadSimResult \
           /home/maxma2/Documents/Coursework/ece425/mp0/src/inv_run1/sim/sim/dump.fsdb
wvCreateWindow
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "Z" -line 4 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "A" -line 4 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "A" -line 4 -pos 1 -win $_nTrace1
srcSelect -signal "Z" -line 4 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 1.279021 -snap {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
srcDeselectAll -win $_nTrace1
debReload
debExit

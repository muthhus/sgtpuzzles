# -*- makefile -*-

TOWERS_LATIN_EXTRA = tree234 maxflow
TOWERS_EXTRA = latin TOWERS_LATIN_EXTRA

towers    : [X] GTK COMMON towers TOWERS_EXTRA towers-icon|no-icon

towers    : [G] WINDOWS COMMON towers TOWERS_EXTRA towers.res|noicon.res

towerssolver : [U] towers[STANDALONE_SOLVER] latin[STANDALONE_SOLVER] TOWERS_LATIN_EXTRA STANDALONE
towerssolver : [C] towers[STANDALONE_SOLVER] latin[STANDALONE_SOLVER] TOWERS_LATIN_EXTRA STANDALONE

ALL += towers[COMBINED] TOWERS_EXTRA

!begin gtk
GAMES += towers
!end

!begin >list.c
    A(towers) \
!end

!begin >wingames.lst
towers.exe:Towers
!end

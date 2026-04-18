crashbackups stop
drc off
snap internal

load tt_um_tetrahedral_oscilator -dereference
cellname rename tt_um_tetrahedral_oscilator tt_um_tetrahedral_oscillator
select top cell
expand

gds write ../gds/tt_um_tetrahedral_oscillator.gds
lef write ../lef/tt_um_tetrahedral_oscillator.lef -pinonly
save tt_um_tetrahedral_oscillator.mag

quit

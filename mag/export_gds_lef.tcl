crashbackups stop
drc off
snap internal
load tt_um_tetrahedral_oscillator -dereference
select top cell
expand
gds write ../gds/tt_um_tetrahedral_oscillator.gds
lef write ../lef/tt_um_tetrahedral_oscillator.lef -pinonly
quit

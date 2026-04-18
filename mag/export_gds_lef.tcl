crashbackups stop
drc off
snap internal
load tt_um_tetrahedral_oscilator -dereference
select top cell
expand
gds write ../gds/tt_um_tetrahedral_oscilator.gds
lef write ../lef/tt_um_tetrahedral_oscilator.lef -pinonly
quit

crashbackups stop
drc off
snap internal

load tt_um_tetrahedral_oscilator -dereference
cellname rename tt_um_tetrahedral_oscilator tt_um_tetrahedral_oscillator
select top cell
expand

extract do local
extract all

ext2spice lvs
ext2spice cthresh 0
ext2spice rthresh 0
ext2spice -o ../spice/tt_um_tetrahedral_oscillator_pex.spice

quit

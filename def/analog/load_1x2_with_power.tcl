# Load the official Tiny Tapeout 1x2 analog DEF and draw the official
# power stripes automatically.

crashbackups stop
drc off
snap internal

set SCRIPT_DIR [file dirname [file normalize [info script]]]
set TEMPLATE_FILE [file join $SCRIPT_DIR tt_analog_1x2.def]
set POWER_STRIPE_WIDTH 2um

def read $TEMPLATE_FILE

proc draw_power_stripe {name x use} {
    global POWER_STRIPE_WIDTH
    box $x 5um $x 220.76um
    box width $POWER_STRIPE_WIDTH
    paint met4
    label $name FreeSans 0.25u -met4
    port make
    port use $use
    port class bidirectional
    port connections n s e w
}

draw_power_stripe VDPWR 1um power
draw_power_stripe VGND 4um ground

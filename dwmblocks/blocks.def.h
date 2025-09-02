static const Block blocks[] = {
    /*Icon*/ /*Command*/ /*Update Interval*/ /*Update Signal*/
    //{"", "~/.config/dwmblocks/scripts/memory.sh", 10, 0},
    {"", "~/.config/dwmblocks/scripts/mic.sh", 1, 0},
    {"", "~/.config/dwmblocks/scripts/volume.sh", 1, 4},
    {"", "~/.config/dwmblocks/scripts/wifi.sh", 5, 2},
    {"", "brightnessctl -m | awk -F, '{print $4}'", 1, 0},
    {"", "echo \"$(cat /sys/class/power_supply/BAT0/capacity)%\"", 1, 0},
    {"", "~/.config/dwmblocks/scripts/time.sh", 1, 0},

};

static char delim[] = " | ";
static unsigned int delimLen = 5;

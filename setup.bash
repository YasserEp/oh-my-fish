#@Cretor : Yasser
if ! command -v fish > /dev/null; then
echo install fish !
exit 0
fi
if ! command -v figlet > /dev/null; then
echo install fish !
exit 0
fi
chsh -s fish

hex_to_rgb() {
    text="$1"
    hex="$2"
    r=$(printf "%d" 0x${hex:0:2})
    g=$(printf "%d" 0x${hex:2:2})
    b=$(printf "%d" 0x${hex:4:2})
    echo -e "\e[38;2;$r;$g;$b;m$text█████\e[0m"
}

colors=(
"black 000000"
 "silver C0C0C0"
 "gray 808080"
 "white FFFFFF"
 "maroon 800000"
 "red FF0000"
 "purple 800080"
 "fuchsia FF00FF"
 "green 008000"
 "lime 00FF00"
 "olive 808000"
 "yellow FFFF00"
 "navy 000080"
 "blue 0000FF"
 "teal 008080"
 "aqua 00FFFF"
 "aliceblue F0F8FF"
 "antiquewhite FAEBD7"
 "aqua 00FFFF"
 "aquamarine 7FFFD4"
 "azure F0FFFF"
 "beige F5F5DC"
 "bisque FFE4C4"
 "black 000000"
 "blanchedalmond FFEBCD"
 "blue 0000FF"
 "blueviolet 8A2BE2"
 "brown A52A2A"
 "burlywood DEB887"
 "cadetblue 5F9EA0"
 "chartreuse 7FFF00"
 "chocolate D2691E"
 "coral FF7F50"
 "cornflowerblue 6495ED"
 "cornsilk FFF8DC"
 "crimson DC143C"
 "cyan 00FFFF"
 "darkblue 00008B"
 "darkcyan 008B8B"
 "darkgoldenrod B8860B"
 "darkgray A9A9A9"
 "darkgreen 006400"
 "darkgrey A9A9A9"
 "darkkhaki BDB76B"
 "darkmagenta 8B008B"
 "darkolivegreen 556B2F"
 "darkorange FF8C00"
 "darkorchid 9932CC"
 "darkred 8B0000"
 "darksalmon E9967A"
 "darkseagreen 8FBC8F"
 "darkslateblue 483D8B"
 "darkslategray 2F4F4F"
 "darkslategrey 2F4F4F"
 "darkturquoise 00CED1"
 "darkviolet 9400D3"
 "deeppink FF1493"
 "deepskyblue 00BFFF"
 "dimgray 696969"
 "dimgrey 696969"
 "dodgerblue 1E90FF"
 "firebrick B22222"
 "floralwhite FFFAF0"
 "forestgreen 228B22"
 "fuchsia FF00FF"
 "gainsboro DCDCDC"
 "ghostwhite F8F8FF"
 "gold FFD700"
 "goldenrod DAA520"
 "gray 808080"
 "green 008000"
 "greenyellow ADFF2F"
 "grey 808080"
 "honeydew F0FFF0"
 "hotpink FF69B4"
 "indianred CD5C5C"
 "indigo 4B0082"
 "ivory FFFFF0"
 "khaki F0E68C"
 "lavender E6E6FA"
 "lavenderblush FFF0F5"
 "lawngreen 7CFC00"
 "lemonchiffon FFFACD"
 "lightblue ADD8E6"
 "lightcoral F08080"
 "lightcyan E0FFFF"
 "lightgoldenrodyellow FAFAD2"
 "lightgray D3D3D3"
 "lightgreen 90EE90"
 "lightgrey D3D3D3"
 "lightpink FFB6C1"
 "lightsalmon FFA07A"
 "lightseagreen 20B2AA"
 "lightskyblue 87CEFA"
 "lightslategray 778899"
 "lightslategrey 778899"
 "lightsteelblue B0C4DE"
 "lightyellow FFFFE0"
 "lime 00FF00"
 "limegreen 32CD32"
 "linen FAF0E6"
 "magenta FF00FF"
 "maroon 800000"
 "mediumaquamarine 66CDA"
 "mediumblue 0000CD"
 "mediumorchid BA55D3"
 "mediumpurple 9370DB"
 "mediumseagreen 3cb371"
 "mediumslateblue 7b68ee"
 "mediumspringgreen 00fa9a"
 "mediumturquoise 48d1cc"
 "mediumvioletred c71585"
 "midnightblue 191970"
 "mintcream f5fffa"
 "mistyrose ffe4e1"
 "moccasin ffe4b5"
 "navajowhite ffdead"
 "navy 000080"
 "oldlace fdf5e6"
 "olive 808000"
 "olivedrab 6b8e23"
 "orange ffa500"
 "orangered ff4500"
 "orchid da70d6"
 "palegoldenrod eee8aa"
 "palegreen 98fb98"
 "paleturquoise afeeee"
 "palevioletred db7093"
 "papayawhip ffefd5"
 "peachpuff ffdab9"
 "peru cd853f"
 "pink ffc0cb"
 "plum dda0dd"
 "powderblue b0e0e6"
 "purple 800080"
 "red ff0000"
 "rosybrown bc8f8f"
 "royalblue 4169e1"
 "saddlebrown 8b4513"
 "salmon fa8072"
 "sandybrown f4a460"
 "seagreen 2e8b57"
 "seashell fff5ee"
 "sienna a0522d"
 "silver c0c0c0"
 "skyblue 87ceeb"
 "slateblue 6a5acd"
 "slategray 708090"
 "slategrey 708090"
 "snow fffafa"
 "springgreen 00ff7f"
 "steelblue 4682b4"
 "tan d2b48c"
 "teal 008080"
 "thistle d8bfd8"
 "tomato ff6347"
 "turquoise 40e0d0"
 "violet ee82ee"
 "wheat f5deb3"
 "white ffffff"
 "whitesmoke f5f5f5"
 "yellow ffff00"
 "yellowgreen 9acd32"
 "Default ffffff"
 "Custom ffffff"
)
for i in "${!colors[@]}"; do
    index=$((i + 1))
    color_name=$(echo "${colors[$i]}" | cut -d ' ' -f 1)
    hex_code=$(echo "${colors[$i]}" | cut -d ' ' -f 2)
    hex_to_rgb "[$index] $color_name" "$hex_code"
done

echo -e "\e[0mChange Background"

read -p "Enter a number: " num

selected_color="${colors[$((num - 1))]}"
hex_code=$(echo "$selected_color" | cut -d ' ' -f 2)
sed -i "s/background=.*/background=#$hex_code/" $HOME/Root/.config/colors.properties
 
if [ $num == 165 ]; then
read -p "Enter a Hex Color Code : " hexcolorcode
sed -i "s/background=.*/background=#$hexcolorcode/" $HOME/Root/.config/colors.properties
    fi
if [ $num == 164 ]; then
echo -e ""
fi
read -p "Enter Your Name > " jdksixiejjcoke
sed -i "s/\(set 269492924898 \)\"[^\"]*\"/\1\"$jdksixiejjcoke\"/" $HOME/Root/.config/config.fish
figlet -f $HOME/Root/.config/font.flf -c -w $(tput cols) $jdksixiejjcoke

read -p "Enter a number: " num

selected_color="${colors[$((num - 1))]}"
color_name=$(echo "$selected_color" | cut -d ' ' -f 1)
hex_code=$(echo "$selected_color" | cut -d ' ' -f 2)

r=$(printf "%d" 0x${hex_code:0:2})
    g=$(printf "%d" 0x${hex_code:2:2})
    b=$(printf "%d" 0x${hex_code:4:2})
sed -i "s/\(set 1938382993 \)\"[^\"]*\"/\1\"\\\e[38;2;$r;$g;$b;m\"/" $HOME/Root/.config/config.fish
    echo -e "\e[38;2;$r;$g;$b;m$(figlet -f $HOME/Root/.config/font.flf -c -w $(tput cols) $jdksixiejjcoke)"
    
if [ $num == 165 ]; then
read -p "Enter a Hex Color Code : " hexcolorcode
r=$(printf "%d" 0x${hexcolorcode:0:2})
    g=$(printf "%d" 0x${hexcolorcode:2:2})
    b=$(printf "%d" 0x${hexcolorcode:4:2})
sed -i "s/\(set 1938382993 \)\"[^\"]*\"/\1\"\\\e[38;2;$r;$g;$b;m\"/" $HOME/Root/.config/config.fish
    echo -e "\e[38;2;$r;$g;$b;m$(figlet -f $HOME/Root/.config/font.flf $jdksixiejjcoke)\e[0m"
fi
if [ $num == 164 ]; then
echo -e ""
fi
echo -e "\e[0m[1] \e[92m$(whoami)@\e[0m$(hostname)"
echo -e "[2] \e[92m$(whoami)@\e[0m$jdksixiejjcoke"
read -p "Username or hostname ? : " pwjdio
if [ $pwjdio == "1" ]; then
heidw=$(hostname) 
sed -i "s/\(set name_or_hostname \)\"[^\"]*\"/\1\"2\"/" $HOME/Root/.config/config.fish
fi
if [ $pwjdio == "2" ]; then
heidw=$jdksixiejjcoke
sed -i "s/\(set name_or_hostname \)\"[^\"]*\"/\1\"1\"/" $HOME/Root/.config/config.fish
fi

echo -e "\e[92m$(whoami)@\e[38;2;$r;$g;$b;m$heidw\e[0m"
read -p "Chnage Color ^ Enter A Number : " bejix
selected_color="${colors[$((bejix - 1))]}"
color_name=$(echo "$selected_color" | cut -d ' ' -f 1)
hex_code=$(echo "$selected_color" | cut -d ' ' -f 2)

r=$(printf "%d" 0x${hex_code:0:2})
    g=$(printf "%d" 0x${hex_code:2:2})
    b=$(printf "%d" 0x${hex_code:4:2})
sed -i "s/\(set 8628919 \)\"[^\"]*\"/\1\"\\\e[38;2;$r;$g;$b;m\"/" $HOME/Root/.config/config.fish
echo -e "\e[0m[1] \e[92m$(whoami)@\e[38;2;$r;$g;$b;m$heidw"
echo -e "\e[0m[2] \e[92m\e[1m$(whoami)@\e[1m\e[38;2;$r;$g;$b;m$heidw"
echo -e "\e[0m"
read -p "Normal or Bold ? : " bejeid
if [ $bejeid == "1" ]; then
hbcis3="\e[0m"
sed -i "s/\(set 53782 \)\"[^\"]*\"/\1\"$hbcis3\"/" $HOME/Root/.config/config.fish
fi
if [ $bejeid == "2" ]; then
hbcis3="\e[1m"
sed -i "s/\(set 53782 \)\"[^\"]*\"/\1\"$hbcis3\"/" $HOME/Root/.config/config.fish
fi
echo -e "[0] $hbcis3\e[92m$(whoami)\e[0m@\e[38;2;$r;$g;$b;m$hbcis3$heidw\e[0m \e[92m~\e[0m\e[0m\$ "
echo -e "[1] $hbcis3\e[92m$(whoami)\e[0m@\e[38;2;$r;$g;$b;m$hbcis3$heidw\e[0m≈{\e[92m~\e[0m}—\e[0m\$ "
echo -e "[2] ╔$hbcis3\e[92m$(whoami)\e[0m@\e[38;2;$r;$g;$b;m$hbcis3$heidw\e[0m≈{\e[92m~\e[0m}—\e[94m$(date | cut -d" " -f4)\e[0m╗\n    ╚\$ "
echo -e "[3] ╔═$hbcis3\e[92m$(whoami)\e[0m@\e[38;2;$r;$g;$b;m$hbcis3$heidw\e[0m≈{\e[92m~\e[0m}—\e[94m$(date | cut -d" " -f4)\e[0m═╗\n    ╚═\$ "
echo -e "[4] ┌$hbcis3\e[92m$(whoami)\e[0m@\e[38;2;$r;$g;$b;m$hbcis3$heidw\e[0m≈{\e[92m~\e[0m}—\e[94m$(date | cut -d" " -f4)\e[0m┐\n    └\$ "
echo -e "[5] ┌─$hbcis3\e[92m$(whoami)\e[0m@\e[38;2;$r;$g;$b;m$hbcis3$heidw\e[0m≈{\e[92m~\e[0m}—\e[94m$(date | cut -d" " -f4)\e[0m─┐\n    └─\$ "
echo -e "[6] ╭$hbcis3\e[92m$(whoami)\e[0m@\e[38;2;$r;$g;$b;m$hbcis3$heidw\e[0m≈{\e[92m~\e[0m}—\e[94m$(date | cut -d" " -f4)\e[0m╮\n    ╰\$ "
echo -e "[7] ╭─$hbcis3\e[92m$(whoami)\e[0m@\e[38;2;$r;$g;$b;m$hbcis3$heidw\e[0m≈{\e[92m~\e[0m}—\e[94m$(date | cut -d" " -f4)\e[0m─╮\n    ╰─\$ "
echo -e "[8] ┌─($hbcis3\e[92m$(whoami)\e[0m@\e[38;2;$r;$g;$b;m$hbcis3$heidw)\e[0m—[\e[92m~\e[0m]\e[0m\n    └─\$ "
read -p "Enter Number: " Iwkjziakis
sed -i "s/\(set command_line_style \)\"[^\"]*\"/\1\"$Iwkjziakis\"/" $HOME/Root/.config/config.fish
echo "[0]"
selected_color="${colors[$((num - 1))]}"
color_name=$(echo "$selected_color" | cut -d ' ' -f 1)
hex_code=$(echo "$selected_color" | cut -d ' ' -f 2)

r=$(printf "%d" 0x${hex_code:0:2})
    g=$(printf "%d" 0x${hex_code:2:2})
    b=$(printf "%d" 0x${hex_code:4:2})
echo -e "\e[38;2;$r;$g;$b;m$(figlet -f $HOME/Root/.config/font.flf -c -w $(tput cols) $jdksixiejjcoke)\e[0m"
echo "[1]"
bash $HOME/Root/.config/title.bash -1 $jdksixiejjcoke "\e[38;2;$r;$g;$b;m"
echo "[2]"
bash $HOME/Root/.config/title.bash -2 $jdksixiejjcoke "\e[38;2;$r;$g;$b;m"
echo "[3]"
bash $HOME/Root/.config/title.bash -3 $jdksixiejjcoke "\e[38;2;$r;$g;$b;m"
read -p "Enter Number > " lwkdiiw
if [ $lwkdiiw == "0" ]; then
sed -i "s/\(set 267383 \)\"[^\"]*\"/\1\"$lwkdiiw\"/" $HOME/Root/.config/config.fish
fi
if [ $lwkdiiw == "1" ]; then
sed -i "s/\(set 267383 \)\"[^\"]*\"/\1\"$lwkdiiw\"/" $HOME/Root/.config/config.fish
fi
if [ $lwkdiiw == "2" ]; then
sed -i "s/\(set 267383 \)\"[^\"]*\"/\1\"$lwkdiiw\"/" $HOME/Root/.config/config.fish
fi
if [ $lwkdiiw == "3" ]; then
sed -i "s/\(set 267383 \)\"[^\"]*\"/\1\"$lwkdiiw\"/" $HOME/Root/.config/config.fish
fi
cp $HOME/Root/.config/config.fish $HOME/.config/fish/
cp $HOME/Root/.config/colors.properties $HOME/.termux/

cp $HOME/Root/.config/font.ttf $HOME/.termux/
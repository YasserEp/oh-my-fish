if status is-interactive
    clear
    set 269492924898 "user"
    set 267383 "1"
    set 4513053 "1"
    set 1938382993 "\e[38;2;0;255;0;m"
    set 8628919 "\e[38;2;0;255;0;m"
    set command_line_style "2"
    set name_or_hostname "2"
    set fish_color_autosuggestion '1350' 'brblack'
    set fish_color_command 'brgreen' 'bold'
    set fish_color_comment 'brpurple'
    set fish_color_cwd 'brgreen'
    set fish_color_cwd_root 'brred'
    set fish_color_end 'brgreen'
    set fish_color_error 'brred'
    set fish_color_escape 'brcyan'
    set fish_color_history_current '--bold'
    set fish_color_host 'normal'
    set fish_color_host_remote 'bryellow'
    set fish_color_normal 'normal'
    set fish_color_operator 'brcyan'
    set fish_color_param 'brblue'
    set fish_color_quote 'bryellow'
    set fish_color_redirection 'brcyan' '--bold'
    set fish_color_search_match 'bryellow' '--background=brblack'
    set fish_color_selection 'white' '--bold' '--background=brblack'
    set fish_color_status 'brred'
    set fish_color_user 'brgreen'
if [ "$267383" -eq "0" ]
echo -e "$1938382993$(figlet -f $HOME/Root/.config/font.flf -c -w $(tput cols) $269492924898)"
end
if [ "$267383" -eq "1" ]
bash $HOME/Root/.config/title.bash -1 $269492924898 $1938382993
end
if [ "$267383" -eq "2" ]
bash $HOME/Root/.config/title.bash -2 $269492924898 $1938382993
end
if [ "$267383" -eq "3" ]
bash $HOME/Root/.config/title.bash -3 $269492924898 $1938382993
end

    set fish_greeting ""
    echo -e "\e[0m$(uname -s)@$(uname -o)"
    echo -e "\e[0m$(whoami)@$(hostname)"
    if [ "$name_or_hostname" -eq "1" ]
    set iwhdixow $269492924898
    end
if [ "$name_or_hostname" -eq "2" ]
    set iwhdixow (hostname)
    end
    if [ "$4513053" -eq "0" ]
    set font_type "\e[0m"
    end
if [ "$4513053" -eq "1" ]
    set font_type "\e[1m"
    end
    if [ "$(whoami)" != "root" ]
    set user_color "\e[92m"
    set prompt_user "\$"
    else
    set user_color "\e[91m"
    set prompt_user "\#"
    end

    function fish_prompt
         if [ "$command_line_style" -eq "0" ]
                    echo -e "$font_type$user_color$(whoami)\e[1;0m$font_type@$8628919$iwhdixow\e[0m $font_type$user_color$(echo -n (prompt_pwd))\e[0m\e[0m$prompt_user "
        end
        if [ "$command_line_style" -eq "1" ]
                    echo -e "$font_type$user_color$(whoami)\e[1;0m$font_type@$8628919$iwhdixow\e[0m≈{$font_type$user_color$(echo -n (prompt_pwd))\e[0m}—\e[0m$prompt_user "
        end

        if [ "$command_line_style" -eq "2" ]
     echo -e "╔$font_type$user_color$(whoami)\e[1;0m$font_type@$8628919$iwhdixow\e[0m≈{$font_type$user_color$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m╗\n╚$prompt_user "
        end
        if [ "$command_line_style" -eq "3" ]
                    echo -e "╔═$font_type$user_color$(whoami)\e[1;0m$font_type@$8628919$iwhdixow\e[0m≈{$font_type$user_color$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m═╗\n╚═$prompt_user "
        end
     if [ "$command_line_style" -eq "4" ]
                    echo -e "┌─$font_type$user_color$(whoami)\e[1;0m$font_type@$8628919$iwhdixow\e[0m≈{$font_type$user_color$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m─┐\n└─$prompt_user "
                    end
     if [ "$command_line_style" -eq "5" ]
                    echo -e "┌$font_type$user_color$(whoami)\e[1;0m$font_type@$8628919$iwhdixow\e[0m≈{$font_type$user_color$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m┐\n└$prompt_user "
                    end
     if [ "$command_line_style" -eq "6" ]
                    echo -e "╭─$font_type$user_color$(whoami)\e[1;0m$font_type@$8628919$iwhdixow\e[0m≈{$font_type$user_color$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m─╮\n╰─$prompt_user "
        end
     if [ "$command_line_style" -eq "7" ]
                    echo -e "╭$font_type$user_color$(whoami)\e[1;0m$font_type@$8628919$iwhdixow\e[0m≈{$font_type$user_color$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m╮\n╰$prompt_user "
    end
    if [ "$command_line_style" -eq "8" ]
                    echo -e "┌─($font_type$user_color$(whoami)\e[1;0m$font_type@$8628919$iwhdixow\e[0m)—[$font_type$user_color$(echo -n (prompt_pwd))\e[0m]\e[0m\n└─\$ "
    end
end
end
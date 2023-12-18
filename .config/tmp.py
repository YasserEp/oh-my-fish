if status is-interactive
    clear
    set 269492924898 "user"
    set 267383 "1"
    set 53782 "1"
    set 1938382993 "\e[38;2;0;255;0;m"
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
    if [ "$(whoami)" != "root" ]
    set user_color "\e[92m"
    end
if [ "$(whoami)" == "root" ]
    set user_color "\e[91m"
    end

    function fish_prompt
        if [ "$command_line_style" -eq "1" ]
            if [ "$name_or_hostname" -eq "1" ]
                if [ "$(whoami)" != "root" ]
                    echo -e "\e[92m$(whoami)\e[1;0m@$269492924898\e[0m$zjgwndo≈{\e[92m$(echo -n (prompt_pwd))\e[0m}—\e[0m\$ "
                else
                    echo -e "\e[91m$(whoami)\e[1;0m@$269492924898\e[0m$zjgwndo≈{\e[91m$(echo -n (prompt_pwd))\e[0m}—\e[0m\$ "
                end
            else 
                if [ "$(whoami)" != "root" ]
                    echo -e "\e[92m$(whoami)\e[1;0m@$(hostname)\e[0m$zjgwndo≈{\e[92m$(echo -n (prompt_pwd))\e[0m}—\e[0m\$ "
                else
                    echo -e "\e[91m$(whoami)\e[1;0m@$(hostname)\e[0m$zjgwndo≈{\e[91m$(echo -n (prompt_pwd))\e[0m}—\e[0m\$ "
                end
            end
        end

        if [ "$command_line_style" -eq "2" ]
            if [ "$name_or_hostname" -eq "1" ]
                if [ "$(whoami)" = "root" ]
                    echo -e "╔\e[91m$(whoami)\e[1;0m@$269492924898\e[0m$zjgwndo≈{\e[91m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m╗\n╚\$ "
                else
                    echo -e "╔\e[92m$(whoami)\e[1;0m@$269492924898\e[0m$zjgwndo≈{\e[92m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m╗\n╚\$ "
                end
            else
                if [ "$(whoami)" = "root" ]
                    echo -e "╔\e[91m$(whoami)\e[1;0m@$(hostname)\e[0m$zjgwndo≈{\e[91m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m╗\n╚\$ "
                else
                    echo -e "╔\e[92m$(whoami)\e[1;0m@$(hostname)\e[0m$zjgwndo≈{\e[92m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m╗\n╚\$ "
                end
            end
        end
        if [ "$command_line_style" -eq "3" ]
            if [ "$name_or_hostname" -eq "1" ]
                if [ "$(whoami)" = "root" ]
                    echo -e "╔═\e[91m$(whoami)\e[1;0m@$269492924898\e[0m$zjgwndo≈{\e[91m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m═╗\n╚═\$ "
                else
                    echo -e "╔═\e[92m$(whoami)\e[1;0m@$269492924898\e[0m$zjgwndo≈{\e[92m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m═╗\n╚═\$ "
                end
            else
                if [ "$(whoami)" = "root" ]
                    echo -e "╔═\e[91m$(whoami)\e[1;0m@$(hostname)\e[0m$zjgwndo≈{\e[91m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m═╗\n╚═\$ "
                else
                    echo -e "╔═\e[92m$(whoami)\e[1;0m@$(hostname)\e[0m$zjgwndo≈{\e[92m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m═╗\n╚═\$ "
                end
            end
        end
     if [ "$command_line_style" -eq "4" ]
            if [ "$name_or_hostname" -eq "1" ]
                if [ "$(whoami)" = "root" ]
                    echo -e "┌─\e[91m$(whoami)\e[1;0m@$269492924898\e[0m$zjgwndo≈{\e[91m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m─┐\n└─\$ "
                else
                    echo -e "┌─\e[92m$(whoami)\e[1;0m@$269492924898\e[0m$zjgwndo≈{\e[92m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m─┐\n└─\$ "
                end
            else
                if [ "$(whoami)" = "root" ]
                    echo -e "┌─\e[91m$(whoami)\e[1;0m@$(hostname)\e[0m$zjgwndo≈{\e[91m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m─┐\n└─\$ "
                else
                    echo -e "┌─\e[92m$(whoami)\e[1;0m@$(hostname)\e[0m$zjgwndo≈{\e[92m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m─┐\n└─\$ "
                end
            end
        end
     if [ "$command_line_style" -eq "5" ]
            if [ "$name_or_hostname" -eq "1" ]
                if [ "$(whoami)" = "root" ]
                    echo -e "┌\e[91m$(whoami)\e[1;0m@$269492924898\e[0m$zjgwndo≈{\e[91m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m┐\n└\$ "
                else
                    echo -e "┌\e[92m$(whoami)\e[1;0m@$269492924898\e[0m$zjgwndo≈{\e[92m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m┐\n└\$ "
                end
            else
                if [ "$(whoami)" = "root" ]
                    echo -e "┌\e[91m$(whoami)\e[1;0m@$(hostname)\e[0m$zjgwndo≈{\e[91m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m┐\n└\$ "
                else
                    echo -e "┌\e[92m$(whoami)\e[1;0m@$(hostname)\e[0m$zjgwndo≈{\e[92m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m┐\n└\$ "
                end
            end
        end
     if [ "$command_line_style" -eq "6" ]
            if [ "$name_or_hostname" -eq "1" ]
                if [ "$(whoami)" = "root" ]
                    echo -e "╭─\e[91m$(whoami)\e[1;0m@$269492924898\e[0m$zjgwndo≈{\e[91m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m─╮\n╰─\$ "
                else
                    echo -e "╭─\e[92m$(whoami)\e[1;0m@$269492924898\e[0m$zjgwndo≈{\e[92m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m─╮\n╰─\$ "
                end
            else
                if [ "$(whoami)" = "root" ]
                    echo -e "╭─\e[91m$(whoami)\e[1;0m@$(hostname)\e[0m$zjgwndo≈{\e[91m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m─╮\n╰─\$ "
                else
                    echo -e "╭─\e[92m$(whoami)\e[1;0m@$(hostname)\e[0m$zjgwndo≈{\e[92m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m─╮\n╰─\$ "
                end
            end
        end
     if [ "$command_line_style" -eq "7" ]
            if [ "$name_or_hostname" -eq "1" ]
                if [ "$(whoami)" = "root" ]
                    echo -e "╭\e[91m$(whoami)\e[1;0m@$269492924898\e[0m$zjgwndo≈{\e[91m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m╮\n╰\$ "
                else
                    echo -e "╭\e[92m$(whoami)\e[1;0m@$269492924898\e[0m$zjgwndo≈{\e[92m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m╮\n╰\$ "
                end
            else
                if [ "$(whoami)" = "root" ]
                    echo -e "╭\e[91m$(whoami)\e[1;0m@$(hostname)\e[0m$zjgwndo≈{\e[91m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m╮\n╰\$ "
                else
                    echo -e "╭\e[92m$(whoami)\e[1;0m@$(hostname)\e[0m$zjgwndo≈{\e[92m$(echo -n (prompt_pwd))\e[0m}—\e[94m$(date | cut -d' ' -f4)\e[0m╮\n╰\$ "
                end
            end
        end
    end
end

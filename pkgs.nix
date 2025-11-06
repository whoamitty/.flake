{pkgs, inputs , ... }:

{
environment.systemPackages = with pkgs; [
	#GUI
	onlyoffice-desktopeditors vscode ghostty pairdrop thunderbirdPackages.thunderbird-latest
	brave audio-recorder tenacity obsidian
	windsurf blender gimp3 planify gnome-frog
        #pairdrop beeper 
	inputs.zen-browser.packages."${system}".beta
        shutter
	
        #CLI
	#It work alone
        cron vdhcoappa
        

        git yt-dlp ripgrep 
        shellcheck holehe flatpak jujutsu vhs radicle-node 
        xan tldr notify-desktop zip unp md2pdf bat tree curl 
        unzip nix-search fastfetch jq xclip httpie stow borgbackup
        ffmpeg wget  
	
        #TUI (interactive)

        #shell
        zsh fish nushell

        #nothing to edit
        fzf glow see-cat ripgrep-all 
       
        #edit with
        gh zoxide 
        vim mpv tmux bc
	yazi zellij nom lynx 
	 
        #vhs shell video recorder
        #nh #rigep-all #ytfzf
	#googler abandoned
	#ventoy not secure
 

	#plugin tmux
	tmuxPlugins.resurrect	

	#extensions gnome
	# gnomeExtensions.battery-health-charging
	# gnomeExtensions.boost-volume

	#dev
	sqlite
    	python311
	bash-completion


	# Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  # wget
];

}

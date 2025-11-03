{pkgs, inputs , ... }:

{
environment.systemPackages = with pkgs; [
	#gui
	onlyoffice-desktopeditors vscode ghostty pairdrop thunderbirdPackages.thunderbird-latest
	brave audio-recorder tenacity obsidian
	windsurf blender gimp3 planify gnome-frog
        #pairdrop beeper 



	
	( inputs.zen-browser.packages."${system}".beta-unwrapped.override  {
	policies = {
   AutofillAddressEnabled = true;
    AutofillCreditCardEnabled = false;
    DisableAppUpdate = true;
    DisableFeedbackCommands = true;
    DisableFirefoxStudies = true;
    DisablePocket = true;
    DisableTelemetry = true;
    DontCheckDefaultBrowser = true;
    NoDefaultBookmarks = true;
    OfferToSaveLogins = false;
    EnableTrackingProtection = {
      Value = true;
      Locked = true;
      Cryptomining = true;
      Fingerprinting = true;
    };
  };
} 
)
	
	#tui
	vim zoxide yt-dlp ripgrep git mpv ffmpeg bat tmux nushell
	gh yazi zellij fastfetch nix-search jq fzf curl nom tree 
	borgbackup bc ripgrep-all stow see-cat glow xclip
        cron wget unzip zip unp vdhcoapp httpie zsh fish jujutsu vhs radicle-node shutter
	md2pdf lynx xan tldr notify-desktop  shellcheck holehe
        #vhs shell video recorder
        #nh #rigep-all #ytfzf
	#googler abandoned
	#ventoy not secure

	#plugin tmux
	tmuxPlugins.resurrect	

	#extensions gnome
	gnomeExtensions.battery-health-charging
	gnomeExtensions.boost-volume

	#dev
	sqlite
    	python311
	bash-completion

        # DON'T TOUCH ANYMORE
        # php
	# php84Packages.composer
        

	# Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  # wget
];

}

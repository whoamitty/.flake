systemd.timers."speakingclock" = {
  wantedBy = [ "timers.target" ];
    timerConfig = {
      OnBootSec = "5m";
      OnUnitActiveSec = "5m";
      Unit = "speakingclock.service";
    };
};

systemd.services."speakingclock" = {
  script = ''
    set -eu
    ${pkgs.coreutils}/bin/echo "Hello World"
  '';
  serviceConfig = {
    Type = "oneshot";
    User = "enfantdedieu";
  };
};


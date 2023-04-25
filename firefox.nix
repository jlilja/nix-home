{ config, pkgs, ... }:

{
  programs.firefox = {
    enable = true;

    profiles = {
      jonas = {
        id = 0;
        name = "jonas";

        search = {
          force = true;
          default = "DuckDuckGo";
        };

        settings = {
          "browser.aboutConfig.showWarning" = false; # Boolean | To show warning prompt when accessing about:config page.
          "browser.startup.homepage" = "https://ddg.co"; # String | Setting homepage for Firefox.

          "datareporting.healthreport.service.enabled" = false; # Boolean | Setting Firefox Health Report functionality (https://wiki.mozilla.org/Firefox_Health_Report)
          "datareporting.healthreport.uploadEnabled" = false; # Boolean | Setting Firefox Health Report uploading functionality.

          "datareporting.policy.dataSubmissionEnabled" = false; # Boolean | This is the data submission master kill switch. (https://firefox-source-docs.mozilla.org/toolkit/components/telemetry/internals/preferences.html)

          "extensions.pocket.enabled" = false;
          "extensions.pocket.api" = "";
          "extensions.pocket.oAuthConsumerKey" = "";
          "extensions.pocket.showHome" = false;
          "extensions.pocket.site" = "";

          "privacy.annotate_channels.strict_list.enabled" = true; # Boolean | ??
          "privacy.annotate_channels.strict_list.pbmode.enabled" = true; # Boolean | ??

          "privacy.donottrackheader.enabled" = true; # Boolean | DEPRECATED | Setting whether to send DNT header or not. (https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/DNT)

          "toolkit.legacyUserProfileCustomizations.stylesheets" = true; # Boolean | To reverse changes you made to Firefox with a userChrome.css or userContent.css file by setting to false.

          "toolkit.telemetry.archive.enabled" = false;
          "toolkit.telemetry.enabled" = false;
          "toolkit.telemetry.prompted" = 2;
          "toolkit.telemetry.rejected" = true;
          "toolkit.telemetry.server" = "";
          "toolkit.telemetry.unified" = false;
          "toolkit.telemetry.unifiedIsOptIn" = false;
        };

        extensions = with pkgs.nur.repos.rycee.firefox-addons; [
          ublock-origin
          onepassword-password-manager
          multi-account-containers
        ];
      };
    };
  };
}

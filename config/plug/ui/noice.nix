{
  plugins.noice = {
    enable = true;
    settings = {
      lsp = {
        message = {
          enabled = false;
        };
        progress = {
          enabled = false;
          view = "mini";
        };
      };
      notify = {
        enabled = false;
        view = "notify";
      };
      popupmenu = {
        enabled = true;
        backend = "nui";
      };
      messages = {
        enabled = true;
        view = "mini";
      };
      cmdline = {
        format = {
          filter = {
            pattern = [
              ":%s*%%s*s:%s*"
              ":%s*%%s*s!%s*"
              ":%s*%%s*s/%s*"
              "%s*s:%s*"
              ":%s*s!%s*"
              ":%s*s/%s*"
            ];
            icon = "";
            lang = "regex";
          };
          replace = {
            pattern = [
              ":%s*%%s*s:%w*:%s*"
              ":%s*%%s*s!%w*!%s*"
              ":%s*%%s*s/%w*/%s*"
              "%s*s:%w*:%s*"
              ":%s*s!%w*!%s*"
              ":%s*s/%w*/%s*"
            ];
            icon = "󱞪";
            lang = "regex";
          };
          range = {
            pattern = [
              ":%s*%%s*s:%w*:%w*:%s*"
              ":%s*%%s*s!%w*!%w*!%s*"
              ":%s*%%s*s/%w*/%w*/%s*"
              "%s*s:%w*:%w*:%s*"
              ":%s*s!%w*!%w*!%s*"
              ":%s*s/%w*/%w*/%s*"
            ];
            icon = "";
            lang = "regex";
          };
        };
      };

    };
  };
}

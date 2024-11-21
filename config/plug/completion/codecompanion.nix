{ lib, pkgs, ... }:
let
  inherit (lib) mkIf;

  pname = "codecompanion";
  version = "v10.0.1";

  codecompanion_enable = true;
in
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      inherit pname version;
      src = pkgs.fetchFromGitHub {
        owner = "olimorris";
        repo = "codecompanion.nvim";
        rev = "refs/tags/${version}";
        hash = "sha256-VD3jI48H4n60aHzs8tf0FaZ+TRecjik78i71Yv+xVyY=";
      };
    })
  ];

  extraConfigLua = ''
    require("codecompanion").setup({
       strategies = {
         chat = {
           adapter = "copilot",
         },
         inline = {
           adapter = "copilot",
         },
         agent = {
           adapter = "copilot",
         },
       },
    }
      );
  '';
  keymaps = mkIf codecompanion_enable [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>a";
      action = "CodeCompanion";
      options = {
        silent = true;
        desc = "+codecompanion";
      };
    }
    {
      key = "<leader>ac";
      action = ":CodeCompanionToggle<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Toggle CodeCompanion";
      };
    }
    {
      key = "<leader>af";
      action = ":CodeCompanionActions<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "CodeCompanion Actions";
      };
    }
  ];
}

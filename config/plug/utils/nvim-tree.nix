{
  plugins.nvim-tree = {
    enable = true;
    hijackCursor = true;
    hijackUnnamedBufferWhenOpening = true;
    actions = {
      useSystemClipboard = true;
    };
    diagnostics = {
      enable = true;
      showOnDirs = true;
      showOnOpenDirs = false;
    };
  };
}

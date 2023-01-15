{
  description = "NixOS + standalone home-manager config flakes to get you started!";
  outputs = inputs: {
    templates = {
      desktop = {
        description = ''
          Desktop flake - setup w/ home-manager, flakes, and dotfile configurations. Tailored to Custom built PC.
        '';
        path = ./desktop;
      };
      framework = {
        description = ''
          Framework flake - Setup w/ home-manager and flakes integration. Specifically configured for Alder Lake Frame.work laptop.
        '';
        path = ./framework;
      };
    };
  };
}
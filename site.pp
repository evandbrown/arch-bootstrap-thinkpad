node default {
  class {'archlinux_workstation':
    username => evan,
    dotfiles => "https://github.com/evandbrown/dotfiles.git",
    gui      => i3,
  }
}

node default {
  class {'archlinux_workstation':
    username => evan,
    groups => ['root', 'wheel'],
    dotfiles => "https://github.com/evandbrown/dotfiles.git",
    gui      => i3,
  }
}

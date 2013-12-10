class people::dongri {
  include projects::server
  
  include people::dongri::applications
  include people::dongri::git
  include people::dongri::packages
}


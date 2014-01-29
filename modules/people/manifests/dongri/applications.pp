class people::dongri::applications {
  include chrome
  include alfred
  include dropbox
  include firefox
  include flux
  include sublime_text_2
  include transmit
  include sequel_pro
  include gitx::l             # GitX(L)
  include skype
  include spotify

  package {
    'GoogleJapaneseInput':
      source => 'http://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg',
      provider => pkgdmg;
    'ClamXav':
      source => 'http://www.clamxav.com/downloads/ClamXav_2.6.1.dmg',
      provider => appdmg;
  }
}

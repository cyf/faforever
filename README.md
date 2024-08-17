# FaForever

> A third-party music player that replaces Synology DS Audio client.

[![Test](https://github.com/cyf/faforever/actions/workflows/test.yml/badge.svg)](https://github.com/cyf/faforever/actions/workflows/test.yml)
[![Release](https://github.com/cyf/faforever/actions/workflows/release.yml/badge.svg)](https://github.com/cyf/faforever/actions/workflows/release.yml)
[![GitHub Release](https://img.shields.io/github/v/release/cyf/faforever)](https://github.com/cyf/faforever/releases/latest)
[![GitHub Issues or Pull Requests](https://img.shields.io/github/issues/cyf/faforever)](https://github.com/cyf/faforever/issues/new)
[![GitHub License](https://img.shields.io/github/license/cyf/faforever)](https://raw.githubusercontent.com/cyf/faforever/main/LICENSE)

## 📜 ⬇️ Installation guide

This handy table lists all the methods you can use to install FaForever:

<table>
  <tr>
    <th>Platform</th>
    <th>Package/Installation Method</th>
  </tr>
  <tr>
    <td>Windows</td>
    <td>
      <a href="https://github.com/cyf/faforever/releases/download/v1.0.0+44/faforever_1.0.0+44_windows_x64.exe">
        <img width="220" alt="Windows Download" src="https://get.todoist.help/hc/article_attachments/4403191721234/WindowsButton.svg">
      </a>
  </tr>
  <tr>
    <td>MacOS</td>
    <td>
      <a href="https://github.com/cyf/faforever/releases/download/v1.0.0+44/FaForever_1.0.0+44_macos_universal.dmg">
        <img width="220" alt="MacOS Download" src="https://reachify.io/wp-content/uploads/2018/09/mac-download-button-1.png">
      </a>
    </td>
  </tr>
  <tr>
    <td>Android</td>
    <td>
      <a href="https://play.google.com/store/apps/details?id=com.chenyifaer.faforever">
        <img width="220" alt="Get it on Google Play" src="https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png">
      </a>
      <br>
      <a href="https://github.com/cyf/faforever/releases/download/v1.0.0+44/FaForever_1.0.0+44-free.apk">
        <img width="220" alt="APK download" src="https://user-images.githubusercontent.com/114044633/223920025-83687de0-e463-4c5d-8122-e06e4bb7d40c.png">
      </a>
    </td>
  </tr>
  <tr>
    <td>Flatpak</td>
    <td>
      <p><code>flatpak install com.chenyifaer.FaForever</code></p>
      <a href="https://flathub.org/apps/details/com.chenyifaer.FaForever">
        <img width="220" alt="Download on Flathub" src="https://flathub.org/assets/badges/flathub-badge-en.png">
      </a>
    </td>
  </tr>
  <tr>
    <td>AppImage</td>
    <td>
      <a href="https://github.com/cyf/faforever/releases/download/v1.0.0+44/faforever_1.0.0+44_linux_amd64.AppImage">
        <img width="220" alt="Fedora/OpenSuse Download" src="https://user-images.githubusercontent.com/61944859/223638350-5926b9da-04d6-4edd-931d-ad533e4ff058.png">
      </a>
      <p><code>chmod a+x faforever_1.0.0+44_linux_amd64.AppImage</code></p>
      <p><code>./faforever_1.0.0+44_linux_amd64.AppImage</code></p>
    </td>
  </tr>
  <tr>
    <td>Debian/Ubuntu</td>
    <td>
      <a href="https://github.com/cyf/faforever/releases/download/v1.0.0+44/faforever_1.0.0+44_linux_amd64.deb">
        <img width="220" alt="Debian/Ubuntu Download" src="https://user-images.githubusercontent.com/61944859/169097994-e92aff78-fd75-4c93-b6e4-f072a4b5a7ed.png">
      </a>
      <p>Then run: <code>sudo apt install ./faforever_1.0.0+44_linux_amd64.deb</code></p>
    </td>
  </tr>
  <tr>
    <td>Arch/Manjaro</td>
    <td>
      <p>With pamac: <code>sudo pamac install faforever</code></p>
      <p>With yay: <code>yay -Sy faforever</code></p>
    </td>
  </tr>
  <tr>
    <td>Fedora/OpenSuse</td>
    <td>
      <a href="https://github.com/cyf/faforever/releases/download/v1.0.0+44/faforever_1.0.0+44_linux_amd64.rpm">
        <img width="220" alt="Fedora/OpenSuse Download" src="https://user-images.githubusercontent.com/61944859/223638350-5926b9da-04d6-4edd-931d-ad533e4ff058.png">
      </a>
      <p>For Fedora: <code>sudo dnf install ./faforever_1.0.0+44_linux_amd64.rpm</code></p>
      <p>For OpenSuse: <code>sudo zypper in ./faforever_1.0.0+44_linux_amd64.rpm</code></p>
    </td>
  </tr>
  <tr>
    <td>Linux (tarball)</td>
    <td>
      <a href="https://github.com/cyf/faforever/releases/download/v1.0.0+44/faforever_1.0.0+44_linux_amd64.tar.gz">
        <img width="220" alt="Tarball Download" src="https://user-images.githubusercontent.com/61944859/169456985-e0ba1fd4-10e8-4cc0-ab94-337acc6e0295.png">
      </a>
    </td>
  </tr>
  <tr>
    <td>Macos - <a href="https://brew.sh">Homebrew</a></td>
    <td>
<pre lang="bash">
brew tap cyf/cyf
brew install faforever
</pre>
    </td>
  </tr>
  <tr>
    <td>Windows - <a href="https://chocolatey.org">Chocolatey</a></td>
    <td>
      <p><code>choco install faforever</code></p>
    </td>
  </tr>
  <tr>
    <td>Windows - <a href="https://scoop.sh">Scoop</a></td>
    <td>
      <p><code>scoop bucket add scoop-bucket https://github.com/cyf/scoop-bucket</code></p>
      <p><code>scoop install scoop-bucket/faforever</code></p>
    </td>
  </tr>
  <tr>
    <td>Windows - <a href="https://github.com/microsoft/winget-cli">WinGet</a></td>
    <td>
      <p><code>winget install --id Insco.FaForever</code></p>
    </td>
  </tr>
</table>

## License

MIT

# hm-tools

Dieses Addon funktioniert nur mit <B>RaspberryMatic</B>.<br>
Geeignet für arm und x86.<br>
Getestet mit Raspi2, Raspi3, Raspi4, Synology NAS (x86 "ova").

## Unterstützte CCU Modelle
* [RaspberryMatic](http://homematic-forum.de/forum/viewtopic.php?f=56&t=26917)

## Beschreibung:
Dieses Addon erweitert RaspberryMatic um Konsolen-Programme, die im Standard-System nicht enthalten sind.<br>
Eine Anleitung der einzelnen Anwendungen findet Ihr im Netz.<br>

### Im Plugin sind zur Zeit folgende Konsolen-Tools enthalten:

* expect
* midnight commander (mc)
* nano
* htop
* bash
* imagemagick (libjpeg, libpng include)
* sshpass
* oathtoolkit

#### Hinweis:
Dieses Addon schreibt nicht in den schreibgeschützten Bereich des Filesystem!<br>
Nach der Installation ist ein Neustart erforderlich!<br>

Viel Spaß mit hm-tools.

### Ihr braucht nicht alle Pakete!

* Anleitung Paketauswahl.txt befolgen.

### Anmerkung zu mc:
Wenn der Midnight Commander unter Putty die Ränder nicht als Linien, sondern als Buchstaben darstellt,<br>
müssen folgende Änderung in den Verbindungseinstellungen von Putty vorgenommen werden.<br>

Unter:

Windows -> Translation

*Remote character set*

ISO-8859-1-1998 (Latin-1, West Europe)

einstellen.

Das anschließende Speichern unter Session nicht vergessen.

## Licenses:
All binaries are compiled from the buildroot system source code.<br>
The source code of the compiled binaries was not modified.<br>
<br>
The source code of the binaries is subject to the following licenses:<br>

| Package | License |
| ------------- | ------------- |
| mc | GNU General Public License |
| expect | Public Domain |
| nano | GNU General Public License |
| htop | GNU General Public License |
| bash | GNU General Public License |
| imagemagick | GNU General Public License |
| sshpass | GNU General Public License |
| oathtool | GNU General Public License |

### Autor
2020 Frank Hettrich

### Notice
Danke an Jens Maus für seine Unterstützung.<br>
Thanks to Jens Maus for his support.

## RaspberryMatic
* https://github.com/jens-maus/RaspberryMatic<br>
<br>
Ich hafte nicht für Schäden, die an eurer Hard- und Software
durch die Verwendung dieses Addons entstehen.<br>
Verwendung des Addon auf eigene Gefahr!<br>
I'm not responsible for any hardware or software damage.<br>
Use this addon at your own risk!

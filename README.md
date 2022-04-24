# my-eggdrop
Anything todo with an irc eggdrop

# Scripts
**launch-manifest.tcl**

This script requires: packages http & tls

No API required from https://fdo.rocketlaunch.live/api but for further features an API must be purchased from this site

The script will respond within the channel with a PRIVATE NOTICE to you only

Here is a sample output what to expect:

```[16/02/2022 18:39] <bot-owner or user> !next
[16/02/2022 18:39] -bot- [Next 5 Launches] Northrop Grumman - Antares |⚡| Pad 0A - Mid-Atlantic Regional Spaceport (Wallops Island) |⚡️| A Northrop Grumman Antares rocket will launch the CRS2 NG-17 (Cygnus) mission on Saturday  February 19  2022 at 5 39 PM (UTC).
[16/02/2022 18:39] -bot- [Next 5 Launches] SpaceX - Falcon 9 |⚡| SLC-40 - Cape Canaveral SFS |⚡️| A SpaceX Falcon 9 rocket will launch the Starlink-37 (4-8) mission on Sunday  February 20  2022 at 2 54 PM (UTC).
[16/02/2022 18:39] -bot- [Next 5 Launches] Rocket Lab - Electron |⚡| LC-1A - Rocket Lab Launch Complex  Mahia Peninsula |⚡️| A Rocket Lab Electron rocket will launch the "The Owl's Night Continues" mission on Sunday  February 27  2022 at 8 35 PM (UTC).
[16/02/2022 18:39] -bot- [Next 5 Launches] Astra Space - Rocket 3 |⚡| LP-3B - Pacific Spaceport Complex - Alaska |⚡️| An Astra Space Rocket 3 rocket will launch the S4 Crossover mission. The launch date is currently targeted for February 28  2022 (UTC).
[16/02/2022 18:39] -bot- [Next 5 Launches] ISRO - PSLV |⚡| FLP - Satish Dhawan Space Centre |⚡️| An ISRO PSLV rocket will launch the Oceansat-3 (EOS-6) mission. The launch date is currently targeted for February  2022 (UTC).
```

**Todo**
- [ ] throttle control output. Currently 1st 3 launches display in rapid succession, but 4th & 5th launch are throttle by IRC.  Need to add a sleep/time delay to output each of the 5 launches with 1-2sec delay.

**Troubleshooting**

**None so far.  If you know of a problem raise an issue?**
- _Ex: Throttle control of PRIVATE NOTICE to be done._

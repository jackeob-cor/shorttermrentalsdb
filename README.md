Készitok: Jakab Boldizsár (lymyr6) és Csaba Domjan [CZNUFN]

Az adatbazis leirása:

Adatbazisunk egy Budapest belvarosaban tevekenykedo, maganszallashely uzemelteto ceg,
a szolgaltatoktol (Airbnb, Booking.com, Channel Manager Szoftver), csv formatumban
kiexportalt adatai felhasznalasav keszult.
A tablak:
reservations: - A foglalasok adatait;
listings: - A szallashelyek adatait;
reviews: - A korabbi vendegek altal kuldott visszajelzesek adatait;
tasks: - Illetve a takaritasi feladatok reszletes adatait foglaljak magukban.




# INFOK

Szerintem ha VScodeban dolgozunk egyszerubb verziókövetés is és az mindkettonk gepen megy.

1. Telepiteni 2 extensiont vscodehoz, hogy tudj benne lekerdezesek csinalni:
- sqlite
- sqlite viewer


2. Megnyitni ezt a github repot vscodeban, pullolni, es nyitni egy terminalt, es oda gepelni parancsokat
   
3. Megnyitni adatbazist parancs:       `sqlite3 strentals.db`

4. Csinalni lekerdezeknek kulon fajlokat pl "query1.sql"

5. igy lehet ezeket futtatni terminalban:     `.read query1.sql`


## 2024.05.14. Lekerdezesekben es adatbazisban is javitottam datum adattipusokat

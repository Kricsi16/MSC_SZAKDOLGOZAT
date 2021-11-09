# MSC_SZAKDOLGOZAT


1. Kubernetes klaszter telepítése: a /klaszter/install/klaszter_install.sh futtatása.
2. Klaszter nodekon interface-k beállítása netplan segítségével /klaszter/netplan/ mappában lévő konfigok alapján.
3. A Routeren interface-k route-k beállítása: /router/router-netplan.yaml fájl lapján.
4. Source gépen interface és route konfigurálása /source/source.sh
5. Multus működéséhez szükséges konfig fájlok létrehozása: /klaszter/multus/macvlans/ mappában lévő konfigok alapján
6. A /klaszter/multus/ mappában lévő backend és frontend podok létrehozásához szükséges konfigurációs fájlok létrehozása.
7. Multus konfigurációs fájlok segítségével a kívánt számú frontend és backend podok létrehozása a kubectl apply paranccsal.
8. Ipvs beállítása a frontend és backend podokon és a szinkronizáció bekapcsolása a frontend podok között a /klaszter/ipvs mappában található szkriptek segítségével.
9. Nodeport létrehozása, hogy a tesztelésnél kivülről is eltudjuk érni a klasztert a /klaszter/nodeport mappában lévő konfigurációk alapján.
10. Tesztek futtatása: a /teszt/hey_teszt.sh elindítása.

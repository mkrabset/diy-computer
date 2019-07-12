
# Output ports:
# out0, bit 0-7:  data
# out1, bit 0  :  instr / text (RS)
# out1, bit 1  :  enable        (E)

start:
  JSR lcdreset
  JSR lcdclear
  JSR lcdhome

  LDX #06
  JSR lcdinstr


  JSR writemessage
  JMP start


lcdreset:
  PUSH X
  LDX #0f
  JSR lcdinstr
  POP X
  RTS

lcdclear:
  PUSH X
  LDX #01
  JSR lcdinstr
  POP X
  RTS

lcdhome:
  PUSH X
  LDX #02
  JSR lcdinstr
  POP X
  RTS


lcdinstr:
  OUT0 X
  LDX #02
  OUT1 X
  LDX #00
  OUT1 X
  RTS

lcdwrite:
  OUT0 X
  LDX #03
  OUT1 X
  LDX #01
  OUT1 X
  RTS

writemessage:
  LDX #00
  STX idxl // Reset index counter
  STX idxh
loop:
  LDX idxl
  CLC
  ADDX messageptr+2
  STX getChar+2
  LDX idxh
  ADDX messageptr+1
  STX getChar+1
  JSR getChar
  CMPX #00
  BNE notdone
  RTS
notdone:
  JSR lcdwrite
  INC idxl
  BNE notoverflow
  INC idxh
notoverflow:
  LDX idxl
  ANDX #0f
  BNE screennotfull
  JSR lcdclear
  JSR lcdhome
screennotfull:
  LDY idxl
  LDZ idxh
  JMP loop

getChar:
  LDX $0000
  RTS

idxl:
B 0x 00
idxh:

messageptr:
LDX message

message:
S 'Lars Monsen er den eneste som har drept en grizzlybjørn med dens egne tenner.'
S 'Lars Monsen har ikke med seg boksåpner på tur. Han spiser hermetikken hel.'
S 'Ulvene gjør opp bål for å holde Monsen unna.'
S 'Lars Monsen har hatt snøballkrig med seg selv i helvete.'
S 'Lars Monsen gjør opp ild med bare hendene. Også i regnvær!'
S 'Det eneste dyret Lars Monsen ikke kan lokke til seg med parringslyder er mammuter. Det er hovedsakelig fordi de er utryddet.'
S 'Det amerikanske forsvaret brukte Lars Monsen som fasit da de utviklet GPS.'
S 'Lars Monsen bygde varden på Kvigtind. Han kastet stein fra Tjokkelvatnet.'
S 'Monsunperioden er oppkalt etter Lars Monsen.'
S 'Lars Monsen er født med ski på beina, sekk på ryggen og en hundeslede med 12 hunder.'
S 'Kvinner er fra Venus, menn fra Mars og Lars Monsen er fra Himalaya.'
S 'Lars Monsen sover ikke, han venter… på at fisken skal nappe.'
S 'Når Lars Monsen skal more seg, sitter han for seg selv midt på vidda, og forteller seg selv vitser han ikke har hørt før.'
S 'Lars Monsen har klatret opp Trollveggen. Med én hånd.'
S 'Lars har ugler i Monsen.'
S 'Lars Monsen er 1.83 m høy. Når han reiser seg på bakbeina blir han 5.27 m høy.'
S 'Lars Monsen kan telle til 10 med hundebjeff.'
S 'Lars Monsen har nok energi til å drive Las Vegas’ belysning i 2 år.'
S 'Lars Monsen har ikke føtter. Han har fjellsko.'
S 'Naturkreftene fikk kreftene av Lars Monsen.'
S 'Det var Lars Monsen som gjorde opp ild på Sola.'
S 'En gang spilte Lars Monsen golf. Da fikk han 18 hole-in-ones, og 8 ørreter på over 3 kilo i sidevannshinderet.'
S 'En gang kom en bjørn inn i teltet til Lars Monsen og spiste maten hans. Da spiste Lars Monsen bjørnen.'
S 'Da Challenger II-ekspedisjonen nådde bunnen av Marianegropen fant de Lars Monsen med våtdrakt, strikkharpun og syv inntil da ukjente arter i fangstnettet.'
S 'Lars Monsen kan selge skinnet før bjørnen er skutt.'
S 'Lars Monsen har ikke hunder for å trekke pulken. Han har dem med som nødproviant.'
S 'Bjørnen går ikke i hi, den gjemmer seg for Lars Monsen.'
S 'Kompasset viser ikke nord.'
S 'Kompasset viser Lars Monsen.'
S 'En gang, da Lars Monsen og Chuck Norris møttes i skogen, ropte Lars Monsen så høyt at Chuck Norris fikk rødt hår og fregner.'
S 'Lars Monsen har det verken for varmt eller for kaldt. Han bryr seg ganske enkelt ikke om temperatur.'
S 'Fjellvettreglene er en stiloppgave Lars Monsen skrev i første klasse på barneskolen.'
S 'Lars Monsen danser med ulver.'
S 'Lars Monsen er den eneste som alltid vinner stirrekonkurranser mot ugler.'
S 'Ingen vet hvorfor Lars Monsen har kniv.'
S 'Lars Monsen besto jegerprøven bare ved å møte opp.'
S 'Ved oppdagelsen av Titanic-vraket fant de en stein på bunnen hvor det sto «Lars Monsen var her».'
S 'Da Lars Monsen var marinejeger og dro på overlevelsesøvelse, kom han tilbake 7 kg tyngre enn når han dro.'
S 'Supermann har en stor Lars Monsen-tatovering på brystkassa.'
S 'Lars Monsen er så konge at både Sonja og Ari Behn kneler for han.'
S 'Elver og innsjøer utvikler is på vinteren. Dette er for å beskytte fisken mot Lars Monsen.'
S 'Ironisk nok tror ikke Lars Monsen på at det finnes utfordringer - det finnes bare pyser.'
S 'Grunnen til at Lars Monsen har med seg gevær på jakt er for å kunne skyte varselskudd og gi bjørnen en sjanse. Når det ikke er bjørn i området jakter han heller ved å snike seg inn på dyrene bakfra og knekke nakken på de. Det gjelder også ryper og harer.'
S 'Det er ikke tilfeldig at militæret bygger ned forsvaret i nord på samme tid som Lars Monsen har begynt å kjøre hundeløp der med jevne mellomrom.'
S 'Hvis Lars Monsen har hendene fulle gjør han opp bål ved å kjefte på noen pinner til de tar fyr.'
S 'Da Lars Monsen kappåt mot trollet, vant han overlegent uten sekk på magen. Deretter spiste han trollet til dessert.'
S 'Lars Monsen er så rå at han lett kunne erstatte hele ferskvaredisken på Meny.'
S 'Lars Monsen hugger ved med flat hånd.'
S 'Det ryktes at Lars Monsen kom inn på 25. plass Finnmarksløpet, men han var faktisk på sin femte runde.'
S 'Det finnes ikke ekko i fjellet, det er bare Lars Monsen som kødder med deg.'
S 'Lars Monsen tegna kartet til Eirik Raude.'
S 'Lars Monsen bruker sin egen pekefinger som jokkastikke.'
S 'Alle kan kan pisse i motvind, men Lars Monsen blir ikke våt.'
S 'IOC nekter Lars Monsen å stille i OL.'
S 'Døden hadde en gang en nær Lars Monsen-opplevelse.'
S 'Da Lars Monsen deltok i Verdensmesterskapet i poker vant hele greia med følgende hånd: Et visakort, et bibliotek-kort, en kvittering fra G-sport, et fiskekort fra Finnmarksvidda og et nøkkelkort tilhørende hotellrommet til en av damene som prøvde å sjekke han opp.'
S 'Lars Monsen kan mette 5 000 med en kniv, fem meter tau og en skog.'
S 'I 2001 vant Lars Monsen World Rally Championship på New Zealand. Med en elg.'
S 'En gang ble Lars Monsen bitt av en klapperslange. Etter fem timer med uutholdelige smerter døde slangen.'
S 'Lars Monsen lærte maurene å bygge tua på sørsida av treet.'
S 'Når en bjørn møter Lars Monsen begynner den å prate og håper Lars vil forsvinne av seg selv. Hvis ikke legger den seg med labbene over hodet, og spiller død.'
S 'Da Lars Monsen feiret jul i Canada hadde han så lite mat at han koste seg med ferske rypespor til middag, is til dessert og en frostrøyk til kaffen.'
S 'Eskimoer kaller eskimo-Rulle for Lars Monsen-Rulle.'
S 'Om han hadde hatt interesse av det kunne Lars Monsen både fjerne himmelstrøk og fjerne østen.'
S 'Lars Monsen veit at bringebær bare er blåbær i forhold til jordbær.'
S 'Lars Monsen plantet Ibsens Ripsbusker og alle de andre buskvekstene.'
S 'Lars Monsen får aldri kalde føtter.'
S 'Lars Monsen står til Dovre faller.'
S 'Uten mat og drikke, duger bare Lars Monsen.'
S 'Lars Monsen svetter så mye på føttene at når han vrir om sokkene sine så går strømprisen ned.'
S 'Så lenge det ikke blåser opp til snøstorm eller en million mygg forsøker å ete han synes Lars Monsen livet er enkelt. Resten av tida mener han er underholdende.'
S 'Eskimoer har hundre ord for forskjellige typer snø. Lars Monsen har hundre ord for forskjellige typer eskimoer.'
S 'Den einaste avgifta Lars Monsen betaler er bamsemoms.'
S 'Godot venter på Lars Monsen.'
S 'Har du prøvd å banke på baksiden av ytterdøra di? Hvis du gjør det, vil Lars Monsen komme å åpne. Utendørs er tross alt hans hjem.'
S 'Monsen kan segla förutan vind'
S 'Monsen kan ro utan åror'
S 'Lars Monsen lager pinneved av alle trær som våger seg over tregrensa.'
S 'Nyere forskning viser at fiskelykke i liten grad handler om hell. Det avgjørende er hvor lenge det er siden Lars Monsen har vært der og fisket.'
S 'En gang ble Lars Monsen angrepet av en krokodille, og laget en fin kajakk av den.'
S 'I niendeklasse på ungdomsskolen kastet Lars Monsen en tennisball som fortsatt går i bane rundt jorden.'
S 'Lars Monsen kan skru skruer i veggen med bare hendene.'
S 'Da Gud sa: «La det bli lys», kunne man høre Lars Monsen svare «Det var virkelig på tide!».'
S 'Lars Monsen kan nyse med øynene åpne.'
S 'Historiene om Espen Askeladd er hovedsaklig basert på Lars Monsens selvopplevde eventyr.'
S 'Lars Monsen synger kun i kano'n.'
S 'En gang løp tiden fra Lars Monsen, men da stoppet den og ventet.'
S 'Lars Monsens halvhøye La Sportiva lærstøvler er like steinharde som to femkilos ørreter i frysedisken.'
S 'Lars Monsen synes voksenmenyen er barnemat.'
S 'Lars Monsen er mektigere enn pennen.'
S 'Lars Monsen har ingen problemer med å hoppe etter Wirkola.'
S 'Lars Monsen var ikkje med i Noahs Ark. Han holdt pusten.'
S 'Som deodorant bruker Lars Monsen Laphroaig Single Malt. Tripple Cask hvis det er fest.'
S 'Lars Monsen er den eneste som kan gifte seg med Rein og komme unna med det.'
S 'Ulvene forteller historier om valpen som ropte Lars Monsen.'
S 'Det er bare én ting været ikke kan gjøre noe med, og det er Lars Monsen.'
S 'Lars Monsen er den eneste som har banket opp noen med en kano.'
S 'Lars Monsen går ikke å legger seg fordi det blir mørkt, det blir mørkt fordi Lars Monsen går og legger seg.'
S 'Nylig oppdaget forskere ved MIT at Lars Monsen faktisk har 20x optisk zoom på øynene sine.'
S 'Da Gud skapte himmelen og jorden ble Lars Monsen forbanna og lagde helvete.'
S 'På en skala fra 1 til Lars Monsen er ikke Chuck Norris med en gang.'
S 'Nye arkeologiske funn bekrefter teorien om at Lars Monses delte Rødehavet en gang rundt 1350 BC.'
S 'Lars Monsen vet hvor haren hopper.'
S 'Lars Monsen er sammen med Trine Rein. Tidligere har han bodd med Dinna Bjørn og Vigdis Hjort.'
S 'En gang Lars Monsen var tom for proviant åt han en varde.'
S 'Lars Monsen kan ta armhevinger med begge hendene på ryggen.'
S 'Lars Monsen er den eneste som har fått både torsk og makrell i fjellvann.'
S 'De eneste lovene Lars Monsen ikke respekterer er naturlovene.'
S 'Det eneste som kan matche Northug på oppløpet er kameraet. Den eneste som kan slå de begge er Lars Monsen.'
S 'Den eneste grunnen til at Lars Monsen har hodelykt, er at vi skal se hvor han er.'
S 'Mayaindianerne forutså Lars Monsens utdrikkingslag 21. Desember 2012.\0'
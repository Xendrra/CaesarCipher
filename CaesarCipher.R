CaesarCipher <- function(retezec,posun){ 
  #funkce CaesarCipher koduje textovy retezec tim, ze posune kazde pismeno o pocet pismen dle zadaneho posunu
  #vstup 1..retezec
  #vstup 2..posun, zadavan cislem, muze byt zadan i zaporne
  #vystup...kodovany retezec
retezec=utf8ToInt(retezec)+posun    #prevede pismena na ciselne kody dle ascii tabulky a ke kazdemu pricte posun
retezec=intToUtf8(retezec)          #prevede cisla dle ascii zpet na retezec 
return(retezec)                     #vrati kodovany retezec
}
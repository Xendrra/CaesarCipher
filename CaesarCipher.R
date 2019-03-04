CaesarCipher <- function(retezec,posun){ 
  #funkce CaesarCipher koduje textovy retezec tim, ze posune kazde pismeno o pocet pismen dle zadaneho posunu
  #vstup 1..retezec
  #vstup 2..posun, zadavan cislem, muze byt zadan i zaporne, rozsah +-25
  #vystup...kodovany retezec
  retezec=tolower(retezec)              #prevede pripadna velka pismena na mala
  retezec=utf8ToInt(retezec)+posun     #prevede pismena na ciselne kody dle ascii tabulky a ke kazdemu pricte posun
  print(retezec)
  for (i in 1:length(retezec)){
    if (retezec[i]-posun==32){  
      retezec[i]=0                       #vymaze mezery
    }else if (retezec[i]+posun==32){
      retezec[i]=0
    }
    else if (retezec[i]>122){                #pokud je kod pismene po posunuti vyssi nez posledni mozny(pismeno z)   
      retezec[i]=retezec[i]-26}         # odecte delku abecedy, cimz se dostane k pismenu a
    else if (posun<0 && retezec[i]<=96 && retezec[i]!=0){ #definuje predchozi podminky pro pripad zaporneho posunu
      retezec[i]=retezec[i]+26
    }}
  print(retezec)
  print(retezec)
  for (i in 1:length(retezec)){
    if (retezec[i]<96 && retezec[i]!=0| retezec[i]>122 | abs(posun)>26){ #osetreni vstupu
      retezec=numeric()
      print('Prosim, zadavejte pouze znaky abecedy, bez diakritiky a interpukce a posun v rozsahu +- 25')
      break}
  }
  retezec=intToUtf8(retezec)          #prevede cisla dle ascii zpet na retezec
  print(retezec)
}

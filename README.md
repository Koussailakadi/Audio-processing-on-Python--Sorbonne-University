# Audio processing en Python à Sorbonne Université

###  Auteurs: 
###  koussaila KADI  
###  Mickaël Da Rocha Martin
### email: kadi.koussaila@outlook.fr

---------------------------------------

## Analyse à temps continu:
* Transformée de fourier 

## Analyse à temps discret , fréquence discrete: 

* traitement du signal audio
* échantillonnage d'un signal audio 
* quantification du signal audio
* analyse du signal audio (filtraga numérique) 
* analyse spectral d'un signal audio 
* trasformées de fourier discretes TDF
* tranformées de fourier à court terme TFCT
* réstitution d'un signal audio TFCT inverse
* Compression d'un signal Audio 
* fenêtrage (hamming, hanning, blackman, triangulaire, rectangulaire) 


## TP1: 
---------------------------------------

## TP2:

---------------------------------------
## TP3 Traitement Audio
##  Reconstruction du signal audio : TFCT inverse
## Résumé:
La première partie du TP consiste à implémenter l’algorithme de Transformée de Fourier à Court-Terme Inverse (ITFCT). La fonction, que l’on nommera itfct.py, aura pour paramètres d’entrée la TFCT d’un signal, le pas d’avancement de la fenêtre d’analyse Nhop , ainsi que le nombre de points fréquentiels utilisés dans l’algorithme TFCT Nfft et la fréquence d’échantillonnage Fs du signal initial. La TFCT, notée x mat , sera écrite sous la forme d’une matrice de
dimensions $nl × L$ éterminées au $TP2$

## étape de l'algorithme OLA (overlap-Add):
*   $Etape 1$ : reconstruire la TFD de chaque trame à partir des colonnes de la matrice x mat de TFCT, dans des vecteurs de taille Nfft.

*   $Etape 2$ : reconstruire chaque trame fenêtrée en effectuant la TFD inverse (ITFD) des vecteurs de $TFD : ⇒ L$ trames fenêtrées $y_l , l ∈ [0,L − 1]$
La TFD inverse reconstruit des trames de longueur N f f t. Cette longueur est supposée égale à la longueur des trames découpées lors de l’algorithme TFCT (c’est le cas si la TFD a été effectuée sur un nombre correct de points)

*   $Etape 3$ : décaler la l è trame $y_l , de (l − 1)$ trames $⇒$ synchronisation des $y_l , l ∈ [1, L] $:
$y_1 [n] ⇒ y_1 [n] = x[n]w[n]$
$y_2 [n] ⇒ y_2 [n − Nhop ] = x[n]w[n − Nhop ]$
$...$
$y_L [n] ⇒y_L [n − (L − 1)Nhop ] = x[n]w[n − (L − 1)Nhop ]$

*   $Etape 4$ : sommer les trames décalées $ y_l [n − (l − 1)Nhop]$

*   $Etape 5$ : normaliser le signal temporel

---------------------------------------
## TP4:






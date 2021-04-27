# Audio processing en Python à Sorbonne Université

###  Auteurs: 
###  koussaila KADI  
###  Mickaël Da Rocha Martin
### email: kadi.koussaila@outlook.fr

---------------------------------------

### Analyse à temps continu:
* Transformée de fourier 

### Analyse à temps discret , fréquence discrete: 

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

---------------------------------------
---------------------------------------


## TP1: 
### Acquisition et quantification d’un signal audio. Rééchantillonnage et phénomène de repliement spectral.
### Résumé: 
Le but de ce TP est d'étudier l'effet du sur-échantillonnage (les pertes lors de  quantifications) et les quenséconses sur la qualité de l'audio

## étapes:
1.   Étude de la quantification
    *   quantifier le signal audio sur un nombre de bits variable pour étudier l'effet sur la qualité de l'audio. 
    *   mesure du bruit de quantification et les erreur induites et le rapport signal bruit RSB
    *   qualité audio HD et CD 
2.   Rééchantillonnage et repliement spectral
    *   analyse de l'effet de repliement spectral (sous échantillonnage du signal audio) et les effets sur le signal audio reconstruit 

### compétences:
*   transformée de frourier
*   traitement de signal numérique et audio 
*   filtrage numérique 
*   analyse des résultats 
*   mathématique 

### Programme: 
#### bibliothèques necessaires:
*   os
*   numpy
*   scipy
*   matplotlib
*   playsound
*   IPython

pour installer une bibliothèque : $ pip install nom_bibliothèque

---------------------------------------

## TP2:
### Résumé: 
La première partie sera dédiée à l’implémentation de la transformée de Fourier à Court-Terme (TFCT). La fonction, que l’on nommera tfct.py, aura pour paramètres d’entrée le chemin d’un fichier son, la taille de la fenêtre d’analyse Nwin , le pas d’avancement de la fenêtre d’analyse Nhop , le nombre de points fréquentiels Nfft utilisés pour la TFD et la fréquence d’échantillonnage. On supposera dans toute la suite et par défaut que Nfft = Nwin et Nhop = Nwin/2, et on travaillera
avec une fenêtre de Hamming. Les paramètres de sortie seront la matrice TFCT du signal, notée xmat , ainsi que les vecteurs fréquentiels et temporels utiles à l’affichage de la TFCT. Cette première partie vise à réimplémenter les différentes étapes de la TFCT

### étapes :
#### 1. Transformée de Fourier à court-terme
#### 2. Principe d’incertitude temps-fréquence

---------------------------------------
## TP3 Traitement Audio
###  Reconstruction du signal audio : TFCT inverse
### Résumé:
La première partie du TP consiste à implémenter l’algorithme de Transformée de Fourier à Court-Terme Inverse (ITFCT). La fonction, que l’on nommera itfct.py, aura pour paramètres d’entrée la TFCT d’un signal, le pas d’avancement de la fenêtre d’analyse Nhop , ainsi que le nombre de points fréquentiels utilisés dans l’algorithme TFCT Nfft et la fréquence d’échantillonnage Fs du signal initial. La TFCT, notée x mat , sera écrite sous la forme d’une matrice de
dimensions $nl × L$ éterminées au $TP2$

### étape de l'algorithme OLA (overlap-Add):
*   Etape 1 : reconstruire la TFD de chaque trame à partir des colonnes de la matrice x mat de TFCT, dans des vecteurs de taille Nfft.

*   Etape 2 : reconstruire chaque trame fenêtrée en effectuant la TFD inverse (ITFD) des vecteurs de TFD : ⇒ L trames fenêtrées y_l , l ∈ [0,L − 1]
La TFD inverse reconstruit des trames de longueur Nfft. Cette longueur est supposée égale à la longueur des trames découpées lors de l’algorithme TFCT (c’est le cas si la TFD a été effectuée sur un nombre correct de points)

*   Etape 3 : décaler la l è trame y_l , de (l − 1) trames ⇒ synchronisation des y_l , l ∈ [1, L] :
y_1 [n] ⇒ y_1 [n] = x[n]w[n]
y_2 [n] ⇒ y_2 [n − Nhop ] = x[n]w[n − Nhop ]
...
y_L [n] ⇒y_L [n − (L − 1)Nhop ] = x[n]w[n − (L − 1)Nhop ]

*   Etape 4 : sommer les trames décalées  y_l [n − (l − 1)Nhop]

*   Etape 5 : normaliser le signal temporel

---------------------------------------
## TP4:
### Compression d’un Signal Audio
### Résumé:
La compression de données est un domaine clef dans l’ère du numérique : pouvoir stocker, partager, et lire des données avec le minimum d’espace de stockage, le minimum de mémoire vive, et dans un minimum de temps. La compression audio avec perte (MPEG-1 layer I-II-III) repose sur une idée simple : on ne code pas ce qui ne s’entend pas. Ainsi, l’audio compressé est sensé être identique perceptivement à l’audio original. L’objectif de cette partie est d’étudier un algorithme de compression audio inspiré de la norme MPEG-1 layer III, avec un focus sur l'effet de l'allocation de bits sur la qualité de l'enregistrement audio.






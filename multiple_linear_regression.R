#Multiple lineare Regression:
#abhängige Variable (y)=cli -> kann auch cli_plus_rent_index sein
#unabhängige Variablen (x)=rent_index + groceries_index + restaurant_price_index + local_purchasing_power_index + development

#Voraussetzungen:

#1.: Linearer Zusammenhang zwischen x-Variablen und y-Variable ist gegeben (ersichtlich aus der Korrelation)
#2.: metrisch skalierte y-Variable ist gegeben
#3.: Normalverteilung der Residuen bei der Regression - Residuen sollten in etwa normalverteilt sein
#Möglichkeiten zum testen: grafische und analytische Methode -> Hier wird nur die grafische Methode getestet mithilfe eines Histogramms

#Die Residuen sind einfach gesagt die Unterschiede zwischen den beobachteten, also den tatsächlichen y-Werten, und den durch das Modell geschätzten bzw. prognostizierten y-Werten.

model <- lm(cli ~ rent_index + groceries_index + restaurant_price_index + local_purchasing_power_index + development, data = dataFinished)

#grafische Methode: Histogramm

hist(residuals(model))

#Voraussetzung ist erfüllt, da die Verteilung als normalverteilt angesehen werden kann


#4.: Skalenbildung ist gegeben, da cli auf einer Skala ist

#IN BERICHT WEGGELASSEN
#5.:Homoskedastizität: 

#grafische Erkennung:

plot(model, 1)

#Da die rote Linie sehr wellig ist und sich eine Art Trichterbildung der Streuung zum linken Rand hin erkennen lässt, handelt es sich hier wahrscheinlich um Heteroskedastizilität und diese muss behoben werden

#Heteroskedastizilität beheben:

library(lmtest)
coeftest(model, vcov=vcovHC(model, type= "HC3")) #--> TODO:noch einmal checken!


#6.: keine Autokorrelation - Unabhängigkeit der Fehlerterme

#7.: keine Multikollinearität - übermäßige Korrelation der unabhängigen Variablen miteinander
#analytische Prüfung: Korrelationsmatrix erstellen
#subset aus Daten generieren, in welchem die zu prüfenden Variablen gespeichert werden

subset_cor <- subset(dataFinished, select = c(rent_index, groceries_index, restaurant_price_index, local_purchasing_power_index, development))
korr_tab <- cor(subset_cor, method = "pearson")
korr_tab

#Da restaurant_price_index und groceries_index eine Korrelation >0,8 haben, it dies ein Anzeichen dafür, dass eine Multikollinearität vorliegt. 
#Um die Vermutung der Multikollinearität zu bestätigen oder zu wiederlegen, haben wir ebenfalls die Methode der VIF-Werte angewandt (VIF= Variance Inflation Factor)
library(car)
vif(model)
#Keiner der Werte ist >10, daher wird die Theorie der Multikollinearität verworfen

#Alle Voraussetzungen durchgegangen, jetzt die eigentliche Auswertung/Interpretation:
summary(model)


#F-Statistik: F(5,505)=4539; p<2,2e-16: Die Signifikanz (p-Value) sollte einen möglichst kleinen Wert haben (<0,05) Wenn das so ist, leistet das Regressionsmodell einen Erklärungsbeitrag.
#Das Modell leistet einen signifikanten Erklärungsbeitrag, da der p-Wert deutlich unter 0,05 ist und es kann mit der Interpretation der weiteren Ergebnisse fortgefahren werden

#Güte des Regressionsmodells: Das Modell erklärt 97,82% der Varianz, da das R²=0,9782 ist

#Signifikanz: alle Variablen außer development haben einen signifikanten Einfluss auf den cli, da ihr p-Wert unter 0,05 ist


#DAS NACHFOLGENDE IST NICHT IM BERICHT
#Wenn rent_index um 1 steigt, steigt der cli um 0,028668
#Wenn groceries_index um 1 steigt, steigt der cli um 0,479207
#Wenn restaurant_price_index um 1 steigt, steigt der cli um 0,427674
#Wenn local_purchasing_power_index um 1 steigt, !sinkt! der cli um 0,028731

#Welcher der Einflussfaktoren hat den größten Einfluss auf den cli?:
#Um dies zu bestimmen bedarf es der standardisierten Koeffizienten. Dazu müssen alle verwendeten Variablen z-standardisiert werden mithilfe der scale()-Funktion

modelStandardised <- lm(scale(cli) ~ scale(rent_index) + scale(groceries_index) + scale(restaurant_price_index) + scale(local_purchasing_power_index) + scale(development), data = dataFinished)
summary(modelStandardised)
#Nur die Estimates haben sich verändert. Groceries-Index hat hier den betragsmäßig größten Estimate und beschreibt daher das Modell am meisten

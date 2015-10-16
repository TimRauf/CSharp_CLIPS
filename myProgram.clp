
(deftemplate A_Dann 
(slot DetName)
(slot GabDetSh)
(slot GabDetDl)
(slot GabDetV)
(slot DetTip)
(slot ZagMat)
(slot SposPol)
(slot ZagMass)
(slot DetMass)
(slot StanEm)
(slot KolTexMod))

(deftemplate A_VarTP 
(slot VarTP (type SYMBOL)))
(deftemplate B_VarTP 
(slot VarTP (type SYMBOL)))
(deftemplate A_Ai0 
(slot Ai0 (type INTEGER)))

(defrule A_TrebChertTP  ; Ïðàâèëî îïðåäåëåíèÿ òðåáîâàíèé çàäàííûõ ÷åðòåæîì 
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass)(DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?DetTip 2)) ; Òèï äåòàëè êîðïóñíàÿ
(test (<= ?GabDetSh 500)) ; Øèðèíà äåòàëè
(test (<= ?GabDetDl 500)) ; Äëèíà äåòàëè
(test (<= ?GabDetV 100)) ; Âûñîòà äåòàëè
=>
(printout myData crlf "Äåòàëü êîðïóñíîãî òèïà"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (A_VarTP (VarTP Korp))))


(defrule A_TrebChertTP2 ; Ïðàâèëî îïðåäåëåíèÿ õàðàêòåðèñòèêè îáúåêòà îáðàáîòêè
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?DetTip 1)) ; Òèï äåòàëè òåëî âðàùåíèÿ
(test (<= ?GabDetSh 250)) ; Øèðèíà äåòàëè
(test (<= ?GabDetDl 500)) ; Äëèíà äåòàëè
=>
(printout myData crlf "Äåòàëü òèïà òåëî âðàùåíèÿ "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (A_VarTP (VarTP TeloVr))))

(defrule A_TrebChertTP3 ; Ïðàâèëî îïðåäåëåíèÿ õàðàêòåðèñòèêè îáúåêòà îáðàáîòêè
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?DetTip 3)) ; Òèï äåòàëè ïðóòîê
(test (<= ?GabDetSh 250)) ; Øèðèíà äåòàëè
(test (<= ?GabDetDl 500)) ; Äëèíà äåòàëè
=>
(printout myData crlf "Äåòàëü òèïà ïðóòîê "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (A_VarTP (VarTP Prut))))


(defrule B_HarObObrTP  ; Ïðàâèëî îïðåäåëåíèÿ õàðàêòåðèñòèê îáúåêòà îáðàáîòêè 
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 1)) ; Ìàòåðèàë çàãîòîâêè
(or (test (= ?SposPol 3)) (test (= ?SposPol 5)))  ; Ñïîñîá ïîëó÷åíèÿ
(test (<= ?ZagMass 500)) ; Ìàññà çàãîòîâêè
(test (<= ?DetMass 500)) ; Ìàññà äåòàëè
=>
(printout myData crlf "Çàãîòîâêà èìååò ìèíèìàëüíûé ïðèïóñê íà îáðàáîòêó"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (B_VarTP (VarTP minObr)))
(assert (A_Ai0 (Ai0 1))))


(defrule B_HarObObrTP2  ; Ïðàâèëî îïðåäåëåíèÿ õàðàêòåðèñòèê îáúåêòà îáðàáîòêè 
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 2)) ; Ìàòåðèàë çàãîòîâêè
(or (test (= ?SposPol 3)) (test (= ?SposPol 5)))  ; Ñïîñîá ïîëó÷åíèÿ
(test (<= ?ZagMass 500)) ; Ìàññà çàãîòîâêè
(test (<= ?DetMass 500)) ; Ìàññà äåòàëè
=>
(printout myData crlf "Çàãîòîâêà èìååò ìèíèìàëüíûé ïðèïóñê íà îáðàáîòêó"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (B_VarTP (VarTP minObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP3  ; Ïðàâèëî îïðåäåëåíèÿ õàðàêòåðèñòèê îáúåêòà îáðàáîòêè 
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 3)) ; Ìàòåðèàë çàãîòîâêè
(or (test (= ?SposPol 3)) (test (= ?SposPol 5)))  ; Ñïîñîá ïîëó÷åíèÿ
(test (<= ?ZagMass 500)) ; Ìàññà çàãîòîâêè
(test (<= ?DetMass 500)) ; Ìàññà äåòàëè
=>
(printout myData crlf "Çàãîòîâêà èìååò ìèíèìàëüíûé ïðèïóñê íà îáðàáîòêó"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (B_VarTP (VarTP minObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP4  ; Ïðàâèëî îïðåäåëåíèÿ õàðàêòåðèñòèê îáúåêòà îáðàáîòêè 
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 1)) ; Ìàòåðèàë çàãîòîâêè
(test (= ?SposPol 1)) ; Ñïîñîá ïîëó÷åíèÿ
(test (<= ?ZagMass 500)) ; Ìàññà çàãîòîâêè
(test (<= ?DetMass 500)) ; Ìàññà äåòàëè
=>
(printout myData crlf "Çàãîòîâêà èìååò ïðèïóñê íà äîðàáîòêó, òðåáóåòñÿ ïîâûøåííàÿ ìåõàíîîáðàáîòêà"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (B_VarTP (VarTP maxObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP5  ; Ïðàâèëî îïðåäåëåíèÿ õàðàêòåðèñòèê îáúåêòà îáðàáîòêè 
(declare (salience 10) ) ; Ïðèîðèòåò ïðàâèëà <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 2)) ; Ìàòåðèàë çàãîòîâêè
(test (= ?SposPol 1)) ; Ñïîñîá ïîëó÷åíèÿ
(test (<= ?ZagMass 500)) ; Ìàññà çàãîòîâêè
(test (<= ?DetMass 500)) ; Ìàññà äåòàëè
=>
(printout myData crlf "Çàãîòîâêà èìååò ïðèïóñê íà äîðàáîòêó, òðåáóåòñÿ ïîâûøåííàÿ ìåõàíîîáðàáîòêà"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (B_VarTP (VarTP maxObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP6  ; Ïðàâèëî îïðåäåëåíèÿ õàðàêòåðèñòèê îáúåêòà îáðàáîòêè 
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 3)) ; Ìàòåðèàë çàãîòîâêè
(test (= ?SposPol 1)) ; Ñïîñîá ïîëó÷åíèÿ
(test (<= ?ZagMass 500)) ; Ìàññà çàãîòîâêè
(test (<= ?DetMass 500)) ; Ìàññà äåòàëè
=>
(printout myData crlf "Çàãîòîâêà èìååò ïðèïóñê íà äîðàáîòêó, òðåáóåòñÿ ïîâûøåííàÿ ìåõàíîîáðàáîòêà"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (B_VarTP (VarTP maxObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP7  ; Ïðàâèëî îïðåäåëåíèÿ õàðàêòåðèñòèê îáúåêòà îáðàáîòêè 
(declare (salience 10) ) ; Ïðèîðèòåò ïðàâèëà <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 1)) ; Ìàòåðèàë çàãîòîâêè
(or (test (= ?SposPol 2)) (test (= ?SposPol 4)))  ; Ñïîñîá ïîëó÷åíèÿ
(test (<= ?ZagMass 500)) ; Ìàññà çàãîòîâêè
(test (<= ?DetMass 500)) ; Ìàññà äåòàëè
=>
(printout myData crlf "Çàãîòîâêà èìååò ïðèïóñê íà äîðàáîòêó, òðåáóåòñÿ ñðåäíÿÿ ìåõàíîîáðàáîòêà"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (B_VarTP (VarTP medObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP8  ; Ïðàâèëî îïðåäåëåíèÿ õàðàêòåðèñòèê îáúåêòà îáðàáîòêè 
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 2)) ; Ìàòåðèàë çàãîòîâêè
(or (test (= ?SposPol 2)) (test (= ?SposPol 4)))  ; Ñïîñîá ïîëó÷åíèÿ
(test (<= ?ZagMass 500)) ; Ìàññà çàãîòîâêè
(test (<= ?DetMass 500)) ; Ìàññà äåòàëè
=>
(printout myData crlf "Çàãîòîâêà èìååò ïðèïóñê íà äîðàáîòêó, òðåáóåòñÿ ñðåäíÿÿ ìåõàíîîáðàáîòêà"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (B_VarTP (VarTP medObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP9  ; Ïðàâèëî îïðåäåëåíèÿ õàðàêòåðèñòèê îáúåêòà îáðàáîòêè 
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 3)) ; Ìàòåðèàë çàãîòîâêè
(or (test (= ?SposPol 2)) (test (= ?SposPol 4)))  ; Ñïîñîá ïîëó÷åíèÿ
(test (<= ?ZagMass 500)) ; Ìàññà çàãîòîâêè
(test (<= ?DetMass 500)) ; Ìàññà äåòàëè
=>
(printout myData crlf "Çàãîòîâêà èìååò ïðèïóñê íà äîðàáîòêó, òðåáóåòñÿ ñðåäíÿÿ ìåõàíîîáðàáîòêà"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (B_VarTP (VarTP medObr)))
(assert (A_Ai0 (Ai0 1))))

(deftemplate C_Dann2 
(slot TipProiz)
(slot KvalToch)
(slot SkorRez)
(slot PodRez (type FLOAT))
(slot GlubRez (type FLOAT))
(slot VelPart))

(deftemplate D_Obor 
(slot Obor (type SYMBOL)))
(deftemplate D_VozmStan 
(slot VozmStan (type FLOAT)))
(deftemplate C_Ai0
(slot Ai0 (type INTEGER)))

(defrule C_KompCredTexOcn  ; Ïðàâèëî îïðåäåëåíèÿ êîìïëåêñà ñðåäñòâ òåõíîëîãè÷åñêîãî îñíàùåíèÿ
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(test (= ?TipProiz 1)) ; òèï ïðîèçâîäñòâà
(test (>= ?KvalToch 10))  ; êâàëèòåò òî÷íîñòè
(test (>= ?VelPart 10))  ; âåëè÷èíà ïàðòèè
=>
(printout myData crlf "Óíèâåðñàëüíûé ñòàíîê (U) Í-íîðìàëüíîé òî÷íîñòè (N)"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_Obor (Obor UN))))



(defrule C_KompCredTexOcn2  ; Ïðàâèëî îïðåäåëåíèÿ êîìïëåêñà ñðåäñòâ òåõíîëîãè÷åñêîãî îñíàùåíèÿ
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(test (= ?TipProiz 2)) ; òèï ïðîèçâîäñòâà
(test (>= ?KvalToch 10))  ; êâàëèòåò òî÷íîñòè
(test (>= ?VelPart 10)) ; âåëè÷èíà ïàðòèè
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
=>
(printout myData crlf "Ñòàíîê øèðîêîãî íàçíà÷åíèÿ (Sh) Í-íîðìàëüíîé òî÷íîñòè (N)"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_Obor (Obor ShN))))

(defrule C_KompCredTexOcn3  ; Ïðàâèëî îïðåäåëåíèÿ êîìïëåêñà ñðåäñòâ òåõíîëîãè÷åñêîãî îñíàùåíèÿ
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(or (test (= ?TipProiz 3)) (test (= ?TipProiz 4))) ; òèï ïðîèçâîäñòâà
(test (>= ?KvalToch 10))  ; êâàëèòåò òî÷íîñòè
(test (>= ?VelPart 10)) ; âåëè÷èíà ïàðòèè
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé ñòàíîê (Ñ) Í-íîðìàëüíîé òî÷íîñòè (N)"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_Obor (Obor CN))))

(defrule C_KompCredTexOcn4  ; Ïðàâèëî îïðåäåëåíèÿ êîìïëåêñà ñðåäñòâ òåõíîëîãè÷åñêîãî îñíàùåíèÿ
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(or (test (= ?TipProiz 3)) (test (= ?TipProiz 4))) ; òèï ïðîèçâîäñòâà
(or (test (= ?KvalToch 8)) (test (= ?KvalToch 9)))  ; êâàëèòåò òî÷íîñòè
(test (>= ?VelPart 10)) ; âåëè÷èíà ïàðòèè
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé ñòàíîê (Ñ) Ï-ïîâûøåííîé òî÷íîñòè (P)"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_Obor (Obor CP))))

(defrule C_KompCredTexOcn5  ; Ïðàâèëî îïðåäåëåíèÿ êîìïëåêñà ñðåäñòâ òåõíîëîãè÷åñêîãî îñíàùåíèÿ
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(test (= ?TipProiz 2)) ; òèï ïðîèçâîäñòâà
(or (test (= ?KvalToch 8)) (test (= ?KvalToch 9)))  ; êâàëèòåò òî÷íîñòè
(test (>= ?VelPart 10)) ; âåëè÷èíà ïàðòèè
=>
(printout myData crlf " Ñòàíîê øèðîêîãî íàçíà÷åíèÿ (Sh) Ï-ïîâûøåííîé òî÷íîñòè (P)"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_Obor (Obor ShP))))

(defrule C_KompCredTexOcn6  ; Ïðàâèëî îïðåäåëåíèÿ êîìïëåêñà ñðåäñòâ òåõíîëîãè÷åñêîãî îñíàùåíèÿ
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
 (test (= ?TipProiz 1))  ; òèï ïðîèçâîäñòâà
(or (test (= ?KvalToch 8)) (test (= ?KvalToch 9)))  ; êâàëèòåò òî÷íîñòè
(test (>= ?VelPart 10)) ; âåëè÷èíà ïàðòèè
=>
(printout myData crlf " Óíèâåðñàëüíûé ñòàíîê (U) Ï-ïîâûøåííîé òî÷íîñòè (P)"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_Obor (Obor UP))))

(defrule C_KompCredTexOcn7  ; Ïðàâèëî îïðåäåëåíèÿ êîìïëåêñà ñðåäñòâ òåõíîëîãè÷åñêîãî îñíàùåíèÿ
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(test (= ?TipProiz 1))  ; òèï ïðîèçâîäñòâà
(or (test (= ?KvalToch 6)) (test (= ?KvalToch 7)))  ; êâàëèòåò òî÷íîñòè
(test (>= ?VelPart 10)) ; âåëè÷èíà ïàðòèè
=>
(printout myData crlf " Óíèâåðñàëüíûé ñòàíîê (U) S-âûñîêîé òî÷íîñòè (S)"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_Obor (Obor US))))

(defrule C_KompCredTexOcn8  ; Ïðàâèëî îïðåäåëåíèÿ êîìïëåêñà ñðåäñòâ òåõíîëîãè÷åñêîãî îñíàùåíèÿ
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(test (= ?TipProiz 2))  ; òèï ïðîèçâîäñòâà
(or (test (= ?KvalToch 6)) (test (= ?KvalToch 7)))  ; êâàëèòåò òî÷íîñòè
(test (>= ?VelPart 10)) ; âåëè÷èíà ïàðòèè
=>
(printout myData crlf " Ñòàíîê øèðîêîãî íàçíà÷åíèÿ (Sh) S-âûñîêîé òî÷íîñòè (S)"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_Obor (Obor ShS))))

(defrule C_KompCredTexOcn9  ; Ïðàâèëî îïðåäåëåíèÿ êîìïëåêñà ñðåäñòâ òåõíîëîãè÷åñêîãî îñíàùåíèÿ
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(or (test (= ?TipProiz 3)) (test (= ?TipProiz 4))) ; òèï ïðîèçâîäñòâà
(or (test (= ?KvalToch 6)) (test (= ?KvalToch 7)))  ; êâàëèòåò òî÷íîñòè
(test (>= ?VelPart 10)) ; âåëè÷èíà ïàðòèè
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé ñòàíîê (Ñ) S-âûñîêîé òî÷íîñòè (S)"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_Obor (Obor CS))))

(defrule F_HarProcObr  ; Õàðàêòåðèñòèêà ïðîöåññà îáðàáîòêè
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP minObr))
(test (>= ?SkorRez 100)) ; ñêîðîñòü ðåçàíèÿ
(or (test (>= ?PodRez 0.1)) (test (<= ?PodRez 0.2)))  ; ïîäà÷à
(test (<= ?GlubRez 1)) ; ãëóáèíà ðåçàíèÿ
=>
(printout myData crlf "Çàãîòîâêà èìååò ìàêñèìàëüíî ïðèáëèæåííóþ ôîðìó ê äåòàëè, ñêîðîñòü ðåçàíèÿ ðàâíà "?SkorRez", ïîäà÷à "?PodRez ", ãëóáèíà ðåçàíèÿ  "?GlubRez ", " crlf  "  ñëåäîâàòåëüíî ïîêàçàòåëè øåðîõîâàòîñòè íàèëó÷øèå, âðåìÿ îáðàáîòêè óìåíüøàåòñÿ, íî óâåëè÷èâàþòñÿ çàòðàòû â ñâÿçè ñ ðàñõîäîì èíñòðóìåíòà "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_VozmStan (VozmStan 1.0)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr2  ; Õàðàêòåðèñòèêà ïðîöåññà îáðàáîòêè
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP minObr))
(and (test (<= ?SkorRez 99)) (test (>= ?SkorRez 60))) ; ñêîðîñòü ðåçàíèÿ
(or (test (>= ?PodRez 0.21)) (test (<= ?PodRez 0.4)))  ; ïîäà÷à
(or (test (>= ?GlubRez 1.1)) (test (<= ?GlubRez 3))); ãëóáèíà ðåçàíèÿ
=>
(printout myData crlf " Çàãîòîâêà èìååò ìàêñèìàëüíî ïðèáëèæåííóþ ôîðìó ê äåòàëè, ñêîðîñòü ðåçàíèÿ ðàâíà "?SkorRez", ïîäà÷à "?PodRez ", ãëóáèíà ðåçàíèÿ  "?GlubRez ", " crlf  "  ñëåäîâàòåëüíî ïîêàçàòåëè øåðîõîâàòîñòè â ïðåäåëàõ íîðìû, âðåìÿ îáðàáîòêè ñðåäíåå, çàòðàòû ñðåäíèå "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_VozmStan (VozmStan 0.9)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr3  ; Õàðàêòåðèñòèêà ïðîöåññà îáðàáîòêè
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP minObr))
(and (test (<= ?SkorRez 59)) (test (>= ?SkorRez 20))) ; ñêîðîñòü ðåçàíèÿ
(or (test (>= ?PodRez 0.41)) (test (<= ?PodRez 0.6)))  ; ïîäà÷à
(or (test (>= ?GlubRez 3.1)) (test (<= ?GlubRez 6))); ãëóáèíà ðåçàíèÿ
=>
(printout myData crlf " Çàãîòîâêà èìååò ìàêñèìàëüíî ïðèáëèæåííóþ ôîðìó ê äåòàëè,
ñêîðîñòü ðåçàíèÿ ðàâíà "?SkorRez", ïîäà÷à "?PodRez ", ãëóáèíà ðåçàíèÿ  "?GlubRez ", " crlf  " ñëåäîâàòåëüíî ïîêàçàòåëè øåðîõîâàòîñòè íèçêèå, âðåìÿ îáðàáîòêè  ñðåäíåå, çàòðàòû íèçêèå "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_VozmStan (VozmStan 0.8)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr4  ; Õàðàêòåðèñòèêà ïðîöåññà îáðàáîòêè
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP minObr))
(test (<= ?SkorRez 19)) ; ñêîðîñòü ðåçàíèÿ
(test (>= ?PodRez 0.61)) ; ïîäà÷à
(test (>= ?GlubRez 6.1)) ; ãëóáèíà ðåçàíèÿ
=>
(printout myData crlf " Çàãîòîâêà èìååò ìàêñèìàëüíî ïðèáëèæåííóþ ôîðìó ê äåòàëè, ñêîðîñòü ðåçàíèÿ ðàâíà "?SkorRez", ïîäà÷à "?PodRez ", ãëóáèíà ðåçàíèÿ  "?GlubRez ", " crlf  " ñëåäîâàòåëüíî ïîêàçàòåëè øåðîõîâàòîñòè íèçêèå, âðåìÿ îáðàáîòêè  óâåëè÷èâàåòñÿ, çàòðàòû íèçêèå "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_VozmStan (VozmStan 0.6)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr5  ; Õàðàêòåðèñòèêà ïðîöåññà îáðàáîòêè
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP medObr))
(test (>= ?SkorRez 100)) ; ñêîðîñòü ðåçàíèÿ
(or (test (>= ?PodRez 0.1)) (test (<= ?PodRez 0.2)))  ; ïîäà÷à
(test (<= ?GlubRez 1)) ; ãëóáèíà ðåçàíèÿ
=>
(printout myData crlf " Çàãîòîâêà èìååò ïðèïóñê íà ìåõàíîîáðàáîòêó, ñêîðîñòü ðåçàíèÿ ðàâíà "?SkorRez", ïîäà÷à "?PodRez ", ãëóáèíà ðåçàíèÿ  "?GlubRez ", " crlf  "  ñëåäîâàòåëüíî ïîêàçàòåëè øåðîõîâàòîñòè íàèëó÷øèå, âðåìÿ îáðàáîòêè óìåíüøàåòñÿ, íî óâåëè÷èâàþòñÿ çàòðàòû â ñâÿçè ñ ðàñõîäîì èíñòðóìåíòà "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_VozmStan (VozmStan 0.8)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr6  ; Õàðàêòåðèñòèêà ïðîöåññà îáðàáîòêè
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP medObr))
(and (test (<= ?SkorRez 99)) (test (>= ?SkorRez 60))) ; ñêîðîñòü ðåçàíèÿ
(or (test (>= ?PodRez 0.21)) (test (<= ?PodRez 0.4)))  ; ïîäà÷à
(or (test (>= ?GlubRez 1.1)) (test (<= ?GlubRez 3))); ãëóáèíà ðåçàíèÿ
=>
(printout myData crlf " Çàãîòîâêà èìååò ïðèïóñê íà ìåõàíîîáðàáîòêó, ñêîðîñòü ðåçàíèÿ ðàâíà "?SkorRez", ïîäà÷à "?PodRez ", ãëóáèíà ðåçàíèÿ  "?GlubRez ", " crlf  "  ñëåäîâàòåëüíî ïîêàçàòåëè øåðîõîâàòîñòè â ïðåäåëàõ íîðìû, âðåìÿ îáðàáîòêè ñðåäíåå, çàòðàòû ñðåäíèå "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_VozmStan (VozmStan 0.7)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr7  ; Õàðàêòåðèñòèêà ïðîöåññà îáðàáîòêè
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP medObr))
(and (test (<= ?SkorRez 59)) (test (>= ?SkorRez 20))) ; ñêîðîñòü ðåçàíèÿ
(or (test (>= ?PodRez 0.41)) (test (<= ?PodRez 0.6)))  ; ïîäà÷à
(or (test (>= ?GlubRez 3.1)) (test (<= ?GlubRez 6))); ãëóáèíà ðåçàíèÿ
=>
(printout myData crlf " Çàãîòîâêà èìååò ïðèïóñê íà ìåõàíîîáðàáîòêó, ñêîðîñòü ðåçàíèÿ ðàâíà "?SkorRez", ïîäà÷à "?PodRez ", ãëóáèíà ðåçàíèÿ  "?GlubRez ", " crlf  " ñëåäîâàòåëüíî ïîêàçàòåëè øåðîõîâàòîñòè íèçêèå, âðåìÿ îáðàáîòêè  ñðåäíåå, çàòðàòû íèçêèå "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_VozmStan (VozmStan 0.6)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr8  ; Õàðàêòåðèñòèêà ïðîöåññà îáðàáîòêè
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP medObr))
(test (<= ?SkorRez 19)) ; ñêîðîñòü ðåçàíèÿ
(test (>= ?PodRez 0.61)) ; ïîäà÷à
(test (>= ?GlubRez 6.1)) ; ãëóáèíà ðåçàíèÿ
=>
(printout myData crlf " Çàãîòîâêà èìååò ïðèïóñê íà ìåõàíîîáðàáîòêó, ñêîðîñòü ðåçàíèÿ ðàâíà "?SkorRez", ïîäà÷à "?PodRez ", ãëóáèíà ðåçàíèÿ  "?GlubRez ", " crlf  " ñëåäîâàòåëüíî ïîêàçàòåëè øåðîõîâàòîñòè íèçêèå, âðåìÿ îáðàáîòêè  óâåëè÷èâàåòñÿ, çàòðàòû íèçêèå "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_VozmStan (VozmStan 0.5)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr9  ; Õàðàêòåðèñòèêà ïðîöåññà îáðàáîòêè
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP maxObr))
(test (>= ?SkorRez 100)) ; ñêîðîñòü ðåçàíèÿ
(or (test (>= ?PodRez 0.1)) (test (<= ?PodRez 0.2)))  ; ïîäà÷à
(test (<= ?GlubRez 1)) ; ãëóáèíà ðåçàíèÿ
=>
(printout myData crlf " Çàãîòîâêà èìååò áîëüøîé ïðèïóñê íà ìåõàíîîáðàáîòêó, ñêîðîñòü ðåçàíèÿ ðàâíà "?SkorRez", ïîäà÷à "?PodRez ", ãëóáèíà ðåçàíèÿ  "?GlubRez ", " crlf  "  ñëåäîâàòåëüíî ïîêàçàòåëè øåðîõîâàòîñòè íàèëó÷øèå, âðåìÿ îáðàáîòêè óìåíüøàåòñÿ, íî óâåëè÷èâàþòñÿ çàòðàòû â ñâÿçè ñ ðàñõîäîì èíñòðóìåíòà "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_VozmStan (VozmStan 0.8)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr10  ; Õàðàêòåðèñòèêà ïðîöåññà îáðàáîòêè
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP maxObr))
(and (test (<= ?SkorRez 99)) (test (>= ?SkorRez 60))) ; ñêîðîñòü ðåçàíèÿ
(or (test (>= ?PodRez 0.21)) (test (<= ?PodRez 0.4)))  ; ïîäà÷à
(or (test (>= ?GlubRez 1.1)) (test (<= ?GlubRez 3))); ãëóáèíà ðåçàíèÿ
=>
(printout myData crlf " Çàãîòîâêà èìååò áîëüøîé ïðèïóñê íà ìåõàíîîáðàáîòêó, ñêîðîñòü ðåçàíèÿ ðàâíà "?SkorRez", ïîäà÷à "?PodRez ", ãëóáèíà ðåçàíèÿ  "?GlubRez ", " crlf  "  ñëåäîâàòåëüíî ïîêàçàòåëè øåðîõîâàòîñòè â ïðåäåëàõ íîðìû, âðåìÿ îáðàáîòêè ñðåäíåå, çàòðàòû ñðåäíèå "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_VozmStan (VozmStan 0.7)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr11  ; Õàðàêòåðèñòèêà ïðîöåññà îáðàáîòêè
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP maxObr))
(and (test (<= ?SkorRez 59)) (test (>= ?SkorRez 20))) ; ñêîðîñòü ðåçàíèÿ
(or (test (>= ?PodRez 0.41)) (test (<= ?PodRez 0.6)))  ; ïîäà÷à
(or (test (>= ?GlubRez 3.1)) (test (<= ?GlubRez 6))); ãëóáèíà ðåçàíèÿ
=>
(printout myData crlf " Çàãîòîâêà èìååò áîëüøîé ïðèïóñê íà ìåõàíîîáðàáîòêó, ñêîðîñòü ðåçàíèÿ ðàâíà "?SkorRez", ïîäà÷à "?PodRez ", ãëóáèíà ðåçàíèÿ  "?GlubRez ", " crlf  " ñëåäîâàòåëüíî ïîêàçàòåëè øåðîõîâàòîñòè íèçêèå, âðåìÿ îáðàáîòêè  ñðåäíåå, çàòðàòû íèçêèå "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_VozmStan (VozmStan 0.6)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr12  ; Õàðàêòåðèñòèêà ïðîöåññà îáðàáîòêè
(declare (salience 10)) ; Ïðèîðèòåò ïðàâèëà <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP maxObr))
(test (<= ?SkorRez 19)) ; ñêîðîñòü ðåçàíèÿ
(test (>= ?PodRez 0.61)) ; ïîäà÷à
(test (>= ?GlubRez 6.1)) ; ãëóáèíà ðåçàíèÿ
=>
(printout myData crlf " Çàãîòîâêà èìååò áîëüøîé ïðèïóñê íà ìåõàíîîáðàáîòêó, ñêîðîñòü ðåçàíèÿ ðàâíà "?SkorRez", ïîäà÷à "?PodRez ", ãëóáèíà ðåçàíèÿ  "?GlubRez ", " crlf  " ñëåäîâàòåëüíî ïîêàçàòåëè øåðîõîâàòîñòè íèçêèå, âðåìÿ îáðàáîòêè  óâåëè÷èâàåòñÿ, çàòðàòû íèçêèå "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_VozmStan (VozmStan 0.4)))
(assert (C_Ai0 (Ai0 1))))

(deftemplate D_Dann3 
(slot KolUst)
(slot OpTip)
(slot OpVr)
(slot PrimSOJ)
(slot Osnastka)
(slot Zahvat))

(deftemplate D_Oper 
(slot Oper (type SYMBOL)))
(deftemplate D_StanGrupp 
(slot StanGrupp (type SYMBOL)))
(deftemplate D_Ai0
(slot Ai0 (type INTEGER)))


(defrule D_UslovVypolSE  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 1)) (test (= ?OpTip 10))) ; òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 1))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", ïðèìåíåíèå ÑÎÆ óëó÷øèòü øåðîõîâàòîñòü è óìåíüøèò èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê òîêàðíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE2  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))); òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 1))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", ïðèìåíåíèå ÑÎÆ óëó÷øèòü øåðîõîâàòîñòü è óìåíüøèò èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê òîêàðíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE3  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))); òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 2))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", îòñóòñòâèå ÑÎÆ ìîæåò ñêàçàòüñÿ íà øåðîõîâàòîñòè è óâåëè÷èòü èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê òîêàðíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE4  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 1)) (test (= ?OpTip 10))) ; òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 2))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr",îòñóòñòâèå ÑÎÆ ìîæåò ñêàçàòüñÿ íà øåðîõîâàòîñòè è óâåëè÷èòü èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê òîêàðíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE5  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 1)) (test (= ?OpTip 10))) ; òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 1))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", ïðèìåíåíèå ÑÎÆ óëó÷øèòü øåðîõîâàòîñòü è óìåíüøèò èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê òîêàðíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî âîçìîæíî ïîãðåøíîñòè áàçèðîâàíèÿ "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE6  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))); òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 1))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", ïðèìåíåíèå ÑÎÆ óëó÷øèòü øåðîõîâàòîñòü è óìåíüøèò èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê òîêàðíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî âîçìîæíî ïîãðåøíîñòè áàçèðîâàíèÿ "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE7  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))); òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 2))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", îòñóòñòâèå ÑÎÆ ìîæåò ñêàçàòüñÿ íà øåðîõîâàòîñòè è óâåëè÷èòü èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê òîêàðíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî âîçìîæíî ïîãðåøíîñòè áàçèðîâàíèÿ "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE8  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 1)) (test (= ?OpTip 10))) ; òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 2))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", îòñóòñòâèå ÑÎÆ ìîæåò ñêàçàòüñÿ íà øåðîõîâàòîñòè è óâåëè÷èòü èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê òîêàðíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî âîçìîæíî ïîãðåøíîñòè áàçèðîâàíèÿ "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE9  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 2)) (test (= ?OpTip 10))) ; òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 1))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", ïðèìåíåíèå ÑÎÆ óëó÷øèòü øåðîõîâàòîñòü è óìåíüøèò èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê ôðåçåðíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Frezern)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE10  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(or
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))) 
(or (test (= ?OpTip 7)) (test (= ?OpTip 8)))); òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 1))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", ïðèìåíåíèå ÑÎÆ óëó÷øèòü øåðîõîâàòîñòü è óìåíüøèò èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê ñâåðëèëüíî-ðàñòî÷íîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Sverl-Rastoch)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE11  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(test (= ?OpTip 6)); òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", ,  " crlf  " Ñòàíîê îòíîñèòñÿ ê øëèôîâàëüíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Shlifov)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE12  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 2)) (test (= ?OpTip 10))) ; òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 2))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", îòñóòñòâèå ÑÎÆ ìîæåò ñêàçàòüñÿ íà øåðîõîâàòîñòè è óâåëè÷èòü èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê ôðåçåðíîé ãðóïïå ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Frezern)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE13  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 1)) (test (= ?OpTip 10))) ; òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 1))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", ïðèìåíåíèå ÑÎÆ óëó÷øèòü øåðîõîâàòîñòü è óìåíüøèò èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê òîêàðíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî âîçìîæíî ïîãðåøíîñòè áàçèðîâàíèÿ "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Frezern)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE14  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))); òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 2))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", îòñóòñòâèå ÑÎÆ ìîæåò ñêàçàòüñÿ íà øåðîõîâàòîñòè è óâåëè÷èòü èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê ôðåçåðíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî âîçìîæíî ïîãðåøíîñòè áàçèðîâàíèÿ "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Frezern)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE15  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 2)) ; êîëè÷åñòâî óñòàíîâîâ
(test (= ?OpTip 6)); òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", ,  " crlf  " Ñòàíîê îòíîñèòñÿ ê øëèôîâàëüíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî âîçìîæíî ïîãðåøíîñòè áàçèðîâàíèÿ "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Shlifov)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE16  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))) 
(or (test (= ?OpTip 7)) (test (= ?OpTip 8))); òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 2))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", îòñóòñòâèå ÑÎÆ ìîæåò ñêàçàòüñÿ íà øåðîõîâàòîñòè è óâåëè÷èòü èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê ñâåðëèëüíî-ðàñòî÷íîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Sverl-Rastoch)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE17  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 2)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))) 
(or (test (= ?OpTip 7)) (test (= ?OpTip 8))); òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 2))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", îòñóòñòâèå ÑÎÆ ìîæåò ñêàçàòüñÿ íà øåðîõîâàòîñòè è óâåëè÷èòü èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê ñâåðëèëüíî-ðàñòî÷íîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî âîçìîæíî ïîãðåøíîñòè áàçèðîâàíèÿ  "  crlf)
(assert (D_StanGrupp (StanGrupp Sverl-Rastoch)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE171  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 2)) ; êîëè÷åñòâî óñòàíîâîâ
(or 
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))) 
(or (test (= ?OpTip 7)) (test (= ?OpTip 8)))); òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 1))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", ïðèìåíåíèå ÑÎÆ óëó÷øèòü øåðîõîâàòîñòü è óìåíüøèò èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê ñâåðëèëüíî-ðàñòî÷íîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî âîçìîæíî ïîãðåøíîñòè áàçèðîâàíèÿ  "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Sverl-Rastoch)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE18  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Prut)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 1)) (test (= ?OpTip 3))) ; òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 2))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", îòñóòñòâèå ÑÎÆ ìîæåò ñêàçàòüñÿ íà øåðîõîâàòîñòè è óâåëè÷èòü èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê ñòðîãàëüíî-ïðîòÿæíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Strog-Protyaj)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE19  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Prut))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 1)) (test (= ?OpTip 3))) ; òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 2))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", ïðèìåíåíèå ÑÎÆ óëó÷øèòü øåðîõîâàòîñòü è óìåíüøèò èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê ñòðîãàëüíî-ïðîòÿæíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Strog-Protyaj)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE20  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 5)) (test (= ?OpTip 11))) ; òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 2))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", îòñóòñòâèå ÑÎÆ ìîæåò ñêàçàòüñÿ íà øåðîõîâàòîñòè è óâåëè÷èòü èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê çóáîîáðàáàòûâàþùåé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst" "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp ZubObrb)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE21 ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(or (test (= ?OpTip 5)) (test (= ?OpTip 11))) ; òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 2))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", ïðèìåíåíèå ÑÎÆ óëó÷øèòü øåðîõîâàòîñòü è óìåíüøèò èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê çóáîîáðàáàòûâàþùåé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst" "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp ZubObrb)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE22  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(or
(or (test (= ?OpTip 2)) (test (= ?OpTip 3)))
(or (test (= ?OpTip 7)) (test (= ?OpTip 10)))) ; òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 2))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", îòñóòñòâèå ÑÎÆ ìîæåò ñêàçàòüñÿ íà øåðîõîâàòîñòè è óâåëè÷èòü èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê àãðåãàòíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst" "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Agregat)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE23 ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(or
(or (test (= ?OpTip 2)) (test (= ?OpTip 3)))
(or (test (= ?OpTip 7)) (test (= ?OpTip 10)))) ; òèï îïåðàöèè
 (test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
(test (= ?PrimSOJ 2))  ; ïðèìåíåíèå ÑÎÆ
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", ïðèìåíåíèå ÑÎÆ óëó÷øèòü øåðîõîâàòîñòü è óìåíüøèò èçíîñ èíñòðóìåíòà,  " crlf  " Ñòàíîê îòíîñèòñÿ ê àãðåãàòíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst" "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Agregat)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE24  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 2)) ; êîëè÷åñòâî óñòàíîâîâ
(test (= ?OpTip 6)); òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", ,  " crlf  " Ñòàíîê îòíîñèòñÿ ê øëèôîâàëüíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî âîçìîæíî ïîãðåøíîñòè áàçèðîâàíèÿ "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Shlifov)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE25  ; Ïðàâèëî îïðåäåëåíèÿ óñëîâèÿ âûïîëíåíèÿ ñòðóêòóðíîãî ýëåìåíòà
(declare (salience 9)) ; Ïðèîðèòåò ïðàâèëà <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; êîëè÷åñòâî óñòàíîâîâ
(test (= ?OpTip 6)); òèï îïåðàöèè
(test (>= ?OpVr 0.1))  ; âðåìÿ âûïîëíåíèÿ îïåðàöèè
=>
(printout myData crlf "Âðåìÿ âûïîëíåíèÿ îïåðàöèè "?OpVr", ,  " crlf  " Ñòàíîê îòíîñèòñÿ ê øëèôîâàëüíîé ãðóïïå " crlf  " Êîëè÷åñòâî óñòàíîâîâ  "?KolUst", ñëåäîâàòåëüíî îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü "  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (D_StanGrupp (StanGrupp Shlifov)))
(assert (D_Ai0 (Ai0 1))))


(deftemplate Itog (slot Itog))

(defrule Itog1  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)) )
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé òîêàðíûé ñòàíîê âûñîêîé òî÷íîñòè,  "crlf"  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè "crlf"  Âîçìîæíûå ìîäåëè: "crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog1))))

(defrule Itog2  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Òîêàðíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog2))))

(defrule Itog3  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé òîêàðíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog3))))

(defrule Itog4  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé òîêàðíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog4))))

(defrule Itog5  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Òîêàðíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %.îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog5))))

(defrule Itog6  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé òîêàðíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %.îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog6))))

(defrule Itog7  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé òîêàðíûé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog7))))

(defrule Itog8  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé òîêàðíûé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %.îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog8))))

(defrule Itog9  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Òîêàðíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %.îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog9))))


(defrule Itog111  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé òîêàðíûé ñòàíîê âûñîêîé òî÷íîñòè,  "crlf"  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. "crlf"  Âîçìîæíûå ìîäåëè: "crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog1))))

(defrule Itog211  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Òîêàðíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog2))))

(defrule Itog311  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé òîêàðíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog3))))

(defrule Itog411  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé òîêàðíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog4))))

(defrule Itog511  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Òîêàðíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog5))))

(defrule Itog611  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé òîêàðíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog6))))

(defrule Itog711  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé òîêàðíûé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog7))))

(defrule Itog811  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé òîêàðíûé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog8))))

(defrule Itog911  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Òîêàðíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog9))))

(defrule Itog11  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé ôðåçåðíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog11))))


(defrule Itog12  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ôðåçåðíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ âûñîêîé òî÷íîñòè,  " crlf  " ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog12))))

(defrule Itog13  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ôðåçåðíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog13))))

(defrule Itog14  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ôðåçåðíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog14))))

(defrule Itog15  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ôðåçåðíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog15))))

(defrule Itog16  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé ôðåçåðíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog16))))

(defrule Itog17  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé ôðåçåðíûé ñòàíîê íîðìàëüíîé òî÷íîñòè," crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog17))))

(defrule Itog18  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ôðåçåðíûé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog18))))

(defrule Itog19  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ôðåçåðíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog19))))

(defrule Itog1111  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé ôðåçåðíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog11))))


(defrule Itog121  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ôðåçåðíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ âûñîêîé òî÷íîñòè,  " crlf  " ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %." crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog12))))

(defrule Itog131  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ôðåçåðíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog13))))

(defrule Itog141  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ôðåçåðíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog14))))

(defrule Itog151  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ôðåçåðíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog15))))

(defrule Itog161  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé ôðåçåðíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %." crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog16))))

(defrule Itog171  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé ôðåçåðíûé ñòàíîê íîðìàëüíîé òî÷íîñòè," crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %." crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog17))))

(defrule Itog181  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ôðåçåðíûé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog18))))

(defrule Itog191  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ôðåçåðíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog19))))

(defrule Itog21  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
 (or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé ôðåçåðíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "   ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog21))))

(defrule Itog22  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê øèðîêîãî íàçíà÷åíèÿ âûñîêîé òî÷íîñòè,  " crlf  "   ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog22))))

(defrule Itog23  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "   ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog23))))

(defrule Itog24  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "   ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog24))))

(defrule Itog25  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê øèðîêîãî íàçíà÷åíèÿ ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog25))))

(defrule Itog26  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog26))))

(defrule Itog27  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog27))))

(defrule Itog28  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "   ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog28))))

(defrule Itog29  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê øèðîêîãî íàçíà÷åíèÿ íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog29))))

(defrule Itog2111  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé ôðåçåðíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "   ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog21))))

(defrule Itog221  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê øèðîêîãî íàçíà÷åíèÿ âûñîêîé òî÷íîñòè,  " crlf  "   ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog22))))

(defrule Itog231  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "   ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog23))))

(defrule Itog241  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "   ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog24))))

(defrule Itog251  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê øèðîêîãî íàçíà÷åíèÿ ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog25))))

(defrule Itog261  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog26))))

(defrule Itog271  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog27))))

(defrule Itog281  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "   ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75%.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog28))))

(defrule Itog291  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñâåðëèëüíî-ðàñòî÷íîé ñòàíîê øèðîêîãî íàçíà÷åíèÿ íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog29))))

(defrule Itog31  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé øëèôîâàëüíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog31))))

(defrule Itog32  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Øëèôîâàëüíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog32))))

(defrule Itog33  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé øëèôîâàëüíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog33))))

(defrule Itog34  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé øëèôîâàëüíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog34))))

(defrule Itog35  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Øëèôîâàëüíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog35))))

(defrule Itog36  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé øëèôîâàëüíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog36))))

(defrule Itog37  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>(printout myData crlf " Ñïåöèàëèçèðîâàííûé øëèôîâàëüíûé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  " ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog37))))

(defrule Itog38  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé øëèôîâàëüíûé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  " ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog38))))

(defrule Itog39  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>(printout myData crlf " Øëèôîâàëüíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog39))))


(defrule Itog3111  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé øëèôîâàëüíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog31))))

(defrule Itog321  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Øëèôîâàëüíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog32))))

(defrule Itog331  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé øëèôîâàëüíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog33))))

(defrule Itog341  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé øëèôîâàëüíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog34))))

(defrule Itog351  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Øëèôîâàëüíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog35))))

(defrule Itog361  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé øëèôîâàëüíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog36))))

(defrule Itog371  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>(printout myData crlf " Ñïåöèàëèçèðîâàííûé øëèôîâàëüíûé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  " ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog37))))

(defrule Itog381  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé øëèôîâàëüíûé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  " ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog38))))

(defrule Itog391  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>(printout myData crlf " Øëèôîâàëüíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog39))))


(defrule Itog41  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé àãðåãàòíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog41))))

(defrule Itog42  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Àãðåãàòíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog42))))

(defrule Itog43  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé àãðåãàòíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog43))))

(defrule Itog44  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé àãðåãàòíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog44))))

(defrule Itog45  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Àãðåãàòíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog45))))

(defrule Itog46  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé àãðåãàòíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog46))))

(defrule Itog47  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé àãðåãàòíûé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog47))))

(defrule Itog48  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé àãðåãàòíûé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog48))))

(defrule Itog49  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Àãðåãàòíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog49))))

(defrule Itog4111  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé àãðåãàòíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog41))))

(defrule Itog421  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Àãðåãàòíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog42))))

(defrule Itog431  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé àãðåãàòíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %." crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog43))))

(defrule Itog441  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé àãðåãàòíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog44))))

(defrule Itog451  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Àãðåãàòíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog45))))

(defrule Itog461  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé àãðåãàòíûé ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog46))))

(defrule Itog471  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé àãðåãàòíûé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog47))))

(defrule Itog481  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé àãðåãàòíûé ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog48))))

(defrule Itog491  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Àãðåãàòíûé ñòàíîê øèðîêîãî íàçíà÷åíèÿ íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog49))))

(defrule Itog51  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé çóáîîáðàáàòûâàþùèé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog51))))

(defrule Itog52  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Çóáîîáðàáàòûâàþùèé  ñòàíîê øèðîêîãî íàçíà÷åíèÿ âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog52))))

(defrule Itog53  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé çóáîîáðàáàòûâàþùèé  ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog53))))

(defrule Itog54  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé çóáîîáðàáàòûâàþùèé  ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog54))))

(defrule Itog55  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Çóáîîáðàáàòûâàþùèé  ñòàíîê øèðîêîãî íàçíà÷åíèÿ ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog55))))

(defrule Itog56  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé çóáîîáðàáàòûâàþùèé  ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog56))))

(defrule Itog57  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé çóáîîáðàáàòûâàþùèé  ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog57))))

(defrule Itog58  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé çóáîîáðàáàòûâàþùèé  ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog58))))

(defrule Itog59  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Çóáîîáðàáàòûâàþùèé  ñòàíîê øèðîêîãî íàçíà÷åíèÿ íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog59))))

(defrule Itog5111  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé çóáîîáðàáàòûâàþùèé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog51))))

(defrule Itog521  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Çóáîîáðàáàòûâàþùèé  ñòàíîê øèðîêîãî íàçíà÷åíèÿ âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog52))))

(defrule Itog531  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé çóáîîáðàáàòûâàþùèé  ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %." crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog53))))

(defrule Itog541  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé çóáîîáðàáàòûâàþùèé  ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog54))))

(defrule Itog551  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Çóáîîáðàáàòûâàþùèé  ñòàíîê øèðîêîãî íàçíà÷åíèÿ ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog55))))

(defrule Itog561  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé çóáîîáðàáàòûâàþùèé  ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog56))))

(defrule Itog571  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé çóáîîáðàáàòûâàþùèé  ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog57))))

(defrule Itog581  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé çóáîîáðàáàòûâàþùèé  ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog58))))

(defrule Itog591  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Çóáîîáðàáàòûâàþùèé  ñòàíîê øèðîêîãî íàçíà÷åíèÿ íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog59))))


(defrule Itog61  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé ñòðîãàëüíî-ïðîòÿæíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog61))))

(defrule Itog62  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê øèðîêîãî íàçíà÷åíèÿ âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog62))))

(defrule Itog63  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog63))))

(defrule Itog64  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog64))))

(defrule Itog65  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê øèðîêîãî íàçíà÷åíèÿ ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog65))))

(defrule Itog66  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog66))))

(defrule Itog67  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog67))))

(defrule Itog68  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog68))))

(defrule Itog69  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê øèðîêîãî íàçíà÷åíèÿ íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 80-95 %. îáåñïå÷èâàåòñÿ íàèáîëüøàÿ òî÷íîñòü îáðàáîòêè " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog69))))

(defrule Itog6111  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Ñïåöèàëèçèðîâàííûé ñòðîãàëüíî-ïðîòÿæíûé ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog61))))

(defrule Itog621  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê øèðîêîãî íàçíà÷åíèÿ âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog62))))

(defrule Itog631  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê âûñîêîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog63))))

(defrule Itog641  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog64))))

(defrule Itog651  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê øèðîêîãî íàçíà÷åíèÿ ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog65))))

(defrule Itog661  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê ïîâûøåííîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog66))))

(defrule Itog671  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñïåöèàëèçèðîâàííûé ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog67))))

(defrule Itog681  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Óíèâåðñàëüíûé ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %. " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog68))))

(defrule Itog691  ; Ïðàâèëî íàçíà÷åíèÿ ñòàíêà
(declare (salience 8)) ; Ïðèîðèòåò ïðàâèëà +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Ñòðîãàëüíî-ïðîòÿæíûé  ñòàíîê øèðîêîãî íàçíà÷åíèÿ íîðìàëüíîé òî÷íîñòè,  " crlf  "  ýôôåêòèâíîñòü ñîñòàâëÿåò 50-75 %.  " crlf  " Âîçìîæíûå ìîäåëè:"  crlf);; Âûâîä â ôàéë ñîîáùåíèÿ
(assert (Itog (Itog Itog69))))


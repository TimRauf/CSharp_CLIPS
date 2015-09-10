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

(defrule A_TrebChertTP  ; Правило определения требований заданных чертежом 
(declare (salience 10)) ; Приоритет правила <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass)(DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?DetTip 2)) ; Тип детали корпусная
(test (<= ?GabDetSh 500)) ; Ширина детали
(test (<= ?GabDetDl 500)) ; Длина детали
(test (<= ?GabDetV 100)) ; Высота детали
=>
(printout myData crlf "Деталь корпусного типа"  crlf);; Вывод в файл сообщения
(assert (A_VarTP (VarTP Korp))))


(defrule A_TrebChertTP2 ; Правило определения характеристики объекта обработки
(declare (salience 10)) ; Приоритет правила <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?DetTip 1)) ; Тип детали тело вращения
(test (<= ?GabDetSh 250)) ; Ширина детали
(test (<= ?GabDetDl 500)) ; Длина детали
=>
(printout myData crlf "Деталь типа тело вращения "  crlf);; Вывод в файл сообщения
(assert (A_VarTP (VarTP TeloVr))))

(defrule A_TrebChertTP3 ; Правило определения характеристики объекта обработки
(declare (salience 10)) ; Приоритет правила <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?DetTip 3)) ; Тип детали пруток
(test (<= ?GabDetSh 250)) ; Ширина детали
(test (<= ?GabDetDl 500)) ; Длина детали
=>
(printout myData crlf "Деталь типа пруток "  crlf);; Вывод в файл сообщения
(assert (A_VarTP (VarTP Prut))))


(defrule B_HarObObrTP  ; Правило определения характеристик объекта обработки 
(declare (salience 10)) ; Приоритет правила <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 1)) ; Материал заготовки
(or (test (= ?SposPol 3)) (test (= ?SposPol 5)))  ; Способ получения
(test (<= ?ZagMass 500)) ; Масса заготовки
(test (<= ?DetMass 500)) ; Масса детали
=>
(printout myData crlf "Заготовка имеет минимальный припуск на обработку"  crlf);; Вывод в файл сообщения
(assert (B_VarTP (VarTP minObr)))
(assert (A_Ai0 (Ai0 1))))


(defrule B_HarObObrTP2  ; Правило определения характеристик объекта обработки 
(declare (salience 10)) ; Приоритет правила <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 2)) ; Материал заготовки
(or (test (= ?SposPol 3)) (test (= ?SposPol 5)))  ; Способ получения
(test (<= ?ZagMass 500)) ; Масса заготовки
(test (<= ?DetMass 500)) ; Масса детали
=>
(printout myData crlf "Заготовка имеет минимальный припуск на обработку"  crlf);; Вывод в файл сообщения
(assert (B_VarTP (VarTP minObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP3  ; Правило определения характеристик объекта обработки 
(declare (salience 10)) ; Приоритет правила <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 3)) ; Материал заготовки
(or (test (= ?SposPol 3)) (test (= ?SposPol 5)))  ; Способ получения
(test (<= ?ZagMass 500)) ; Масса заготовки
(test (<= ?DetMass 500)) ; Масса детали
=>
(printout myData crlf "Заготовка имеет минимальный припуск на обработку"  crlf);; Вывод в файл сообщения
(assert (B_VarTP (VarTP minObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP4  ; Правило определения характеристик объекта обработки 
(declare (salience 10)) ; Приоритет правила <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 1)) ; Материал заготовки
(test (= ?SposPol 1)) ; Способ получения
(test (<= ?ZagMass 500)) ; Масса заготовки
(test (<= ?DetMass 500)) ; Масса детали
=>
(printout myData crlf "Заготовка имеет припуск на доработку, требуется повышенная механообработка"  crlf);; Вывод в файл сообщения
(assert (B_VarTP (VarTP maxObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP5  ; Правило определения характеристик объекта обработки 
(declare (salience 10) ) ; Приоритет правила <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 2)) ; Материал заготовки
(test (= ?SposPol 1)) ; Способ получения
(test (<= ?ZagMass 500)) ; Масса заготовки
(test (<= ?DetMass 500)) ; Масса детали
=>
(printout myData crlf "Заготовка имеет припуск на доработку, требуется повышенная механообработка"  crlf);; Вывод в файл сообщения
(assert (B_VarTP (VarTP maxObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP6  ; Правило определения характеристик объекта обработки 
(declare (salience 10)) ; Приоритет правила <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 3)) ; Материал заготовки
(test (= ?SposPol 1)) ; Способ получения
(test (<= ?ZagMass 500)) ; Масса заготовки
(test (<= ?DetMass 500)) ; Масса детали
=>
(printout myData crlf "Заготовка имеет припуск на доработку, требуется повышенная механообработка"  crlf);; Вывод в файл сообщения
(assert (B_VarTP (VarTP maxObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP7  ; Правило определения характеристик объекта обработки 
(declare (salience 10) ) ; Приоритет правила <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 1)) ; Материал заготовки
(or (test (= ?SposPol 2)) (test (= ?SposPol 4)))  ; Способ получения
(test (<= ?ZagMass 500)) ; Масса заготовки
(test (<= ?DetMass 500)) ; Масса детали
=>
(printout myData crlf "Заготовка имеет припуск на доработку, требуется средняя механообработка"  crlf);; Вывод в файл сообщения
(assert (B_VarTP (VarTP medObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP8  ; Правило определения характеристик объекта обработки 
(declare (salience 10)) ; Приоритет правила <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 2)) ; Материал заготовки
(or (test (= ?SposPol 2)) (test (= ?SposPol 4)))  ; Способ получения
(test (<= ?ZagMass 500)) ; Масса заготовки
(test (<= ?DetMass 500)) ; Масса детали
=>
(printout myData crlf "Заготовка имеет припуск на доработку, требуется средняя механообработка"  crlf);; Вывод в файл сообщения
(assert (B_VarTP (VarTP medObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP9  ; Правило определения характеристик объекта обработки 
(declare (salience 10)) ; Приоритет правила <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 3)) ; Материал заготовки
(or (test (= ?SposPol 2)) (test (= ?SposPol 4)))  ; Способ получения
(test (<= ?ZagMass 500)) ; Масса заготовки
(test (<= ?DetMass 500)) ; Масса детали
=>
(printout myData crlf "Заготовка имеет припуск на доработку, требуется средняя механообработка"  crlf);; Вывод в файл сообщения
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

(defrule C_KompCredTexOcn  ; Правило определения комплекса средств технологического оснащения
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(test (= ?TipProiz 1)) ; тип производства
(test (>= ?KvalToch 10))  ; квалитет точности
(test (>= ?VelPart 10))  ; величина партии
=>
(printout myData crlf "Универсальный станок (U) Н-нормальной точности (N)"  crlf);; Вывод в файл сообщения
(assert (D_Obor (Obor UN))))



(defrule C_KompCredTexOcn2  ; Правило определения комплекса средств технологического оснащения
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(test (= ?TipProiz 2)) ; тип производства
(test (>= ?KvalToch 10))  ; квалитет точности
(test (>= ?VelPart 10)) ; величина партии
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
=>
(printout myData crlf "Станок широкого назначения (Sh) Н-нормальной точности (N)"  crlf);; Вывод в файл сообщения
(assert (D_Obor (Obor ShN))))

(defrule C_KompCredTexOcn3  ; Правило определения комплекса средств технологического оснащения
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(or (test (= ?TipProiz 3)) (test (= ?TipProiz 4))) ; тип производства
(test (>= ?KvalToch 10))  ; квалитет точности
(test (>= ?VelPart 10)) ; величина партии
=>
(printout myData crlf "Специализированный станок (С) Н-нормальной точности (N)"  crlf);; Вывод в файл сообщения
(assert (D_Obor (Obor CN))))

(defrule C_KompCredTexOcn4  ; Правило определения комплекса средств технологического оснащения
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(or (test (= ?TipProiz 3)) (test (= ?TipProiz 4))) ; тип производства
(or (test (= ?KvalToch 8)) (test (= ?KvalToch 9)))  ; квалитет точности
(test (>= ?VelPart 10)) ; величина партии
=>
(printout myData crlf "Специализированный станок (С) П-повышенной точности (P)"  crlf);; Вывод в файл сообщения
(assert (D_Obor (Obor CP))))

(defrule C_KompCredTexOcn5  ; Правило определения комплекса средств технологического оснащения
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(test (= ?TipProiz 2)) ; тип производства
(or (test (= ?KvalToch 8)) (test (= ?KvalToch 9)))  ; квалитет точности
(test (>= ?VelPart 10)) ; величина партии
=>
(printout myData crlf " Станок широкого назначения (Sh) П-повышенной точности (P)"  crlf);; Вывод в файл сообщения
(assert (D_Obor (Obor ShP))))

(defrule C_KompCredTexOcn6  ; Правило определения комплекса средств технологического оснащения
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
 (test (= ?TipProiz 1))  ; тип производства
(or (test (= ?KvalToch 8)) (test (= ?KvalToch 9)))  ; квалитет точности
(test (>= ?VelPart 10)) ; величина партии
=>
(printout myData crlf " Универсальный станок (U) П-повышенной точности (P)"  crlf);; Вывод в файл сообщения
(assert (D_Obor (Obor UP))))

(defrule C_KompCredTexOcn7  ; Правило определения комплекса средств технологического оснащения
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(test (= ?TipProiz 1))  ; тип производства
(or (test (= ?KvalToch 6)) (test (= ?KvalToch 7)))  ; квалитет точности
(test (>= ?VelPart 10)) ; величина партии
=>
(printout myData crlf " Универсальный станок (U) S-высокой точности (S)"  crlf);; Вывод в файл сообщения
(assert (D_Obor (Obor US))))

(defrule C_KompCredTexOcn8  ; Правило определения комплекса средств технологического оснащения
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(test (= ?TipProiz 2))  ; тип производства
(or (test (= ?KvalToch 6)) (test (= ?KvalToch 7)))  ; квалитет точности
(test (>= ?VelPart 10)) ; величина партии
=>
(printout myData crlf " Станок широкого назначения (Sh) S-высокой точности (S)"  crlf);; Вывод в файл сообщения
(assert (D_Obor (Obor ShS))))

(defrule C_KompCredTexOcn9  ; Правило определения комплекса средств технологического оснащения
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(or (test (= ?TipProiz 3)) (test (= ?TipProiz 4))) ; тип производства
(or (test (= ?KvalToch 6)) (test (= ?KvalToch 7)))  ; квалитет точности
(test (>= ?VelPart 10)) ; величина партии
=>
(printout myData crlf " Специализированный станок (С) S-высокой точности (S)"  crlf);; Вывод в файл сообщения
(assert (D_Obor (Obor CS))))

(defrule F_HarProcObr  ; Характеристика процесса обработки
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP minObr))
(test (>= ?SkorRez 100)) ; скорость резания
(or (test (>= ?PodRez 0.1)) (test (<= ?PodRez 0.2)))  ; подача
(test (<= ?GlubRez 1)) ; глубина резания
=>
(printout myData crlf "Заготовка имеет максимально приближенную форму к детали, скорость резания равна "?SkorRez", подача "?PodRez ", глубина резания  "?GlubRez ", " crlf  "  следовательно показатели шероховатости наилучшие, время обработки уменьшается, но увеличиваются затраты в связи с расходом инструмента "  crlf);; Вывод в файл сообщения
(assert (D_VozmStan (VozmStan 1.0)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr2  ; Характеристика процесса обработки
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP minObr))
(and (test (<= ?SkorRez 99)) (test (>= ?SkorRez 60))) ; скорость резания
(or (test (>= ?PodRez 0.21)) (test (<= ?PodRez 0.4)))  ; подача
(or (test (>= ?GlubRez 1.1)) (test (<= ?GlubRez 3))); глубина резания
=>
(printout myData crlf " Заготовка имеет максимально приближенную форму к детали, скорость резания равна "?SkorRez", подача "?PodRez ", глубина резания  "?GlubRez ", " crlf  "  следовательно показатели шероховатости в пределах нормы, время обработки среднее, затраты средние "  crlf);; Вывод в файл сообщения
(assert (D_VozmStan (VozmStan 0.9)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr3  ; Характеристика процесса обработки
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP minObr))
(and (test (<= ?SkorRez 59)) (test (>= ?SkorRez 20))) ; скорость резания
(or (test (>= ?PodRez 0.41)) (test (<= ?PodRez 0.6)))  ; подача
(or (test (>= ?GlubRez 3.1)) (test (<= ?GlubRez 6))); глубина резания
=>
(printout myData crlf " Заготовка имеет максимально приближенную форму к детали,
скорость резания равна "?SkorRez", подача "?PodRez ", глубина резания  "?GlubRez ", " crlf  " следовательно показатели шероховатости низкие, время обработки  среднее, затраты низкие "  crlf);; Вывод в файл сообщения
(assert (D_VozmStan (VozmStan 0.8)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr4  ; Характеристика процесса обработки
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP minObr))
(test (<= ?SkorRez 19)) ; скорость резания
(test (>= ?PodRez 0.61)) ; подача
(test (>= ?GlubRez 6.1)) ; глубина резания
=>
(printout myData crlf " Заготовка имеет максимально приближенную форму к детали, скорость резания равна "?SkorRez", подача "?PodRez ", глубина резания  "?GlubRez ", " crlf  " следовательно показатели шероховатости низкие, время обработки  увеличивается, затраты низкие "  crlf);; Вывод в файл сообщения
(assert (D_VozmStan (VozmStan 0.6)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr5  ; Характеристика процесса обработки
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP medObr))
(test (>= ?SkorRez 100)) ; скорость резания
(or (test (>= ?PodRez 0.1)) (test (<= ?PodRez 0.2)))  ; подача
(test (<= ?GlubRez 1)) ; глубина резания
=>
(printout myData crlf " Заготовка имеет припуск на механообработку, скорость резания равна "?SkorRez", подача "?PodRez ", глубина резания  "?GlubRez ", " crlf  "  следовательно показатели шероховатости наилучшие, время обработки уменьшается, но увеличиваются затраты в связи с расходом инструмента "  crlf);; Вывод в файл сообщения
(assert (D_VozmStan (VozmStan 0.8)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr6  ; Характеристика процесса обработки
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP medObr))
(and (test (<= ?SkorRez 99)) (test (>= ?SkorRez 60))) ; скорость резания
(or (test (>= ?PodRez 0.21)) (test (<= ?PodRez 0.4)))  ; подача
(or (test (>= ?GlubRez 1.1)) (test (<= ?GlubRez 3))); глубина резания
=>
(printout myData crlf " Заготовка имеет припуск на механообработку, скорость резания равна "?SkorRez", подача "?PodRez ", глубина резания  "?GlubRez ", " crlf  "  следовательно показатели шероховатости в пределах нормы, время обработки среднее, затраты средние "  crlf);; Вывод в файл сообщения
(assert (D_VozmStan (VozmStan 0.7)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr7  ; Характеристика процесса обработки
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP medObr))
(and (test (<= ?SkorRez 59)) (test (>= ?SkorRez 20))) ; скорость резания
(or (test (>= ?PodRez 0.41)) (test (<= ?PodRez 0.6)))  ; подача
(or (test (>= ?GlubRez 3.1)) (test (<= ?GlubRez 6))); глубина резания
=>
(printout myData crlf " Заготовка имеет припуск на механообработку, скорость резания равна "?SkorRez", подача "?PodRez ", глубина резания  "?GlubRez ", " crlf  " следовательно показатели шероховатости низкие, время обработки  среднее, затраты низкие "  crlf);; Вывод в файл сообщения
(assert (D_VozmStan (VozmStan 0.6)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr8  ; Характеристика процесса обработки
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP medObr))
(test (<= ?SkorRez 19)) ; скорость резания
(test (>= ?PodRez 0.61)) ; подача
(test (>= ?GlubRez 6.1)) ; глубина резания
=>
(printout myData crlf " Заготовка имеет припуск на механообработку, скорость резания равна "?SkorRez", подача "?PodRez ", глубина резания  "?GlubRez ", " crlf  " следовательно показатели шероховатости низкие, время обработки  увеличивается, затраты низкие "  crlf);; Вывод в файл сообщения
(assert (D_VozmStan (VozmStan 0.5)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr9  ; Характеристика процесса обработки
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP maxObr))
(test (>= ?SkorRez 100)) ; скорость резания
(or (test (>= ?PodRez 0.1)) (test (<= ?PodRez 0.2)))  ; подача
(test (<= ?GlubRez 1)) ; глубина резания
=>
(printout myData crlf " Заготовка имеет большой припуск на механообработку, скорость резания равна "?SkorRez", подача "?PodRez ", глубина резания  "?GlubRez ", " crlf  "  следовательно показатели шероховатости наилучшие, время обработки уменьшается, но увеличиваются затраты в связи с расходом инструмента "  crlf);; Вывод в файл сообщения
(assert (D_VozmStan (VozmStan 0.8)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr10  ; Характеристика процесса обработки
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP maxObr))
(and (test (<= ?SkorRez 99)) (test (>= ?SkorRez 60))) ; скорость резания
(or (test (>= ?PodRez 0.21)) (test (<= ?PodRez 0.4)))  ; подача
(or (test (>= ?GlubRez 1.1)) (test (<= ?GlubRez 3))); глубина резания
=>
(printout myData crlf " Заготовка имеет большой припуск на механообработку, скорость резания равна "?SkorRez", подача "?PodRez ", глубина резания  "?GlubRez ", " crlf  "  следовательно показатели шероховатости в пределах нормы, время обработки среднее, затраты средние "  crlf);; Вывод в файл сообщения
(assert (D_VozmStan (VozmStan 0.7)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr11  ; Характеристика процесса обработки
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP maxObr))
(and (test (<= ?SkorRez 59)) (test (>= ?SkorRez 20))) ; скорость резания
(or (test (>= ?PodRez 0.41)) (test (<= ?PodRez 0.6)))  ; подача
(or (test (>= ?GlubRez 3.1)) (test (<= ?GlubRez 6))); глубина резания
=>
(printout myData crlf " Заготовка имеет большой припуск на механообработку, скорость резания равна "?SkorRez", подача "?PodRez ", глубина резания  "?GlubRez ", " crlf  " следовательно показатели шероховатости низкие, время обработки  среднее, затраты низкие "  crlf);; Вывод в файл сообщения
(assert (D_VozmStan (VozmStan 0.6)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr12  ; Характеристика процесса обработки
(declare (salience 10)) ; Приоритет правила <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP maxObr))
(test (<= ?SkorRez 19)) ; скорость резания
(test (>= ?PodRez 0.61)) ; подача
(test (>= ?GlubRez 6.1)) ; глубина резания
=>
(printout myData crlf " Заготовка имеет большой припуск на механообработку, скорость резания равна "?SkorRez", подача "?PodRez ", глубина резания  "?GlubRez ", " crlf  " следовательно показатели шероховатости низкие, время обработки  увеличивается, затраты низкие "  crlf);; Вывод в файл сообщения
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


(defrule D_UslovVypolSE  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; количество установов
(or (test (= ?OpTip 1)) (test (= ?OpTip 10))) ; тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 1))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", применение СОЖ улучшить шероховатость и уменьшит износ инструмента,  " crlf  " Станок относится к токарной группе " crlf  " Количество установов  "?KolUst", следовательно обеспечивается наибольшая точность "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE2  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; количество установов
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))); тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 1))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", применение СОЖ улучшить шероховатость и уменьшит износ инструмента,  " crlf  " Станок относится к токарной группе " crlf  " Количество установов  "?KolUst", следовательно обеспечивается наибольшая точность "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE3  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; количество установов
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))); тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 2))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", отсутствие СОЖ может сказаться на шероховатости и увеличить износ инструмента,  " crlf  " Станок относится к токарной группе " crlf  " Количество установов  "?KolUst", следовательно обеспечивается наибольшая точность "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE4  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; количество установов
(or (test (= ?OpTip 1)) (test (= ?OpTip 10))) ; тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 2))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr",отсутствие СОЖ может сказаться на шероховатости и увеличить износ инструмента,  " crlf  " Станок относится к токарной группе " crlf  " Количество установов  "?KolUst", следовательно обеспечивается наибольшая точность "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE5  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; количество установов
(or (test (= ?OpTip 1)) (test (= ?OpTip 10))) ; тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 1))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", применение СОЖ улучшить шероховатость и уменьшит износ инструмента,  " crlf  " Станок относится к токарной группе " crlf  " Количество установов  "?KolUst", следовательно возможно погрешности базирования "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE6  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; количество установов
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))); тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 1))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", применение СОЖ улучшить шероховатость и уменьшит износ инструмента,  " crlf  " Станок относится к токарной группе " crlf  " Количество установов  "?KolUst", следовательно возможно погрешности базирования "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE7  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; количество установов
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))); тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 2))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", отсутствие СОЖ может сказаться на шероховатости и увеличить износ инструмента,  " crlf  " Станок относится к токарной группе " crlf  " Количество установов  "?KolUst", следовательно возможно погрешности базирования "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE8  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; количество установов
(or (test (= ?OpTip 1)) (test (= ?OpTip 10))) ; тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 2))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", отсутствие СОЖ может сказаться на шероховатости и увеличить износ инструмента,  " crlf  " Станок относится к токарной группе " crlf  " Количество установов  "?KolUst", следовательно возможно погрешности базирования "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE9  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; количество установов
(or (test (= ?OpTip 2)) (test (= ?OpTip 10))) ; тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 1))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", применение СОЖ улучшить шероховатость и уменьшит износ инструмента,  " crlf  " Станок относится к фрезерной группе " crlf  " Количество установов  "?KolUst", следовательно обеспечивается наибольшая точность "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Frezern)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE10  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; количество установов
(or
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))) 
(or (test (= ?OpTip 7)) (test (= ?OpTip 8)))); тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 1))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", применение СОЖ улучшить шероховатость и уменьшит износ инструмента,  " crlf  " Станок относится к сверлильно-расточной группе " crlf  " Количество установов  "?KolUst", следовательно обеспечивается наибольшая точность "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Sverl-Rastoch)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE11  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; количество установов
(test (= ?OpTip 6)); тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
=>
(printout myData crlf "Время выполнения операции "?OpVr", ,  " crlf  " Станок относится к шлифовальной группе " crlf  " Количество установов  "?KolUst", следовательно обеспечивается наибольшая точность "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Shlifov)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE12  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; количество установов
(or (test (= ?OpTip 2)) (test (= ?OpTip 10))) ; тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 2))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", отсутствие СОЖ может сказаться на шероховатости и увеличить износ инструмента,  " crlf  " Станок относится к фрезерной группе группе " crlf  " Количество установов  "?KolUst", следовательно обеспечивается наибольшая точность "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Frezern)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE13  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; количество установов
(or (test (= ?OpTip 1)) (test (= ?OpTip 10))) ; тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 1))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", применение СОЖ улучшить шероховатость и уменьшит износ инструмента,  " crlf  " Станок относится к токарной группе " crlf  " Количество установов  "?KolUst", следовательно возможно погрешности базирования "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Frezern)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE14  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; количество установов
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))); тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 2))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", отсутствие СОЖ может сказаться на шероховатости и увеличить износ инструмента,  " crlf  " Станок относится к фрезерной группе " crlf  " Количество установов  "?KolUst", следовательно возможно погрешности базирования "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Frezern)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE15  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 2)) ; количество установов
(test (= ?OpTip 6)); тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
=>
(printout myData crlf "Время выполнения операции "?OpVr", ,  " crlf  " Станок относится к шлифовальной группе " crlf  " Количество установов  "?KolUst", следовательно возможно погрешности базирования "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Shlifov)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE16  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; количество установов
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))) 
(or (test (= ?OpTip 7)) (test (= ?OpTip 8))); тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 2))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", отсутствие СОЖ может сказаться на шероховатости и увеличить износ инструмента,  " crlf  " Станок относится к сверлильно-расточной группе " crlf  " Количество установов  "?KolUst", следовательно обеспечивается наибольшая точность "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Sverl-Rastoch)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE17  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 2)) ; количество установов
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))) 
(or (test (= ?OpTip 7)) (test (= ?OpTip 8))); тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 2))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", отсутствие СОЖ может сказаться на шероховатости и увеличить износ инструмента,  " crlf  " Станок относится к сверлильно-расточной группе " crlf  " Количество установов  "?KolUst", следовательно возможно погрешности базирования  "  crlf)
(assert (D_StanGrupp (StanGrupp Sverl-Rastoch)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE171  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 2)) ; количество установов
(or 
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))) 
(or (test (= ?OpTip 7)) (test (= ?OpTip 8)))); тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 1))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", применение СОЖ улучшить шероховатость и уменьшит износ инструмента,  " crlf  " Станок относится к сверлильно-расточной группе " crlf  " Количество установов  "?KolUst", следовательно возможно погрешности базирования  "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Sverl-Rastoch)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE18  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Prut)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; количество установов
(or (test (= ?OpTip 1)) (test (= ?OpTip 3))) ; тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 2))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", отсутствие СОЖ может сказаться на шероховатости и увеличить износ инструмента,  " crlf  " Станок относится к строгально-протяжной группе " crlf  " Количество установов  "?KolUst crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Strog-Protyaj)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE19  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Prut))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; количество установов
(or (test (= ?OpTip 1)) (test (= ?OpTip 3))) ; тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 2))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", применение СОЖ улучшить шероховатость и уменьшит износ инструмента,  " crlf  " Станок относится к строгально-протяжной группе " crlf  " Количество установов  "?KolUst crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Strog-Protyaj)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE20  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; количество установов
(or (test (= ?OpTip 5)) (test (= ?OpTip 11))) ; тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 2))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", отсутствие СОЖ может сказаться на шероховатости и увеличить износ инструмента,  " crlf  " Станок относится к зубообрабатывающей группе " crlf  " Количество установов  "?KolUst" "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp ZubObrb)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE21 ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; количество установов
(or (test (= ?OpTip 5)) (test (= ?OpTip 11))) ; тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 2))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", применение СОЖ улучшить шероховатость и уменьшит износ инструмента,  " crlf  " Станок относится к зубообрабатывающей группе " crlf  " Количество установов  "?KolUst" "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp ZubObrb)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE22  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; количество установов
(or
(or (test (= ?OpTip 2)) (test (= ?OpTip 3)))
(or (test (= ?OpTip 7)) (test (= ?OpTip 10)))) ; тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 2))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", отсутствие СОЖ может сказаться на шероховатости и увеличить износ инструмента,  " crlf  " Станок относится к агрегатной группе " crlf  " Количество установов  "?KolUst" "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Agregat)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE23 ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; количество установов
(or
(or (test (= ?OpTip 2)) (test (= ?OpTip 3)))
(or (test (= ?OpTip 7)) (test (= ?OpTip 10)))) ; тип операции
 (test (>= ?OpVr 0.1))  ; время выполнения операции
(test (= ?PrimSOJ 2))  ; применение СОЖ
=>
(printout myData crlf "Время выполнения операции "?OpVr", применение СОЖ улучшить шероховатость и уменьшит износ инструмента,  " crlf  " Станок относится к агрегатной группе " crlf  " Количество установов  "?KolUst" "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Agregat)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE24  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 2)) ; количество установов
(test (= ?OpTip 6)); тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
=>
(printout myData crlf "Время выполнения операции "?OpVr", ,  " crlf  " Станок относится к шлифовальной группе " crlf  " Количество установов  "?KolUst", следовательно возможно погрешности базирования "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Shlifov)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE25  ; Правило определения условия выполнения структурного элемента
(declare (salience 9)) ; Приоритет правила <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; количество установов
(test (= ?OpTip 6)); тип операции
(test (>= ?OpVr 0.1))  ; время выполнения операции
=>
(printout myData crlf "Время выполнения операции "?OpVr", ,  " crlf  " Станок относится к шлифовальной группе " crlf  " Количество установов  "?KolUst", следовательно обеспечивается наибольшая точность "  crlf);; Вывод в файл сообщения
(assert (D_StanGrupp (StanGrupp Shlifov)))
(assert (D_Ai0 (Ai0 1))))


(deftemplate Itog (slot Itog))

(defrule Itog1  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)) )
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Специализированный токарный станок высокой точности,  "crlf"  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки "crlf"  Возможные модели: "crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog1))))

(defrule Itog2  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Токарный станок широкого назначения высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog2))))

(defrule Itog3  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный токарный станок высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog3))))

(defrule Itog4  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный токарный станок повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog4))))

(defrule Itog5  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Токарный станок широкого назначения повышенной точности,  " crlf  "  эффективность составляет 80-95 %.обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog5))))

(defrule Itog6  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный токарный станок повышенной точности,  " crlf  "  эффективность составляет 80-95 %.обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog6))))

(defrule Itog7  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный токарный станок нормальной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog7))))

(defrule Itog8  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный токарный станок нормальной точности,  " crlf  "  эффективность составляет 80-95 %.обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog8))))

(defrule Itog9  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Токарный станок широкого назначения нормальной точности,  " crlf  "  эффективность составляет 80-95 %.обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog9))))


(defrule Itog111  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Специализированный токарный станок высокой точности,  "crlf"  эффективность составляет 50-75 %. "crlf"  Возможные модели: "crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog1))))

(defrule Itog211  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Токарный станок широкого назначения высокой точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog2))))

(defrule Itog311  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный токарный станок высокой точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog3))))

(defrule Itog411  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный токарный станок повышенной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog4))))

(defrule Itog511  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Токарный станок широкого назначения повышенной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog5))))

(defrule Itog611  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный токарный станок повышенной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog6))))

(defrule Itog711  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный токарный станок нормальной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog7))))

(defrule Itog811  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный токарный станок нормальной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog8))))

(defrule Itog911  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Токарный станок широкого назначения нормальной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog9))))

(defrule Itog11  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Специализированный фрезерный станок высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog11))))


(defrule Itog12  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Фрезерный станок широкого назначения высокой точности,  " crlf  " эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog12))))

(defrule Itog13  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный фрезерный станок высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog13))))

(defrule Itog14  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный фрезерный станок повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog14))))

(defrule Itog15  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Фрезерный станок широкого назначения повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog15))))

(defrule Itog16  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный фрезерный станок повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog16))))

(defrule Itog17  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный фрезерный станок нормальной точности," crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog17))))

(defrule Itog18  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный фрезерный станок нормальной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog18))))

(defrule Itog19  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Фрезерный станок широкого назначения нормальной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog19))))

(defrule Itog1111  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Специализированный фрезерный станок высокой точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog11))))


(defrule Itog121  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Фрезерный станок широкого назначения высокой точности,  " crlf  " эффективность составляет 50-75 %." crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog12))))

(defrule Itog131  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный фрезерный станок высокой точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog13))))

(defrule Itog141  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный фрезерный станок повышенной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog14))))

(defrule Itog151  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Фрезерный станок широкого назначения повышенной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog15))))

(defrule Itog161  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный фрезерный станок повышенной точности,  " crlf  "  эффективность составляет 50-75 %." crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog16))))

(defrule Itog171  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный фрезерный станок нормальной точности," crlf  "  эффективность составляет 50-75 %." crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog17))))

(defrule Itog181  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный фрезерный станок нормальной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog18))))

(defrule Itog191  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Фрезерный станок широкого назначения нормальной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog19))))

(defrule Itog21  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
 (or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Специализированный фрезерный станок высокой точности,  " crlf  "   эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog21))))

(defrule Itog22  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Сверлильно-расточной станок широкого назначения высокой точности,  " crlf  "   эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog22))))

(defrule Itog23  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный сверлильно-расточной станок высокой точности,  " crlf  "   эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog23))))

(defrule Itog24  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный сверлильно-расточной станок повышенной точности,  " crlf  "   эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog24))))

(defrule Itog25  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Сверлильно-расточной станок широкого назначения повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog25))))

(defrule Itog26  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный сверлильно-расточной станок повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog26))))

(defrule Itog27  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный сверлильно-расточной станок нормальной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog27))))

(defrule Itog28  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный сверлильно-расточной станок нормальной точности,  " crlf  "   эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog28))))

(defrule Itog29  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Сверлильно-расточной станок широкого назначения нормальной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog29))))

(defrule Itog2111  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Специализированный фрезерный станок высокой точности,  " crlf  "   эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog21))))

(defrule Itog221  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Сверлильно-расточной станок широкого назначения высокой точности,  " crlf  "   эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog22))))

(defrule Itog231  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный сверлильно-расточной станок высокой точности,  " crlf  "   эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog23))))

(defrule Itog241  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный сверлильно-расточной станок повышенной точности,  " crlf  "   эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog24))))

(defrule Itog251  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Сверлильно-расточной станок широкого назначения повышенной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog25))))

(defrule Itog261  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный сверлильно-расточной станок повышенной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog26))))

(defrule Itog271  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный сверлильно-расточной станок нормальной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog27))))

(defrule Itog281  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный сверлильно-расточной станок нормальной точности,  " crlf  "   эффективность составляет 50-75%.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog28))))

(defrule Itog291  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Сверлильно-расточной станок широкого назначения нормальной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog29))))

(defrule Itog31  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Специализированный шлифовальный станок высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog31))))

(defrule Itog32  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Шлифовальный станок широкого назначения высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog32))))

(defrule Itog33  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный шлифовальный станок высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog33))))

(defrule Itog34  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный шлифовальный станок повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog34))))

(defrule Itog35  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Шлифовальный станок широкого назначения повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog35))))

(defrule Itog36  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный шлифовальный станок повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog36))))

(defrule Itog37  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>(printout myData crlf " Специализированный шлифовальный станок нормальной точности,  " crlf  " эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog37))))

(defrule Itog38  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный шлифовальный станок нормальной точности,  " crlf  " эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog38))))

(defrule Itog39  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>(printout myData crlf " Шлифовальный станок широкого назначения нормальной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog39))))


(defrule Itog3111  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Специализированный шлифовальный станок высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog31))))

(defrule Itog321  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Шлифовальный станок широкого назначения высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog32))))

(defrule Itog331  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный шлифовальный станок высокой точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog33))))

(defrule Itog341  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный шлифовальный станок повышенной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog34))))

(defrule Itog351  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Шлифовальный станок широкого назначения повышенной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog35))))

(defrule Itog361  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный шлифовальный станок повышенной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog36))))

(defrule Itog371  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>(printout myData crlf " Специализированный шлифовальный станок нормальной точности,  " crlf  " эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog37))))

(defrule Itog381  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный шлифовальный станок нормальной точности,  " crlf  " эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog38))))

(defrule Itog391  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>(printout myData crlf " Шлифовальный станок широкого назначения нормальной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog39))))


(defrule Itog41  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Специализированный агрегатный станок высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog41))))

(defrule Itog42  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Агрегатный станок широкого назначения высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog42))))

(defrule Itog43  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный агрегатный станок высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog43))))

(defrule Itog44  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный агрегатный станок повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog44))))

(defrule Itog45  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Агрегатный станок широкого назначения повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog45))))

(defrule Itog46  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный агрегатный станок повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog46))))

(defrule Itog47  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный агрегатный станок нормальной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog47))))

(defrule Itog48  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный агрегатный станок нормальной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog48))))

(defrule Itog49  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Агрегатный станок широкого назначения нормальной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog49))))

(defrule Itog4111  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Специализированный агрегатный станок высокой точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog41))))

(defrule Itog421  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Агрегатный станок широкого назначения высокой точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog42))))

(defrule Itog431  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный агрегатный станок высокой точности,  " crlf  "  эффективность составляет 50-75 %." crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog43))))

(defrule Itog441  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный агрегатный станок повышенной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog44))))

(defrule Itog451  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Агрегатный станок широкого назначения повышенной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog45))))

(defrule Itog461  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный агрегатный станок повышенной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog46))))

(defrule Itog471  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный агрегатный станок нормальной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog47))))

(defrule Itog481  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный агрегатный станок нормальной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog48))))

(defrule Itog491  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Агрегатный станок широкого назначения нормальной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog49))))

(defrule Itog51  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Специализированный зубообрабатывающий станок высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog51))))

(defrule Itog52  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Зубообрабатывающий  станок широкого назначения высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog52))))

(defrule Itog53  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный зубообрабатывающий  станок высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog53))))

(defrule Itog54  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный зубообрабатывающий  станок повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog54))))

(defrule Itog55  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Зубообрабатывающий  станок широкого назначения повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog55))))

(defrule Itog56  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный зубообрабатывающий  станок повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog56))))

(defrule Itog57  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный зубообрабатывающий  станок нормальной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog57))))

(defrule Itog58  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный зубообрабатывающий  станок нормальной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog58))))

(defrule Itog59  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Зубообрабатывающий  станок широкого назначения нормальной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog59))))

(defrule Itog5111  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Специализированный зубообрабатывающий станок высокой точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog51))))

(defrule Itog521  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Зубообрабатывающий  станок широкого назначения высокой точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog52))))

(defrule Itog531  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный зубообрабатывающий  станок высокой точности,  " crlf  "  эффективность составляет 50-75 %." crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog53))))

(defrule Itog541  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный зубообрабатывающий  станок повышенной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog54))))

(defrule Itog551  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Зубообрабатывающий  станок широкого назначения повышенной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog55))))

(defrule Itog561  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный зубообрабатывающий  станок повышенной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog56))))

(defrule Itog571  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный зубообрабатывающий  станок нормальной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog57))))

(defrule Itog581  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный зубообрабатывающий  станок нормальной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog58))))

(defrule Itog591  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Зубообрабатывающий  станок широкого назначения нормальной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog59))))


(defrule Itog61  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Специализированный строгально-протяжный станок высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog61))))

(defrule Itog62  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Строгально-протяжный  станок широкого назначения высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog62))))

(defrule Itog63  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный строгально-протяжный  станок высокой точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog63))))

(defrule Itog64  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный строгально-протяжный  станок повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog64))))

(defrule Itog65  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Строгально-протяжный  станок широкого назначения повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog65))))

(defrule Itog66  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный строгально-протяжный  станок повышенной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog66))))

(defrule Itog67  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный строгально-протяжный  станок нормальной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog67))))

(defrule Itog68  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный строгально-протяжный  станок нормальной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog68))))

(defrule Itog69  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Строгально-протяжный  станок широкого назначения нормальной точности,  " crlf  "  эффективность составляет 80-95 %. обеспечивается наибольшая точность обработки " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog69))))

(defrule Itog6111  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "Специализированный строгально-протяжный станок высокой точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog61))))

(defrule Itog621  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Строгально-протяжный  станок широкого назначения высокой точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog62))))

(defrule Itog631  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный строгально-протяжный  станок высокой точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog63))))

(defrule Itog641  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный строгально-протяжный  станок повышенной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog64))))

(defrule Itog651  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Строгально-протяжный  станок широкого назначения повышенной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog65))))

(defrule Itog661  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный строгально-протяжный  станок повышенной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog66))))

(defrule Itog671  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Специализированный строгально-протяжный  станок нормальной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog67))))

(defrule Itog681  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Универсальный строгально-протяжный  станок нормальной точности,  " crlf  "  эффективность составляет 50-75 %. " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog68))))

(defrule Itog691  ; Правило назначения станка
(declare (salience 8)) ; Приоритет правила +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " Строгально-протяжный  станок широкого назначения нормальной точности,  " crlf  "  эффективность составляет 50-75 %.  " crlf  " Возможные модели:"  crlf);; Вывод в файл сообщения
(assert (Itog (Itog Itog69))))


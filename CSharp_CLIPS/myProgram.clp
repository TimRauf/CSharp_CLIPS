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

(defrule A_TrebChertTP  ; ������� ����������� ���������� �������� �������� 
(declare (salience 10)) ; ��������� ������� <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass)(DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?DetTip 2)) ; ��� ������ ���������
(test (<= ?GabDetSh 500)) ; ������ ������
(test (<= ?GabDetDl 500)) ; ����� ������
(test (<= ?GabDetV 100)) ; ������ ������
=>
(printout myData crlf "������ ���������� ����"  crlf);; ����� � ���� ���������
(assert (A_VarTP (VarTP Korp))))


(defrule A_TrebChertTP2 ; ������� ����������� �������������� ������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?DetTip 1)) ; ��� ������ ���� ��������
(test (<= ?GabDetSh 250)) ; ������ ������
(test (<= ?GabDetDl 500)) ; ����� ������
=>
(printout myData crlf "������ ���� ���� �������� "  crlf);; ����� � ���� ���������
(assert (A_VarTP (VarTP TeloVr))))

(defrule A_TrebChertTP3 ; ������� ����������� �������������� ������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?DetTip 3)) ; ��� ������ ������
(test (<= ?GabDetSh 250)) ; ������ ������
(test (<= ?GabDetDl 500)) ; ����� ������
=>
(printout myData crlf "������ ���� ������ "  crlf);; ����� � ���� ���������
(assert (A_VarTP (VarTP Prut))))


(defrule B_HarObObrTP  ; ������� ����������� ������������� ������� ��������� 
(declare (salience 10)) ; ��������� ������� <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 1)) ; �������� ���������
(or (test (= ?SposPol 3)) (test (= ?SposPol 5)))  ; ������ ���������
(test (<= ?ZagMass 500)) ; ����� ���������
(test (<= ?DetMass 500)) ; ����� ������
=>
(printout myData crlf "��������� ����� ����������� ������� �� ���������"  crlf);; ����� � ���� ���������
(assert (B_VarTP (VarTP minObr)))
(assert (A_Ai0 (Ai0 1))))


(defrule B_HarObObrTP2  ; ������� ����������� ������������� ������� ��������� 
(declare (salience 10)) ; ��������� ������� <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 2)) ; �������� ���������
(or (test (= ?SposPol 3)) (test (= ?SposPol 5)))  ; ������ ���������
(test (<= ?ZagMass 500)) ; ����� ���������
(test (<= ?DetMass 500)) ; ����� ������
=>
(printout myData crlf "��������� ����� ����������� ������� �� ���������"  crlf);; ����� � ���� ���������
(assert (B_VarTP (VarTP minObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP3  ; ������� ����������� ������������� ������� ��������� 
(declare (salience 10)) ; ��������� ������� <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 3)) ; �������� ���������
(or (test (= ?SposPol 3)) (test (= ?SposPol 5)))  ; ������ ���������
(test (<= ?ZagMass 500)) ; ����� ���������
(test (<= ?DetMass 500)) ; ����� ������
=>
(printout myData crlf "��������� ����� ����������� ������� �� ���������"  crlf);; ����� � ���� ���������
(assert (B_VarTP (VarTP minObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP4  ; ������� ����������� ������������� ������� ��������� 
(declare (salience 10)) ; ��������� ������� <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 1)) ; �������� ���������
(test (= ?SposPol 1)) ; ������ ���������
(test (<= ?ZagMass 500)) ; ����� ���������
(test (<= ?DetMass 500)) ; ����� ������
=>
(printout myData crlf "��������� ����� ������� �� ���������, ��������� ���������� ���������������"  crlf);; ����� � ���� ���������
(assert (B_VarTP (VarTP maxObr)))
(assert (A_Ai0 (Ai0 0))))

(defrule B_HarObObrTP5  ; ������� ����������� ������������� ������� ��������� 
(declare (salience 10) ) ; ��������� ������� <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 2)) ; �������� ���������
(test (= ?SposPol 1)) ; ������ ���������
(test (<= ?ZagMass 500)) ; ����� ���������
(test (<= ?DetMass 500)) ; ����� ������
=>
(printout myData crlf "��������� ����� ������� �� ���������, ��������� ���������� ���������������"  crlf);; ����� � ���� ���������
(assert (B_VarTP (VarTP maxObr)))
(assert (A_Ai0 (Ai0 0))))

(defrule B_HarObObrTP6  ; ������� ����������� ������������� ������� ��������� 
(declare (salience 10)) ; ��������� ������� <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 3)) ; �������� ���������
(test (= ?SposPol 1)) ; ������ ���������
(test (<= ?ZagMass 500)) ; ����� ���������
(test (<= ?DetMass 500)) ; ����� ������
=>
(printout myData crlf "��������� ����� ������� �� ���������, ��������� ���������� ���������������"  crlf);; ����� � ���� ���������
(assert (B_VarTP (VarTP maxObr)))
(assert (A_Ai0 (Ai0 0))))

(defrule B_HarObObrTP7  ; ������� ����������� ������������� ������� ��������� 
(declare (salience 10) ) ; ��������� ������� <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 1)) ; �������� ���������
(or (test (= ?SposPol 2)) (test (= ?SposPol 4)))  ; ������ ���������
(test (<= ?ZagMass 500)) ; ����� ���������
(test (<= ?DetMass 500)) ; ����� ������
=>
(printout myData crlf "��������� ����� ������� �� ���������, ��������� ������� ���������������"  crlf);; ����� � ���� ���������
(assert (B_VarTP (VarTP medObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP8  ; ������� ����������� ������������� ������� ��������� 
(declare (salience 10)) ; ��������� ������� <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 2)) ; �������� ���������
(or (test (= ?SposPol 2)) (test (= ?SposPol 4)))  ; ������ ���������
(test (<= ?ZagMass 500)) ; ����� ���������
(test (<= ?DetMass 500)) ; ����� ������
=>
(printout myData crlf "��������� ����� ������� �� ���������, ��������� ������� ���������������"  crlf);; ����� � ���� ���������
(assert (B_VarTP (VarTP medObr)))
(assert (A_Ai0 (Ai0 1))))

(defrule B_HarObObrTP9  ; ������� ����������� ������������� ������� ��������� 
(declare (salience 10)) ; ��������� ������� <+10>
(A_Dann (DetName ?DetName) (GabDetDl ?GabDetDl) (GabDetSh ?GabDetSh) (GabDetV ?GabDetV) (DetTip ?DetTip) (ZagMat ?ZagMat) (SposPol ?SposPol) (ZagMass ?ZagMass) (DetMass ?DetMass) (StanEm ?StanEm) (KolTexMod ?KolTexMod)) 
(test (= ?ZagMat 3)) ; �������� ���������
(or (test (= ?SposPol 2)) (test (= ?SposPol 4)))  ; ������ ���������
(test (<= ?ZagMass 500)) ; ����� ���������
(test (<= ?DetMass 500)) ; ����� ������
=>
(printout myData crlf "��������� ����� ������� �� ���������, ��������� ������� ���������������"  crlf);; ����� � ���� ���������
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

(defrule C_KompCredTexOcn  ; ������� ����������� ��������� ������� ���������������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(test (= ?TipProiz 1)) ; ��� ������������
(test (>= ?KvalToch 10))  ; �������� ��������
(test (>= ?VelPart 10))  ; �������� ������
=>
(printout myData crlf "������������� ������ (U) �-���������� �������� (N)"  crlf);; ����� � ���� ���������
(assert (D_Obor (Obor UN))))



(defrule C_KompCredTexOcn2  ; ������� ����������� ��������� ������� ���������������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(test (= ?TipProiz 2)) ; ��� ������������
(test (>= ?KvalToch 10))  ; �������� ��������
(test (>= ?VelPart 10)) ; �������� ������
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
=>
(printout myData crlf "������ �������� ���������� (Sh) �-���������� �������� (N)"  crlf);; ����� � ���� ���������
(assert (D_Obor (Obor ShN))))

(defrule C_KompCredTexOcn3  ; ������� ����������� ��������� ������� ���������������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(or (test (= ?TipProiz 3)) (test (= ?TipProiz 4))) ; ��� ������������
(test (>= ?KvalToch 10))  ; �������� ��������
(test (>= ?VelPart 10)) ; �������� ������
=>
(printout myData crlf "������������������ ������ (�) �-���������� �������� (N)"  crlf);; ����� � ���� ���������
(assert (D_Obor (Obor CN))))

(defrule C_KompCredTexOcn4  ; ������� ����������� ��������� ������� ���������������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(or (test (= ?TipProiz 3)) (test (= ?TipProiz 4))) ; ��� ������������
(or (test (= ?KvalToch 8)) (test (= ?KvalToch 9)))  ; �������� ��������
(test (>= ?VelPart 10)) ; �������� ������
=>
(printout myData crlf "������������������ ������ (�) �-���������� �������� (P)"  crlf);; ����� � ���� ���������
(assert (D_Obor (Obor CP))))

(defrule C_KompCredTexOcn5  ; ������� ����������� ��������� ������� ���������������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(test (= ?TipProiz 2)) ; ��� ������������
(or (test (= ?KvalToch 8)) (test (= ?KvalToch 9)))  ; �������� ��������
(test (>= ?VelPart 10)) ; �������� ������
=>
(printout myData crlf " ������ �������� ���������� (Sh) �-���������� �������� (P)"  crlf);; ����� � ���� ���������
(assert (D_Obor (Obor ShP))))

(defrule C_KompCredTexOcn6  ; ������� ����������� ��������� ������� ���������������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
 (test (= ?TipProiz 1))  ; ��� ������������
(or (test (= ?KvalToch 8)) (test (= ?KvalToch 9)))  ; �������� ��������
(test (>= ?VelPart 10)) ; �������� ������
=>
(printout myData crlf " ������������� ������ (U) �-���������� �������� (P)"  crlf);; ����� � ���� ���������
(assert (D_Obor (Obor UP))))

(defrule C_KompCredTexOcn7  ; ������� ����������� ��������� ������� ���������������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(test (= ?TipProiz 1))  ; ��� ������������
(or (test (= ?KvalToch 6)) (test (= ?KvalToch 7)))  ; �������� ��������
(test (>= ?VelPart 10)) ; �������� ������
=>
(printout myData crlf " ������������� ������ (U) S-������� �������� (S)"  crlf);; ����� � ���� ���������
(assert (D_Obor (Obor US))))

(defrule C_KompCredTexOcn8  ; ������� ����������� ��������� ������� ���������������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(test (= ?TipProiz 2))  ; ��� ������������
(or (test (= ?KvalToch 6)) (test (= ?KvalToch 7)))  ; �������� ��������
(test (>= ?VelPart 10)) ; �������� ������
=>
(printout myData crlf " ������ �������� ���������� (Sh) S-������� �������� (S)"  crlf);; ����� � ���� ���������
(assert (D_Obor (Obor ShS))))

(defrule C_KompCredTexOcn9  ; ������� ����������� ��������� ������� ���������������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(or
(or (A_VarTP (VarTP TeloVr)) (A_VarTP (VarTP Korp)))
(A_VarTP (VarTP Prut)))
(or (test (= ?TipProiz 3)) (test (= ?TipProiz 4))) ; ��� ������������
(or (test (= ?KvalToch 6)) (test (= ?KvalToch 7)))  ; �������� ��������
(test (>= ?VelPart 10)) ; �������� ������
=>
(printout myData crlf " ������������������ ������ (�) S-������� �������� (S)"  crlf);; ����� � ���� ���������
(assert (D_Obor (Obor CS))))

(defrule F_HarProcObr  ; �������������� �������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP minObr))
(test (>= ?SkorRez 100)) ; �������� �������
(or (test (>= ?PodRez 0.1)) (test (<= ?PodRez 0.2)))  ; ������
(test (<= ?GlubRez 1)) ; ������� �������
=>
(printout myData crlf "��������� ����� ����������� ������������ ����� � ������, �������� ������� ����� "?SkorRez", ������ "?PodRez ", ������� �������  "?GlubRez ", " crlf  "  ������������� ���������� ������������� ���������, ����� ��������� �����������, �� ������������� ������� � ����� � �������� ����������� "  crlf);; ����� � ���� ���������
(assert (D_VozmStan (VozmStan 1.0)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr2  ; �������������� �������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP minObr))
(and (test (<= ?SkorRez 99)) (test (>= ?SkorRez 60))) ; �������� �������
(or (test (>= ?PodRez 0.21)) (test (<= ?PodRez 0.4)))  ; ������
(or (test (>= ?GlubRez 1.1)) (test (<= ?GlubRez 3))); ������� �������
=>
(printout myData crlf " ��������� ����� ����������� ������������ ����� � ������, �������� ������� ����� "?SkorRez", ������ "?PodRez ", ������� �������  "?GlubRez ", " crlf  "  ������������� ���������� ������������� � �������� �����, ����� ��������� �������, ������� ������� "  crlf);; ����� � ���� ���������
(assert (D_VozmStan (VozmStan 0.9)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr3  ; �������������� �������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP minObr))
(and (test (<= ?SkorRez 59)) (test (>= ?SkorRez 20))) ; �������� �������
(or (test (>= ?PodRez 0.41)) (test (<= ?PodRez 0.6)))  ; ������
(or (test (>= ?GlubRez 3.1)) (test (<= ?GlubRez 6))); ������� �������
=>
(printout myData crlf " ��������� ����� ����������� ������������ ����� � ������,
�������� ������� ����� "?SkorRez", ������ "?PodRez ", ������� �������  "?GlubRez ", " crlf  " ������������� ���������� ������������� ������, ����� ���������  �������, ������� ������ "  crlf);; ����� � ���� ���������
(assert (D_VozmStan (VozmStan 0.8)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr4  ; �������������� �������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP minObr))
(test (<= ?SkorRez 19)) ; �������� �������
(test (>= ?PodRez 0.61)) ; ������
(test (>= ?GlubRez 6.1)) ; ������� �������
=>
(printout myData crlf " ��������� ����� ����������� ������������ ����� � ������, �������� ������� ����� "?SkorRez", ������ "?PodRez ", ������� �������  "?GlubRez ", " crlf  " ������������� ���������� ������������� ������, ����� ���������  �������������, ������� ������ "  crlf);; ����� � ���� ���������
(assert (D_VozmStan (VozmStan 0.6)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr5  ; �������������� �������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP medObr))
(test (>= ?SkorRez 100)) ; �������� �������
(or (test (>= ?PodRez 0.1)) (test (<= ?PodRez 0.2)))  ; ������
(test (<= ?GlubRez 1)) ; ������� �������
=>
(printout myData crlf " ��������� ����� ������� �� ���������������, �������� ������� ����� "?SkorRez", ������ "?PodRez ", ������� �������  "?GlubRez ", " crlf  "  ������������� ���������� ������������� ���������, ����� ��������� �����������, �� ������������� ������� � ����� � �������� ����������� "  crlf);; ����� � ���� ���������
(assert (D_VozmStan (VozmStan 0.8)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr6  ; �������������� �������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP medObr))
(and (test (<= ?SkorRez 99)) (test (>= ?SkorRez 60))) ; �������� �������
(or (test (>= ?PodRez 0.21)) (test (<= ?PodRez 0.4)))  ; ������
(or (test (>= ?GlubRez 1.1)) (test (<= ?GlubRez 3))); ������� �������
=>
(printout myData crlf " ��������� ����� ������� �� ���������������, �������� ������� ����� "?SkorRez", ������ "?PodRez ", ������� �������  "?GlubRez ", " crlf  "  ������������� ���������� ������������� � �������� �����, ����� ��������� �������, ������� ������� "  crlf);; ����� � ���� ���������
(assert (D_VozmStan (VozmStan 0.7)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr7  ; �������������� �������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP medObr))
(and (test (<= ?SkorRez 59)) (test (>= ?SkorRez 20))) ; �������� �������
(or (test (>= ?PodRez 0.41)) (test (<= ?PodRez 0.6)))  ; ������
(or (test (>= ?GlubRez 3.1)) (test (<= ?GlubRez 6))); ������� �������
=>
(printout myData crlf " ��������� ����� ������� �� ���������������, �������� ������� ����� "?SkorRez", ������ "?PodRez ", ������� �������  "?GlubRez ", " crlf  " ������������� ���������� ������������� ������, ����� ���������  �������, ������� ������ "  crlf);; ����� � ���� ���������
(assert (D_VozmStan (VozmStan 0.6)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr8  ; �������������� �������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP medObr))
(test (<= ?SkorRez 19)) ; �������� �������
(test (>= ?PodRez 0.61)) ; ������
(test (>= ?GlubRez 6.1)) ; ������� �������
=>
(printout myData crlf " ��������� ����� ������� �� ���������������, �������� ������� ����� "?SkorRez", ������ "?PodRez ", ������� �������  "?GlubRez ", " crlf  " ������������� ���������� ������������� ������, ����� ���������  �������������, ������� ������ "  crlf);; ����� � ���� ���������
(assert (D_VozmStan (VozmStan 0.5)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr9  ; �������������� �������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP maxObr))
(test (>= ?SkorRez 100)) ; �������� �������
(or (test (>= ?PodRez 0.1)) (test (<= ?PodRez 0.2)))  ; ������
(test (<= ?GlubRez 1)) ; ������� �������
=>
(printout myData crlf " ��������� ����� ������� ������� �� ���������������, �������� ������� ����� "?SkorRez", ������ "?PodRez ", ������� �������  "?GlubRez ", " crlf  "  ������������� ���������� ������������� ���������, ����� ��������� �����������, �� ������������� ������� � ����� � �������� ����������� "  crlf);; ����� � ���� ���������
(assert (D_VozmStan (VozmStan 0.8)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr10  ; �������������� �������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP maxObr))
(and (test (<= ?SkorRez 99)) (test (>= ?SkorRez 60))) ; �������� �������
(or (test (>= ?PodRez 0.21)) (test (<= ?PodRez 0.4)))  ; ������
(or (test (>= ?GlubRez 1.1)) (test (<= ?GlubRez 3))); ������� �������
=>
(printout myData crlf " ��������� ����� ������� ������� �� ���������������, �������� ������� ����� "?SkorRez", ������ "?PodRez ", ������� �������  "?GlubRez ", " crlf  "  ������������� ���������� ������������� � �������� �����, ����� ��������� �������, ������� ������� "  crlf);; ����� � ���� ���������
(assert (D_VozmStan (VozmStan 0.7)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr11  ; �������������� �������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP maxObr))
(and (test (<= ?SkorRez 59)) (test (>= ?SkorRez 20))) ; �������� �������
(or (test (>= ?PodRez 0.41)) (test (<= ?PodRez 0.6)))  ; ������
(or (test (>= ?GlubRez 3.1)) (test (<= ?GlubRez 6))); ������� �������
=>
(printout myData crlf " ��������� ����� ������� ������� �� ���������������, �������� ������� ����� "?SkorRez", ������ "?PodRez ", ������� �������  "?GlubRez ", " crlf  " ������������� ���������� ������������� ������, ����� ���������  �������, ������� ������ "  crlf);; ����� � ���� ���������
(assert (D_VozmStan (VozmStan 0.6)))
(assert (C_Ai0 (Ai0 1))))

(defrule F_HarProcObr12  ; �������������� �������� ���������
(declare (salience 10)) ; ��������� ������� <+10>
(C_Dann2 (TipProiz ?TipProiz) (KvalToch ?KvalToch) (SkorRez ?SkorRez) (PodRez ?PodRez) (GlubRez ?GlubRez) (VelPart ?VelPart)) 
(B_VarTP (VarTP maxObr))
(test (<= ?SkorRez 19)) ; �������� �������
(test (>= ?PodRez 0.61)) ; ������
(test (>= ?GlubRez 6.1)) ; ������� �������
=>
(printout myData crlf " ��������� ����� ������� ������� �� ���������������, �������� ������� ����� "?SkorRez", ������ "?PodRez ", ������� �������  "?GlubRez ", " crlf  " ������������� ���������� ������������� ������, ����� ���������  �������������, ������� ������ "  crlf);; ����� � ���� ���������
(assert (D_VozmStan (VozmStan 0.4)))
(assert (C_Ai0 (Ai0 0))))

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


(defrule D_UslovVypolSE  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; ���������� ���������
(or (test (= ?OpTip 1)) (test (= ?OpTip 10))) ; ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 1))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� �������� ������������� � �������� ����� �����������,  " crlf  " ������ ��������� � �������� ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������������� ���������� �������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE2  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; ���������� ���������
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))); ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 1))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� �������� ������������� � �������� ����� �����������,  " crlf  " ������ ��������� � �������� ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������������� ���������� �������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE3  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; ���������� ���������
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))); ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 2))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� ����� ��������� �� ������������� � ��������� ����� �����������,  " crlf  " ������ ��������� � �������� ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������������� ���������� �������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE4  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; ���������� ���������
(or (test (= ?OpTip 1)) (test (= ?OpTip 10))) ; ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 2))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr",���������� ��� ����� ��������� �� ������������� � ��������� ����� �����������,  " crlf  " ������ ��������� � �������� ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������������� ���������� �������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 1))))


(defrule D_UslovVypolSE5  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; ���������� ���������
(or (test (= ?OpTip 1)) (test (= ?OpTip 10))) ; ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 1))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� �������� ������������� � �������� ����� �����������,  " crlf  " ������ ��������� � �������� ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������� ����������� ����������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 0))))


(defrule D_UslovVypolSE6  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; ���������� ���������
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))); ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 1))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� �������� ������������� � �������� ����� �����������,  " crlf  " ������ ��������� � �������� ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������� ����������� ����������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 0))))


(defrule D_UslovVypolSE7  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; ���������� ���������
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))); ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 2))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� ����� ��������� �� ������������� � ��������� ����� �����������,  " crlf  " ������ ��������� � �������� ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������� ����������� ����������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 0))))


(defrule D_UslovVypolSE8  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; ���������� ���������
(or (test (= ?OpTip 1)) (test (= ?OpTip 10))) ; ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 2))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� ����� ��������� �� ������������� � ��������� ����� �����������,  " crlf  " ������ ��������� � �������� ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������� ����������� ����������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Tokarn)))
(assert (D_Ai0 (Ai0 0))))


(defrule D_UslovVypolSE9  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; ���������� ���������
(or (test (= ?OpTip 2)) (test (= ?OpTip 10))) ; ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 1))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� �������� ������������� � �������� ����� �����������,  " crlf  " ������ ��������� � ��������� ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������������� ���������� �������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Frezern)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE10  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; ���������� ���������
(or
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))) 
(or (test (= ?OpTip 7)) (test (= ?OpTip 8)))); ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 1))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� �������� ������������� � �������� ����� �����������,  " crlf  " ������ ��������� � ����������-��������� ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������������� ���������� �������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Sverl-Rastoch)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE11  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; ���������� ���������
(test (= ?OpTip 6)); ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ,  " crlf  " ������ ��������� � ������������ ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������������� ���������� �������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Shlifov)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE12  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; ���������� ���������
(or (test (= ?OpTip 2)) (test (= ?OpTip 10))) ; ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 2))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� ����� ��������� �� ������������� � ��������� ����� �����������,  " crlf  " ������ ��������� � ��������� ������ ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������������� ���������� �������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Frezern)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE13  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; ���������� ���������
(or (test (= ?OpTip 1)) (test (= ?OpTip 10))) ; ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 1))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� �������� ������������� � �������� ����� �����������,  " crlf  " ������ ��������� � �������� ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������� ����������� ����������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Frezern)))
(assert (D_Ai0 (Ai0 0))))


(defrule D_UslovVypolSE14  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 2)) ; ���������� ���������
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))); ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 2))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� ����� ��������� �� ������������� � ��������� ����� �����������,  " crlf  " ������ ��������� � ��������� ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������� ����������� ����������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Frezern)))
(assert (D_Ai0 (Ai0 0))))

(defrule D_UslovVypolSE15  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 2)) ; ���������� ���������
(test (= ?OpTip 6)); ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ,  " crlf  " ������ ��������� � ������������ ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������� ����������� ����������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Shlifov)))
(assert (D_Ai0 (Ai0 0))))

(defrule D_UslovVypolSE16  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; ���������� ���������
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))) 
(or (test (= ?OpTip 7)) (test (= ?OpTip 8))); ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 2))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� ����� ��������� �� ������������� � ��������� ����� �����������,  " crlf  " ������ ��������� � ����������-��������� ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������������� ���������� �������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Sverl-Rastoch)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE17  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 2)) ; ���������� ���������
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))) 
(or (test (= ?OpTip 7)) (test (= ?OpTip 8))); ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 2))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� ����� ��������� �� ������������� � ��������� ����� �����������,  " crlf  " ������ ��������� � ����������-��������� ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������� ����������� �����������  "  crlf)
(assert (D_StanGrupp (StanGrupp Sverl-Rastoch)))
(assert (D_Ai0 (Ai0 0))))


(defrule D_UslovVypolSE171  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Korp)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 2)) ; ���������� ���������
(or 
(or (test (= ?OpTip 3)) (test (= ?OpTip 4))) 
(or (test (= ?OpTip 7)) (test (= ?OpTip 8)))); ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 1))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� �������� ������������� � �������� ����� �����������,  " crlf  " ������ ��������� � ����������-��������� ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������� ����������� �����������  "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Sverl-Rastoch)))
(assert (D_Ai0 (Ai0 0))))

(defrule D_UslovVypolSE18  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Prut)) 
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; ���������� ���������
(or (test (= ?OpTip 1)) (test (= ?OpTip 3))) ; ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 2))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� ����� ��������� �� ������������� � ��������� ����� �����������,  " crlf  " ������ ��������� � ����������-��������� ������ " crlf  " ���������� ���������  "?KolUst crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Strog-Protyaj)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE19  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Prut))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; ���������� ���������
(or (test (= ?OpTip 1)) (test (= ?OpTip 3))) ; ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 2))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� �������� ������������� � �������� ����� �����������,  " crlf  " ������ ��������� � ����������-��������� ������ " crlf  " ���������� ���������  "?KolUst crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Strog-Protyaj)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE20  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; ���������� ���������
(or (test (= ?OpTip 5)) (test (= ?OpTip 11))) ; ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 2))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� ����� ��������� �� ������������� � ��������� ����� �����������,  " crlf  " ������ ��������� � ������������������ ������ " crlf  " ���������� ���������  "?KolUst" "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp ZubObrb)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE21 ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; ���������� ���������
(or (test (= ?OpTip 5)) (test (= ?OpTip 11))) ; ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 2))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� �������� ������������� � �������� ����� �����������,  " crlf  " ������ ��������� � ������������������ ������ " crlf  " ���������� ���������  "?KolUst" "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp ZubObrb)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE22  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; ���������� ���������
(or
(or (test (= ?OpTip 2)) (test (= ?OpTip 3)))
(or (test (= ?OpTip 7)) (test (= ?OpTip 10)))) ; ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 2))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� ����� ��������� �� ������������� � ��������� ����� �����������,  " crlf  " ������ ��������� � ���������� ������ " crlf  " ���������� ���������  "?KolUst" "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Agregat)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE23 ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP Korp)) 
 (D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (>= ?KolUst 1)) ; ���������� ���������
(or
(or (test (= ?OpTip 2)) (test (= ?OpTip 3)))
(or (test (= ?OpTip 7)) (test (= ?OpTip 10)))) ; ��� ��������
 (test (>= ?OpVr 0.1))  ; ����� ���������� ��������
(test (= ?PrimSOJ 2))  ; ���������� ���
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ���������� ��� �������� ������������� � �������� ����� �����������,  " crlf  " ������ ��������� � ���������� ������ " crlf  " ���������� ���������  "?KolUst" "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Agregat)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE24  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 2)) ; ���������� ���������
(test (= ?OpTip 6)); ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ,  " crlf  " ������ ��������� � ������������ ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������� ����������� ����������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Shlifov)))
(assert (D_Ai0 (Ai0 1))))

(defrule D_UslovVypolSE25  ; ������� ����������� ������� ���������� ������������ ��������
(declare (salience 9)) ; ��������� ������� <+9>
(A_VarTP (VarTP TeloVr))
(D_Dann3 (KolUst ?KolUst) (OpTip ?OpTip) (OpVr ?OpVr) (PrimSOJ ?PrimSOJ) (Osnastka ?Osnastka) (Zahvat ?Zahvat)) 
(test (= ?KolUst 1)) ; ���������� ���������
(test (= ?OpTip 6)); ��� ��������
(test (>= ?OpVr 0.1))  ; ����� ���������� ��������
=>
(printout myData crlf "����� ���������� �������� "?OpVr", ,  " crlf  " ������ ��������� � ������������ ������ " crlf  " ���������� ���������  "?KolUst", ������������� �������������� ���������� �������� "  crlf);; ����� � ���� ���������
(assert (D_StanGrupp (StanGrupp Shlifov)))
(assert (D_Ai0 (Ai0 1))))


(deftemplate Itog (slot Itog))

(defrule Itog1  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)) )
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "������������������ �������� ������ ������� ��������,  "crlf"  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� "crlf"  ��������� ������: "crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog1))))

(defrule Itog2  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " �������� ������ �������� ���������� ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog2))))

(defrule Itog3  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� �������� ������ ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog3))))

(defrule Itog4  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� �������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog4))))

(defrule Itog5  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " �������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %.�������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog5))))

(defrule Itog6  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ �������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %.�������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog6))))

(defrule Itog7  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ �������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog7))))

(defrule Itog8  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� �������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %.�������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog8))))

(defrule Itog9  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " �������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %.�������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog9))))


(defrule Itog111  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "������������������ �������� ������ ������� ��������,  "crlf"  ������������� ���������� 50-75 %. "crlf"  ��������� ������: "crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog1))))

(defrule Itog211  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " �������� ������ �������� ���������� ������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog2))))

(defrule Itog311  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� �������� ������ ������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog3))))

(defrule Itog411  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� �������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog4))))

(defrule Itog511  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " �������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog5))))

(defrule Itog611  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ �������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog6))))

(defrule Itog711  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ �������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog7))))

(defrule Itog811  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� �������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog8))))

(defrule Itog911  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Tokarn))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " �������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog9))))

(defrule Itog11  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "������������������ ��������� ������ ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog11))))


(defrule Itog12  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ��������� ������ �������� ���������� ������� ��������,  " crlf  " ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog12))))

(defrule Itog13  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ��������� ������ ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog13))))

(defrule Itog14  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ��������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog14))))

(defrule Itog15  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ��������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog15))))

(defrule Itog16  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ��������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog16))))

(defrule Itog17  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ��������� ������ ���������� ��������," crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog17))))

(defrule Itog18  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ��������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog18))))

(defrule Itog19  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ��������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog19))))

(defrule Itog1111  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "������������������ ��������� ������ ������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog11))))


(defrule Itog121  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ��������� ������ �������� ���������� ������� ��������,  " crlf  " ������������� ���������� 50-75 %." crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog12))))

(defrule Itog131  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ��������� ������ ������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog13))))

(defrule Itog141  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ��������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog14))))

(defrule Itog151  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ��������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog15))))

(defrule Itog161  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ��������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %." crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog16))))

(defrule Itog171  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ��������� ������ ���������� ��������," crlf  "  ������������� ���������� 50-75 %." crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog17))))

(defrule Itog181  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ��������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog18))))

(defrule Itog191  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Frezern))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ��������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog19))))

(defrule Itog21  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
 (or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "������������������ ��������� ������ ������� ��������,  " crlf  "   ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog21))))

(defrule Itog22  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ����������-��������� ������ �������� ���������� ������� ��������,  " crlf  "   ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog22))))

(defrule Itog23  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ����������-��������� ������ ������� ��������,  " crlf  "   ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog23))))

(defrule Itog24  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ����������-��������� ������ ���������� ��������,  " crlf  "   ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog24))))

(defrule Itog25  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ����������-��������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog25))))

(defrule Itog26  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ����������-��������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog26))))

(defrule Itog27  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ����������-��������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog27))))

(defrule Itog28  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ����������-��������� ������ ���������� ��������,  " crlf  "   ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog28))))

(defrule Itog29  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ����������-��������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog29))))

(defrule Itog2111  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "������������������ ��������� ������ ������� ��������,  " crlf  "   ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog21))))

(defrule Itog221  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ����������-��������� ������ �������� ���������� ������� ��������,  " crlf  "   ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog22))))

(defrule Itog231  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ����������-��������� ������ ������� ��������,  " crlf  "   ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog23))))

(defrule Itog241  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ����������-��������� ������ ���������� ��������,  " crlf  "   ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog24))))

(defrule Itog251  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ����������-��������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog25))))

(defrule Itog261  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ����������-��������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog26))))

(defrule Itog271  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ����������-��������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog27))))

(defrule Itog281  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ����������-��������� ������ ���������� ��������,  " crlf  "   ������������� ���������� 50-75%.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog28))))

(defrule Itog291  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Sverl-Rastoch))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ����������-��������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog29))))

(defrule Itog31  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "������������������ ������������ ������ ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog31))))

(defrule Itog32  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������ ������ �������� ���������� ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog32))))

(defrule Itog33  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ������������ ������ ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog33))))

(defrule Itog34  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ������������ ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog34))))

(defrule Itog35  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������ ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog35))))

(defrule Itog36  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ������������ ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog36))))

(defrule Itog37  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>(printout myData crlf " ������������������ ������������ ������ ���������� ��������,  " crlf  " ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog37))))

(defrule Itog38  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ������������ ������ ���������� ��������,  " crlf  " ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog38))))

(defrule Itog39  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>(printout myData crlf " ������������ ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog39))))


(defrule Itog3111  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "������������������ ������������ ������ ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog31))))

(defrule Itog321  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������ ������ �������� ���������� ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog32))))

(defrule Itog331  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ������������ ������ ������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog33))))

(defrule Itog341  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ������������ ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog34))))

(defrule Itog351  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������ ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog35))))

(defrule Itog361  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ������������ ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog36))))

(defrule Itog371  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>(printout myData crlf " ������������������ ������������ ������ ���������� ��������,  " crlf  " ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog37))))

(defrule Itog381  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ������������ ������ ���������� ��������,  " crlf  " ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog38))))

(defrule Itog391  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Shlifov))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>(printout myData crlf " ������������ ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog39))))


(defrule Itog41  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "������������������ ���������� ������ ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog41))))

(defrule Itog42  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ���������� ������ �������� ���������� ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog42))))

(defrule Itog43  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ���������� ������ ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog43))))

(defrule Itog44  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ���������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog44))))

(defrule Itog45  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ���������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog45))))

(defrule Itog46  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ���������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog46))))

(defrule Itog47  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ���������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog47))))

(defrule Itog48  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ���������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog48))))

(defrule Itog49  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ���������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog49))))

(defrule Itog4111  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "������������������ ���������� ������ ������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog41))))

(defrule Itog421  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ���������� ������ �������� ���������� ������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog42))))

(defrule Itog431  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ���������� ������ ������� ��������,  " crlf  "  ������������� ���������� 50-75 %." crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog43))))

(defrule Itog441  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ���������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog44))))

(defrule Itog451  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ���������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog45))))

(defrule Itog461  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ���������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog46))))

(defrule Itog471  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ���������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog47))))

(defrule Itog481  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ���������� ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog48))))

(defrule Itog491  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Agregat))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ���������� ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog49))))

(defrule Itog51  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "������������������ ������������������ ������ ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog51))))

(defrule Itog52  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������  ������ �������� ���������� ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog52))))

(defrule Itog53  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ������������������  ������ ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog53))))

(defrule Itog54  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ������������������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog54))))

(defrule Itog55  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������  ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog55))))

(defrule Itog56  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ������������������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog56))))

(defrule Itog57  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ������������������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog57))))

(defrule Itog58  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ������������������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog58))))

(defrule Itog59  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������  ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog59))))

(defrule Itog5111  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "������������������ ������������������ ������ ������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog51))))

(defrule Itog521  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������  ������ �������� ���������� ������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog52))))

(defrule Itog531  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ������������������  ������ ������� ��������,  " crlf  "  ������������� ���������� 50-75 %." crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog53))))

(defrule Itog541  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ������������������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog54))))

(defrule Itog551  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������  ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog55))))

(defrule Itog561  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ������������������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog56))))

(defrule Itog571  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ������������������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog57))))

(defrule Itog581  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ������������������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog58))))

(defrule Itog591  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp ZubObrb))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������  ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog59))))


(defrule Itog61  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "������������������ ����������-��������� ������ ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog61))))

(defrule Itog62  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ����������-���������  ������ �������� ���������� ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog62))))

(defrule Itog63  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ����������-���������  ������ ������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog63))))

(defrule Itog64  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ����������-���������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog64))))

(defrule Itog65  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ����������-���������  ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog65))))

(defrule Itog66  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ����������-���������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog66))))

(defrule Itog67  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ����������-���������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog67))))

(defrule Itog68  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ����������-���������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog68))))

(defrule Itog69  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 1.0)) (D_VozmStan (VozmStan 0.9)))
(D_VozmStan (VozmStan 0.8)))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ����������-���������  ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 80-95 %. �������������� ���������� �������� ��������� " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog69))))

(defrule Itog6111  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf "������������������ ����������-��������� ������ ������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog61))))

(defrule Itog621  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShS))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ����������-���������  ������ �������� ���������� ������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog62))))

(defrule Itog631  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor US))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ����������-���������  ������ ������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog63))))

(defrule Itog641  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ����������-���������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog64))))

(defrule Itog651  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ����������-���������  ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog65))))

(defrule Itog661  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CP))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ����������-���������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog66))))

(defrule Itog671  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor CN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������������ ����������-���������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog67))))

(defrule Itog681  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor UN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ������������� ����������-���������  ������ ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %. " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog68))))

(defrule Itog691  ; ������� ���������� ������
(declare (salience 8)) ; ��������� ������� +8
(D_StanGrupp (StanGrupp Strog-Protyaj))
(or
(or (D_VozmStan (VozmStan 0.7)) (D_VozmStan (VozmStan 0.6)))
(or (D_VozmStan (VozmStan 0.5)) (D_VozmStan (VozmStan 0.4))))
(D_Obor (Obor ShN))
(A_Ai0 (Ai0 1))
(C_Ai0 (Ai0 1))
(D_Ai0 (Ai0 1))
=>
(printout myData crlf " ����������-���������  ������ �������� ���������� ���������� ��������,  " crlf  "  ������������� ���������� 50-75 %.  " crlf  " ��������� ������:"  crlf);; ����� � ���� ���������
(assert (Itog (Itog Itog69))))


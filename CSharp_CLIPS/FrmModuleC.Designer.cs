namespace CSharp_CLIPS
{
    partial class FrmModuleC
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtKolUst = new System.Windows.Forms.TextBox();
            this.comboOpTip = new System.Windows.Forms.ComboBox();
            this.txtOpVr = new System.Windows.Forms.TextBox();
            this.comboPrimSOJ = new System.Windows.Forms.ComboBox();
            this.txtOsnastka = new System.Windows.Forms.TextBox();
            this.txtZahvat = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtPrintout = new System.Windows.Forms.TextBox();
            this.RunC = new System.Windows.Forms.Button();
            this.btnExit = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtKolUst
            // 
            this.txtKolUst.Location = new System.Drawing.Point(41, 23);
            this.txtKolUst.Name = "txtKolUst";
            this.txtKolUst.Size = new System.Drawing.Size(121, 20);
            this.txtKolUst.TabIndex = 0;
            // 
            // comboOpTip
            // 
            this.comboOpTip.FormattingEnabled = true;
            this.comboOpTip.Location = new System.Drawing.Point(41, 62);
            this.comboOpTip.Name = "comboOpTip";
            this.comboOpTip.Size = new System.Drawing.Size(121, 21);
            this.comboOpTip.TabIndex = 1;
            // 
            // txtOpVr
            // 
            this.txtOpVr.Location = new System.Drawing.Point(278, 23);
            this.txtOpVr.Name = "txtOpVr";
            this.txtOpVr.Size = new System.Drawing.Size(100, 20);
            this.txtOpVr.TabIndex = 2;
            // 
            // comboPrimSOJ
            // 
            this.comboPrimSOJ.FormattingEnabled = true;
            this.comboPrimSOJ.Location = new System.Drawing.Point(41, 102);
            this.comboPrimSOJ.Name = "comboPrimSOJ";
            this.comboPrimSOJ.Size = new System.Drawing.Size(121, 21);
            this.comboPrimSOJ.TabIndex = 3;
            // 
            // txtOsnastka
            // 
            this.txtOsnastka.Location = new System.Drawing.Point(278, 62);
            this.txtOsnastka.Name = "txtOsnastka";
            this.txtOsnastka.Size = new System.Drawing.Size(100, 20);
            this.txtOsnastka.TabIndex = 4;
            // 
            // txtZahvat
            // 
            this.txtZahvat.Location = new System.Drawing.Point(278, 102);
            this.txtZahvat.Name = "txtZahvat";
            this.txtZahvat.Size = new System.Drawing.Size(100, 20);
            this.txtZahvat.TabIndex = 5;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(38, 7);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(124, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Количество установов:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(275, 7);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(174, 13);
            this.label2.TabIndex = 7;
            this.label2.Text = "Время на выполнение операции:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(275, 46);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(149, 13);
            this.label3.TabIndex = 8;
            this.label3.Text = "Оснастка для базирования:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(38, 46);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(80, 13);
            this.label4.TabIndex = 9;
            this.label4.Text = "Тип операции:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(38, 86);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(103, 13);
            this.label5.TabIndex = 10;
            this.label5.Text = "Применение СОЖ:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(275, 86);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(45, 13);
            this.label6.TabIndex = 11;
            this.label6.Text = "Захват:";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtPrintout);
            this.groupBox1.Location = new System.Drawing.Point(12, 129);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(446, 448);
            this.groupBox1.TabIndex = 14;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Результат:";
            // 
            // txtPrintout
            // 
            this.txtPrintout.Location = new System.Drawing.Point(5, 17);
            this.txtPrintout.Multiline = true;
            this.txtPrintout.Name = "txtPrintout";
            this.txtPrintout.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtPrintout.Size = new System.Drawing.Size(435, 425);
            this.txtPrintout.TabIndex = 0;
            // 
            // RunC
            // 
            this.RunC.Image = global::CSharp_CLIPS.Properties.Resources.gear_run_48;
            this.RunC.Location = new System.Drawing.Point(341, 583);
            this.RunC.Name = "RunC";
            this.RunC.Size = new System.Drawing.Size(55, 55);
            this.RunC.TabIndex = 15;
            this.RunC.UseVisualStyleBackColor = true;
            this.RunC.Click += new System.EventHandler(this.RunC_Click);
            // 
            // btnExit
            // 
            this.btnExit.Image = global::CSharp_CLIPS.Properties.Resources.Security_Shields_Critical_32xLG_color;
            this.btnExit.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.btnExit.Location = new System.Drawing.Point(403, 583);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(55, 55);
            this.btnExit.TabIndex = 12;
            this.btnExit.Text = "Выход";
            this.btnExit.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // FrmModuleC
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(470, 650);
            this.Controls.Add(this.RunC);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtZahvat);
            this.Controls.Add(this.txtOsnastka);
            this.Controls.Add(this.comboPrimSOJ);
            this.Controls.Add(this.txtOpVr);
            this.Controls.Add(this.comboOpTip);
            this.Controls.Add(this.txtKolUst);
            this.Name = "FrmModuleC";
            this.Text = "Модуль C";
            this.Load += new System.EventHandler(this.FrmModuleC_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtKolUst;
        private System.Windows.Forms.ComboBox comboOpTip;
        private System.Windows.Forms.TextBox txtOpVr;
        private System.Windows.Forms.ComboBox comboPrimSOJ;
        private System.Windows.Forms.TextBox txtOsnastka;
        private System.Windows.Forms.TextBox txtZahvat;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtPrintout;
        private System.Windows.Forms.Button RunC;
    }
}
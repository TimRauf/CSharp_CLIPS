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
            this.grBoxOutData = new System.Windows.Forms.GroupBox();
            this.txtPrintout = new System.Windows.Forms.TextBox();
            this.RunC = new System.Windows.Forms.Button();
            this.btnExit = new System.Windows.Forms.Button();
            this.grBoxInData = new System.Windows.Forms.GroupBox();
            this.grBoxButtons = new System.Windows.Forms.GroupBox();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.редактированиеToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.очиститьДанныеToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.grBoxOutData.SuspendLayout();
            this.grBoxInData.SuspendLayout();
            this.grBoxButtons.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtKolUst
            // 
            this.txtKolUst.Location = new System.Drawing.Point(9, 39);
            this.txtKolUst.Name = "txtKolUst";
            this.txtKolUst.Size = new System.Drawing.Size(121, 20);
            this.txtKolUst.TabIndex = 0;
            // 
            // comboOpTip
            // 
            this.comboOpTip.FormattingEnabled = true;
            this.comboOpTip.Location = new System.Drawing.Point(9, 87);
            this.comboOpTip.Name = "comboOpTip";
            this.comboOpTip.Size = new System.Drawing.Size(121, 21);
            this.comboOpTip.TabIndex = 1;
            // 
            // txtOpVr
            // 
            this.txtOpVr.Location = new System.Drawing.Point(185, 39);
            this.txtOpVr.Name = "txtOpVr";
            this.txtOpVr.Size = new System.Drawing.Size(100, 20);
            this.txtOpVr.TabIndex = 2;
            // 
            // comboPrimSOJ
            // 
            this.comboPrimSOJ.FormattingEnabled = true;
            this.comboPrimSOJ.Location = new System.Drawing.Point(9, 127);
            this.comboPrimSOJ.Name = "comboPrimSOJ";
            this.comboPrimSOJ.Size = new System.Drawing.Size(121, 21);
            this.comboPrimSOJ.TabIndex = 3;
            // 
            // txtOsnastka
            // 
            this.txtOsnastka.Location = new System.Drawing.Point(185, 86);
            this.txtOsnastka.Name = "txtOsnastka";
            this.txtOsnastka.Size = new System.Drawing.Size(100, 20);
            this.txtOsnastka.TabIndex = 4;
            // 
            // txtZahvat
            // 
            this.txtZahvat.Location = new System.Drawing.Point(185, 127);
            this.txtZahvat.Name = "txtZahvat";
            this.txtZahvat.Size = new System.Drawing.Size(100, 20);
            this.txtZahvat.TabIndex = 5;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(124, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Количество установов:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(182, 23);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(174, 13);
            this.label2.TabIndex = 7;
            this.label2.Text = "Время на выполнение операции:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(182, 70);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(149, 13);
            this.label3.TabIndex = 8;
            this.label3.Text = "Оснастка для базирования:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 71);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(80, 13);
            this.label4.TabIndex = 9;
            this.label4.Text = "Тип операции:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 111);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(103, 13);
            this.label5.TabIndex = 10;
            this.label5.Text = "Применение СОЖ:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(182, 111);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(45, 13);
            this.label6.TabIndex = 11;
            this.label6.Text = "Захват:";
            // 
            // grBoxOutData
            // 
            this.grBoxOutData.Controls.Add(this.txtPrintout);
            this.grBoxOutData.Location = new System.Drawing.Point(12, 193);
            this.grBoxOutData.Name = "grBoxOutData";
            this.grBoxOutData.Size = new System.Drawing.Size(446, 448);
            this.grBoxOutData.TabIndex = 14;
            this.grBoxOutData.TabStop = false;
            this.grBoxOutData.Text = "Результат:";
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
            this.RunC.Location = new System.Drawing.Point(324, 16);
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
            this.btnExit.Location = new System.Drawing.Point(385, 16);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(55, 55);
            this.btnExit.TabIndex = 12;
            this.btnExit.Text = "Выход";
            this.btnExit.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // grBoxInData
            // 
            this.grBoxInData.Controls.Add(this.label1);
            this.grBoxInData.Controls.Add(this.txtKolUst);
            this.grBoxInData.Controls.Add(this.label2);
            this.grBoxInData.Controls.Add(this.txtOpVr);
            this.grBoxInData.Controls.Add(this.label6);
            this.grBoxInData.Controls.Add(this.txtZahvat);
            this.grBoxInData.Controls.Add(this.label4);
            this.grBoxInData.Controls.Add(this.label5);
            this.grBoxInData.Controls.Add(this.comboOpTip);
            this.grBoxInData.Controls.Add(this.comboPrimSOJ);
            this.grBoxInData.Controls.Add(this.label3);
            this.grBoxInData.Controls.Add(this.txtOsnastka);
            this.grBoxInData.Location = new System.Drawing.Point(12, 28);
            this.grBoxInData.Name = "grBoxInData";
            this.grBoxInData.Size = new System.Drawing.Size(446, 159);
            this.grBoxInData.TabIndex = 16;
            this.grBoxInData.TabStop = false;
            this.grBoxInData.Text = "Данные";
            // 
            // grBoxButtons
            // 
            this.grBoxButtons.BackColor = System.Drawing.Color.Silver;
            this.grBoxButtons.Controls.Add(this.btnExit);
            this.grBoxButtons.Controls.Add(this.RunC);
            this.grBoxButtons.Location = new System.Drawing.Point(12, 642);
            this.grBoxButtons.Name = "grBoxButtons";
            this.grBoxButtons.Size = new System.Drawing.Size(446, 80);
            this.grBoxButtons.TabIndex = 17;
            this.grBoxButtons.TabStop = false;
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.редактированиеToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(463, 24);
            this.menuStrip1.TabIndex = 18;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // редактированиеToolStripMenuItem
            // 
            this.редактированиеToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.очиститьДанныеToolStripMenuItem});
            this.редактированиеToolStripMenuItem.Name = "редактированиеToolStripMenuItem";
            this.редактированиеToolStripMenuItem.Size = new System.Drawing.Size(108, 20);
            this.редактированиеToolStripMenuItem.Text = "Редактирование";
            this.редактированиеToolStripMenuItem.TextAlign = System.Drawing.ContentAlignment.TopLeft;
            // 
            // очиститьДанныеToolStripMenuItem
            // 
            this.очиститьДанныеToolStripMenuItem.Name = "очиститьДанныеToolStripMenuItem";
            this.очиститьДанныеToolStripMenuItem.Size = new System.Drawing.Size(170, 22);
            this.очиститьДанныеToolStripMenuItem.Text = "Очистить данные";
            // 
            // FrmModuleC
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(463, 754);
            this.Controls.Add(this.grBoxButtons);
            this.Controls.Add(this.grBoxInData);
            this.Controls.Add(this.grBoxOutData);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "FrmModuleC";
            this.Text = "Модуль C";
            this.Load += new System.EventHandler(this.FrmModuleC_Load);
            this.grBoxOutData.ResumeLayout(false);
            this.grBoxOutData.PerformLayout();
            this.grBoxInData.ResumeLayout(false);
            this.grBoxInData.PerformLayout();
            this.grBoxButtons.ResumeLayout(false);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
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
        private System.Windows.Forms.GroupBox grBoxOutData;
        private System.Windows.Forms.TextBox txtPrintout;
        private System.Windows.Forms.Button RunC;
        private System.Windows.Forms.GroupBox grBoxButtons;
        private System.Windows.Forms.GroupBox grBoxInData;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem редактированиеToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem очиститьДанныеToolStripMenuItem;
    }
}
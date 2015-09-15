﻿namespace CSharp_CLIPS
{
    partial class FrmModuleA
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
            this.comboDetTip = new System.Windows.Forms.ComboBox();
            this.labelDetType = new System.Windows.Forms.Label();
            this.txtDetName = new System.Windows.Forms.TextBox();
            this.txtGabDetDl = new System.Windows.Forms.TextBox();
            this.txtGabDetSh = new System.Windows.Forms.TextBox();
            this.txtGabDetV = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.comboZagMat = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.comboSposPol = new System.Windows.Forms.ComboBox();
            this.txtZagMass = new System.Windows.Forms.TextBox();
            this.txtDetMass = new System.Windows.Forms.TextBox();
            this.txtStanEm = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtKolTexMod = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.txtPrintout = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.RunA = new System.Windows.Forms.Button();
            this.NextStage = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.файлToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.редактированиеToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.справкаToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.выходToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.очиститьФормуToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.aboutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.groupBox1.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // comboDetTip
            // 
            this.comboDetTip.DropDownHeight = 40;
            this.comboDetTip.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.comboDetTip.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboDetTip.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.comboDetTip.FormattingEnabled = true;
            this.comboDetTip.IntegralHeight = false;
            this.comboDetTip.ItemHeight = 13;
            this.comboDetTip.Location = new System.Drawing.Point(12, 83);
            this.comboDetTip.MaxDropDownItems = 10;
            this.comboDetTip.Name = "comboDetTip";
            this.comboDetTip.Size = new System.Drawing.Size(125, 21);
            this.comboDetTip.TabIndex = 1;
            // 
            // labelDetType
            // 
            this.labelDetType.AutoSize = true;
            this.labelDetType.Location = new System.Drawing.Point(12, 67);
            this.labelDetType.Name = "labelDetType";
            this.labelDetType.Size = new System.Drawing.Size(107, 13);
            this.labelDetType.TabIndex = 2;
            this.labelDetType.Text = "Выбор типа детали:";
            // 
            // txtDetName
            // 
            this.txtDetName.Location = new System.Drawing.Point(12, 43);
            this.txtDetName.Name = "txtDetName";
            this.txtDetName.Size = new System.Drawing.Size(198, 20);
            this.txtDetName.TabIndex = 3;
            // 
            // txtGabDetDl
            // 
            this.txtGabDetDl.Location = new System.Drawing.Point(281, 43);
            this.txtGabDetDl.MaxLength = 5;
            this.txtGabDetDl.Name = "txtGabDetDl";
            this.txtGabDetDl.Size = new System.Drawing.Size(30, 20);
            this.txtGabDetDl.TabIndex = 4;
            this.txtGabDetDl.TextChanged += new System.EventHandler(this.txtGabDetDl_TextChanged);
            // 
            // txtGabDetSh
            // 
            this.txtGabDetSh.Location = new System.Drawing.Point(314, 43);
            this.txtGabDetSh.MaxLength = 5;
            this.txtGabDetSh.Name = "txtGabDetSh";
            this.txtGabDetSh.Size = new System.Drawing.Size(31, 20);
            this.txtGabDetSh.TabIndex = 5;
            this.txtGabDetSh.TextChanged += new System.EventHandler(this.txtGabDetSh_TextChanged);
            // 
            // txtGabDetV
            // 
            this.txtGabDetV.Location = new System.Drawing.Point(350, 43);
            this.txtGabDetV.MaxLength = 5;
            this.txtGabDetV.Name = "txtGabDetV";
            this.txtGabDetV.Size = new System.Drawing.Size(31, 20);
            this.txtGabDetV.TabIndex = 6;
            this.txtGabDetV.TextChanged += new System.EventHandler(this.txtGabDetV_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(281, 67);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(156, 13);
            this.label1.TabIndex = 8;
            this.label1.Text = "Выбор материала заготовки:";
            // 
            // comboZagMat
            // 
            this.comboZagMat.DropDownHeight = 40;
            this.comboZagMat.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.comboZagMat.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboZagMat.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.comboZagMat.FormattingEnabled = true;
            this.comboZagMat.IntegralHeight = false;
            this.comboZagMat.Location = new System.Drawing.Point(281, 83);
            this.comboZagMat.Name = "comboZagMat";
            this.comboZagMat.Size = new System.Drawing.Size(156, 21);
            this.comboZagMat.TabIndex = 7;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 118);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(198, 13);
            this.label2.TabIndex = 10;
            this.label2.Text = "Выбор способа получения заготовки:";
            // 
            // comboSposPol
            // 
            this.comboSposPol.DropDownHeight = 40;
            this.comboSposPol.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.comboSposPol.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboSposPol.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.comboSposPol.FormattingEnabled = true;
            this.comboSposPol.IntegralHeight = false;
            this.comboSposPol.Location = new System.Drawing.Point(12, 134);
            this.comboSposPol.Name = "comboSposPol";
            this.comboSposPol.Size = new System.Drawing.Size(198, 21);
            this.comboSposPol.TabIndex = 9;
            // 
            // txtZagMass
            // 
            this.txtZagMass.Location = new System.Drawing.Point(284, 134);
            this.txtZagMass.MaxLength = 10;
            this.txtZagMass.Name = "txtZagMass";
            this.txtZagMass.Size = new System.Drawing.Size(54, 20);
            this.txtZagMass.TabIndex = 11;
            this.txtZagMass.TextChanged += new System.EventHandler(this.txtZagMass_TextChanged);
            // 
            // txtDetMass
            // 
            this.txtDetMass.Location = new System.Drawing.Point(394, 135);
            this.txtDetMass.MaxLength = 10;
            this.txtDetMass.Name = "txtDetMass";
            this.txtDetMass.Size = new System.Drawing.Size(50, 20);
            this.txtDetMass.TabIndex = 12;
            this.txtDetMass.TextChanged += new System.EventHandler(this.txtDetMass_TextChanged);
            // 
            // txtStanEm
            // 
            this.txtStanEm.Location = new System.Drawing.Point(281, 182);
            this.txtStanEm.MaxLength = 5;
            this.txtStanEm.Name = "txtStanEm";
            this.txtStanEm.Size = new System.Drawing.Size(100, 20);
            this.txtStanEm.TabIndex = 13;
            this.txtStanEm.TextChanged += new System.EventHandler(this.txtStanEm_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(281, 119);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(98, 13);
            this.label3.TabIndex = 14;
            this.label3.Text = "Масса заготовки:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(391, 119);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(81, 13);
            this.label4.TabIndex = 15;
            this.label4.Text = "Масса детали:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(281, 165);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(89, 13);
            this.label5.TabIndex = 16;
            this.label5.Text = "Станкоемкость:";
            // 
            // txtKolTexMod
            // 
            this.txtKolTexMod.Location = new System.Drawing.Point(15, 182);
            this.txtKolTexMod.MaxLength = 5;
            this.txtKolTexMod.Name = "txtKolTexMod";
            this.txtKolTexMod.Size = new System.Drawing.Size(69, 20);
            this.txtKolTexMod.TabIndex = 17;
            this.txtKolTexMod.TextChanged += new System.EventHandler(this.txtKolTexMod_TextChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(12, 166);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(203, 13);
            this.label6.TabIndex = 18;
            this.label6.Text = "Количество технологических модулей:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(281, 27);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(57, 13);
            this.label7.TabIndex = 19;
            this.label7.Text = "Д x Ш x В:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(12, 27);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(124, 13);
            this.label8.TabIndex = 20;
            this.label8.Text = "Наименование детали:";
            // 
            // txtPrintout
            // 
            this.txtPrintout.Location = new System.Drawing.Point(6, 16);
            this.txtPrintout.Multiline = true;
            this.txtPrintout.Name = "txtPrintout";
            this.txtPrintout.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtPrintout.Size = new System.Drawing.Size(444, 177);
            this.txtPrintout.TabIndex = 21;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtPrintout);
            this.groupBox1.Location = new System.Drawing.Point(15, 209);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(457, 199);
            this.groupBox1.TabIndex = 22;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Результат:";
            // 
            // RunA
            // 
            this.RunA.Image = global::CSharp_CLIPS.Properties.Resources.gear_run_48;
            this.RunA.Location = new System.Drawing.Point(360, 414);
            this.RunA.Name = "RunA";
            this.RunA.Size = new System.Drawing.Size(55, 55);
            this.RunA.TabIndex = 23;
            this.RunA.UseVisualStyleBackColor = true;
            this.RunA.Click += new System.EventHandler(this.RunA_Click);
            // 
            // NextStage
            // 
            this.NextStage.Image = global::CSharp_CLIPS.Properties.Resources.arrow_Forward_color_32xLG;
            this.NextStage.Location = new System.Drawing.Point(421, 414);
            this.NextStage.Name = "NextStage";
            this.NextStage.Size = new System.Drawing.Size(51, 56);
            this.NextStage.TabIndex = 0;
            this.NextStage.UseVisualStyleBackColor = true;
            this.NextStage.Click += new System.EventHandler(this.NextStage_Click);
            // 
            // button1
            // 
            this.button1.Image = global::CSharp_CLIPS.Properties.Resources.arrow_back_color_32xLG;
            this.button1.Location = new System.Drawing.Point(303, 413);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(51, 56);
            this.button1.TabIndex = 24;
            this.button1.UseVisualStyleBackColor = true;
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.файлToolStripMenuItem,
            this.редактированиеToolStripMenuItem,
            this.справкаToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(482, 24);
            this.menuStrip1.TabIndex = 25;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // файлToolStripMenuItem
            // 
            this.файлToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.выходToolStripMenuItem});
            this.файлToolStripMenuItem.Name = "файлToolStripMenuItem";
            this.файлToolStripMenuItem.Size = new System.Drawing.Size(48, 20);
            this.файлToolStripMenuItem.Text = "Файл";
            // 
            // редактированиеToolStripMenuItem
            // 
            this.редактированиеToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.очиститьФормуToolStripMenuItem});
            this.редактированиеToolStripMenuItem.Name = "редактированиеToolStripMenuItem";
            this.редактированиеToolStripMenuItem.Size = new System.Drawing.Size(108, 20);
            this.редактированиеToolStripMenuItem.Text = "Редактирование";
            // 
            // справкаToolStripMenuItem
            // 
            this.справкаToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.aboutToolStripMenuItem});
            this.справкаToolStripMenuItem.Name = "справкаToolStripMenuItem";
            this.справкаToolStripMenuItem.Size = new System.Drawing.Size(65, 20);
            this.справкаToolStripMenuItem.Text = "Справка";
            // 
            // выходToolStripMenuItem
            // 
            this.выходToolStripMenuItem.Name = "выходToolStripMenuItem";
            this.выходToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.выходToolStripMenuItem.Text = "Выход (Alt+X)";
            // 
            // очиститьФормуToolStripMenuItem
            // 
            this.очиститьФормуToolStripMenuItem.Name = "очиститьФормуToolStripMenuItem";
            this.очиститьФормуToolStripMenuItem.Size = new System.Drawing.Size(211, 22);
            this.очиститьФормуToolStripMenuItem.Text = "Очистить форму (Ctrl+E)";
            // 
            // aboutToolStripMenuItem
            // 
            this.aboutToolStripMenuItem.Name = "aboutToolStripMenuItem";
            this.aboutToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.aboutToolStripMenuItem.Text = "About (F1)";
            this.aboutToolStripMenuItem.Click += new System.EventHandler(this.aboutToolStripMenuItem_Click);
            // 
            // FrmModuleA
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(482, 476);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.RunA);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.txtKolTexMod);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtStanEm);
            this.Controls.Add(this.txtDetMass);
            this.Controls.Add(this.txtZagMass);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.comboSposPol);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.comboZagMat);
            this.Controls.Add(this.txtGabDetV);
            this.Controls.Add(this.txtGabDetSh);
            this.Controls.Add(this.txtGabDetDl);
            this.Controls.Add(this.txtDetName);
            this.Controls.Add(this.labelDetType);
            this.Controls.Add(this.comboDetTip);
            this.Controls.Add(this.NextStage);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "FrmModuleA";
            this.Text = "Модуль A";
            this.Load += new System.EventHandler(this.FrmModuleA_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button NextStage;
        private System.Windows.Forms.ComboBox comboDetTip;
        private System.Windows.Forms.Label labelDetType;
        private System.Windows.Forms.TextBox txtDetName;
        private System.Windows.Forms.TextBox txtGabDetDl;
        private System.Windows.Forms.TextBox txtGabDetSh;
        private System.Windows.Forms.TextBox txtGabDetV;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox comboZagMat;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox comboSposPol;
        private System.Windows.Forms.TextBox txtZagMass;
        private System.Windows.Forms.TextBox txtDetMass;
        private System.Windows.Forms.TextBox txtStanEm;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtKolTexMod;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtPrintout;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button RunA;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem файлToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem выходToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem редактированиеToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem очиститьФормуToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem справкаToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aboutToolStripMenuItem;
    }
}


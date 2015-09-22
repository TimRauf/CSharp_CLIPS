namespace CSharp_CLIPS
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
            this.grBoxOutData = new System.Windows.Forms.GroupBox();
            this.RunA = new System.Windows.Forms.Button();
            this.NextStage = new System.Windows.Forms.Button();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.File = new System.Windows.Forms.ToolStripMenuItem();
            this.tsMItemExit = new System.Windows.Forms.ToolStripMenuItem();
            this.Edit = new System.Windows.Forms.ToolStripMenuItem();
            this.tsClearForm = new System.Windows.Forms.ToolStripMenuItem();
            this.tsClearFacts = new System.Windows.Forms.ToolStripMenuItem();
            this.About = new System.Windows.Forms.ToolStripMenuItem();
            this.tsAbout = new System.Windows.Forms.ToolStripMenuItem();
            this.grBoxButtons = new System.Windows.Forms.GroupBox();
            this.grBoxInData = new System.Windows.Forms.GroupBox();
            this.grBoxOutData.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.grBoxButtons.SuspendLayout();
            this.grBoxInData.SuspendLayout();
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
            this.comboDetTip.Location = new System.Drawing.Point(6, 72);
            this.comboDetTip.MaxDropDownItems = 10;
            this.comboDetTip.Name = "comboDetTip";
            this.comboDetTip.Size = new System.Drawing.Size(125, 21);
            this.comboDetTip.TabIndex = 1;
            // 
            // labelDetType
            // 
            this.labelDetType.AutoSize = true;
            this.labelDetType.Location = new System.Drawing.Point(6, 56);
            this.labelDetType.Name = "labelDetType";
            this.labelDetType.Size = new System.Drawing.Size(107, 13);
            this.labelDetType.TabIndex = 2;
            this.labelDetType.Text = "Выбор типа детали:";
            // 
            // txtDetName
            // 
            this.txtDetName.Location = new System.Drawing.Point(6, 32);
            this.txtDetName.Name = "txtDetName";
            this.txtDetName.Size = new System.Drawing.Size(198, 20);
            this.txtDetName.TabIndex = 3;
            // 
            // txtGabDetDl
            // 
            this.txtGabDetDl.Location = new System.Drawing.Point(251, 32);
            this.txtGabDetDl.MaxLength = 5;
            this.txtGabDetDl.Name = "txtGabDetDl";
            this.txtGabDetDl.Size = new System.Drawing.Size(30, 20);
            this.txtGabDetDl.TabIndex = 4;
            this.txtGabDetDl.TextChanged += new System.EventHandler(this.txtGabDetDl_TextChanged);
            // 
            // txtGabDetSh
            // 
            this.txtGabDetSh.Location = new System.Drawing.Point(284, 32);
            this.txtGabDetSh.MaxLength = 5;
            this.txtGabDetSh.Name = "txtGabDetSh";
            this.txtGabDetSh.Size = new System.Drawing.Size(31, 20);
            this.txtGabDetSh.TabIndex = 5;
            this.txtGabDetSh.TextChanged += new System.EventHandler(this.txtGabDetSh_TextChanged);
            // 
            // txtGabDetV
            // 
            this.txtGabDetV.Location = new System.Drawing.Point(320, 32);
            this.txtGabDetV.MaxLength = 5;
            this.txtGabDetV.Name = "txtGabDetV";
            this.txtGabDetV.Size = new System.Drawing.Size(31, 20);
            this.txtGabDetV.TabIndex = 6;
            this.txtGabDetV.TextChanged += new System.EventHandler(this.txtGabDetV_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(251, 56);
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
            this.comboZagMat.Location = new System.Drawing.Point(251, 72);
            this.comboZagMat.Name = "comboZagMat";
            this.comboZagMat.Size = new System.Drawing.Size(156, 21);
            this.comboZagMat.TabIndex = 7;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 107);
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
            this.comboSposPol.Location = new System.Drawing.Point(6, 123);
            this.comboSposPol.Name = "comboSposPol";
            this.comboSposPol.Size = new System.Drawing.Size(198, 21);
            this.comboSposPol.TabIndex = 9;
            // 
            // txtZagMass
            // 
            this.txtZagMass.Location = new System.Drawing.Point(254, 123);
            this.txtZagMass.MaxLength = 10;
            this.txtZagMass.Name = "txtZagMass";
            this.txtZagMass.Size = new System.Drawing.Size(54, 20);
            this.txtZagMass.TabIndex = 11;
            this.txtZagMass.TextChanged += new System.EventHandler(this.txtZagMass_TextChanged);
            // 
            // txtDetMass
            // 
            this.txtDetMass.Location = new System.Drawing.Point(364, 124);
            this.txtDetMass.MaxLength = 10;
            this.txtDetMass.Name = "txtDetMass";
            this.txtDetMass.Size = new System.Drawing.Size(50, 20);
            this.txtDetMass.TabIndex = 12;
            this.txtDetMass.TextChanged += new System.EventHandler(this.txtDetMass_TextChanged);
            // 
            // txtStanEm
            // 
            this.txtStanEm.Location = new System.Drawing.Point(251, 171);
            this.txtStanEm.MaxLength = 5;
            this.txtStanEm.Name = "txtStanEm";
            this.txtStanEm.Size = new System.Drawing.Size(100, 20);
            this.txtStanEm.TabIndex = 13;
            this.txtStanEm.TextChanged += new System.EventHandler(this.txtStanEm_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(251, 108);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(98, 13);
            this.label3.TabIndex = 14;
            this.label3.Text = "Масса заготовки:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(361, 108);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(81, 13);
            this.label4.TabIndex = 15;
            this.label4.Text = "Масса детали:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(251, 154);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(89, 13);
            this.label5.TabIndex = 16;
            this.label5.Text = "Станкоемкость:";
            // 
            // txtKolTexMod
            // 
            this.txtKolTexMod.Location = new System.Drawing.Point(9, 171);
            this.txtKolTexMod.MaxLength = 5;
            this.txtKolTexMod.Name = "txtKolTexMod";
            this.txtKolTexMod.Size = new System.Drawing.Size(69, 20);
            this.txtKolTexMod.TabIndex = 17;
            this.txtKolTexMod.TextChanged += new System.EventHandler(this.txtKolTexMod_TextChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(6, 155);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(203, 13);
            this.label6.TabIndex = 18;
            this.label6.Text = "Количество технологических модулей:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(251, 16);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(57, 13);
            this.label7.TabIndex = 19;
            this.label7.Text = "Д x Ш x В:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(6, 16);
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
            // grBoxOutData
            // 
            this.grBoxOutData.Controls.Add(this.txtPrintout);
            this.grBoxOutData.Location = new System.Drawing.Point(15, 234);
            this.grBoxOutData.Name = "grBoxOutData";
            this.grBoxOutData.Size = new System.Drawing.Size(457, 199);
            this.grBoxOutData.TabIndex = 22;
            this.grBoxOutData.TabStop = false;
            this.grBoxOutData.Text = "Результат:";
            // 
            // RunA
            // 
            this.RunA.Image = global::CSharp_CLIPS.Properties.Resources.gear_run_48;
            this.RunA.Location = new System.Drawing.Point(335, 14);
            this.RunA.Name = "RunA";
            this.RunA.Size = new System.Drawing.Size(55, 55);
            this.RunA.TabIndex = 23;
            this.RunA.UseVisualStyleBackColor = true;
            this.RunA.Click += new System.EventHandler(this.RunA_Click);
            // 
            // NextStage
            // 
            this.NextStage.Image = global::CSharp_CLIPS.Properties.Resources.arrow_Forward_color_32xLG;
            this.NextStage.Location = new System.Drawing.Point(396, 14);
            this.NextStage.Name = "NextStage";
            this.NextStage.Size = new System.Drawing.Size(51, 56);
            this.NextStage.TabIndex = 0;
            this.NextStage.UseVisualStyleBackColor = true;
            this.NextStage.Click += new System.EventHandler(this.NextStage_Click);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.File,
            this.Edit,
            this.About});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(479, 24);
            this.menuStrip1.TabIndex = 25;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // File
            // 
            this.File.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsMItemExit});
            this.File.Name = "File";
            this.File.Size = new System.Drawing.Size(48, 20);
            this.File.Text = "Файл";
            this.File.TextAlign = System.Drawing.ContentAlignment.TopLeft;
            // 
            // tsMItemExit
            // 
            this.tsMItemExit.Name = "tsMItemExit";
            this.tsMItemExit.Size = new System.Drawing.Size(152, 22);
            this.tsMItemExit.Text = "Выход";
            this.tsMItemExit.Click += new System.EventHandler(this.exitToolStripMenuItem_Click);
            // 
            // Edit
            // 
            this.Edit.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsClearForm,
            this.tsClearFacts});
            this.Edit.Name = "Edit";
            this.Edit.Size = new System.Drawing.Size(108, 20);
            this.Edit.Text = "Редактирование";
            this.Edit.TextAlign = System.Drawing.ContentAlignment.TopLeft;
            // 
            // tsClearForm
            // 
            this.tsClearForm.Name = "tsClearForm";
            this.tsClearForm.Size = new System.Drawing.Size(170, 22);
            this.tsClearForm.Text = "Очистить данные";
            this.tsClearForm.Click += new System.EventHandler(this.tsClearForm_Click);
            // 
            // tsClearFacts
            // 
            this.tsClearFacts.Name = "tsClearFacts";
            this.tsClearFacts.Size = new System.Drawing.Size(170, 22);
            this.tsClearFacts.Text = "Удалить факты";
            this.tsClearFacts.Click += new System.EventHandler(this.tsClearFacts_Click);
            // 
            // About
            // 
            this.About.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsAbout});
            this.About.Name = "About";
            this.About.Size = new System.Drawing.Size(65, 20);
            this.About.Text = "Справка";
            this.About.TextAlign = System.Drawing.ContentAlignment.TopLeft;
            // 
            // tsAbout
            // 
            this.tsAbout.Name = "tsAbout";
            this.tsAbout.Size = new System.Drawing.Size(149, 22);
            this.tsAbout.Text = "О программе";
            this.tsAbout.Click += new System.EventHandler(this.aboutToolStripMenuItem_Click);
            // 
            // grBoxButtons
            // 
            this.grBoxButtons.Controls.Add(this.NextStage);
            this.grBoxButtons.Controls.Add(this.RunA);
            this.grBoxButtons.Location = new System.Drawing.Point(15, 432);
            this.grBoxButtons.Name = "grBoxButtons";
            this.grBoxButtons.Size = new System.Drawing.Size(457, 81);
            this.grBoxButtons.TabIndex = 26;
            this.grBoxButtons.TabStop = false;
            // 
            // grBoxInData
            // 
            this.grBoxInData.Controls.Add(this.label8);
            this.grBoxInData.Controls.Add(this.comboDetTip);
            this.grBoxInData.Controls.Add(this.labelDetType);
            this.grBoxInData.Controls.Add(this.txtDetName);
            this.grBoxInData.Controls.Add(this.label7);
            this.grBoxInData.Controls.Add(this.txtGabDetDl);
            this.grBoxInData.Controls.Add(this.label6);
            this.grBoxInData.Controls.Add(this.txtGabDetSh);
            this.grBoxInData.Controls.Add(this.txtKolTexMod);
            this.grBoxInData.Controls.Add(this.txtGabDetV);
            this.grBoxInData.Controls.Add(this.label5);
            this.grBoxInData.Controls.Add(this.comboZagMat);
            this.grBoxInData.Controls.Add(this.label4);
            this.grBoxInData.Controls.Add(this.label1);
            this.grBoxInData.Controls.Add(this.label3);
            this.grBoxInData.Controls.Add(this.comboSposPol);
            this.grBoxInData.Controls.Add(this.txtStanEm);
            this.grBoxInData.Controls.Add(this.label2);
            this.grBoxInData.Controls.Add(this.txtDetMass);
            this.grBoxInData.Controls.Add(this.txtZagMass);
            this.grBoxInData.Location = new System.Drawing.Point(15, 27);
            this.grBoxInData.Name = "grBoxInData";
            this.grBoxInData.Size = new System.Drawing.Size(457, 204);
            this.grBoxInData.TabIndex = 27;
            this.grBoxInData.TabStop = false;
            this.grBoxInData.Text = "Данные";
            // 
            // FrmModuleA
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(479, 521);
            this.Controls.Add(this.grBoxInData);
            this.Controls.Add(this.grBoxButtons);
            this.Controls.Add(this.grBoxOutData);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "FrmModuleA";
            this.Text = "Модуль A";
            this.Load += new System.EventHandler(this.FrmModuleA_Load);
            this.grBoxOutData.ResumeLayout(false);
            this.grBoxOutData.PerformLayout();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.grBoxButtons.ResumeLayout(false);
            this.grBoxInData.ResumeLayout(false);
            this.grBoxInData.PerformLayout();
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
        private System.Windows.Forms.GroupBox grBoxOutData;
        private System.Windows.Forms.Button RunA;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem File;
        private System.Windows.Forms.ToolStripMenuItem tsMItemExit;
        private System.Windows.Forms.ToolStripMenuItem Edit;
        private System.Windows.Forms.ToolStripMenuItem tsClearForm;
        private System.Windows.Forms.ToolStripMenuItem About;
        private System.Windows.Forms.ToolStripMenuItem tsAbout;
        private System.Windows.Forms.GroupBox grBoxButtons;
        private System.Windows.Forms.GroupBox grBoxInData;
        private System.Windows.Forms.ToolStripMenuItem tsClearFacts;
    }
}


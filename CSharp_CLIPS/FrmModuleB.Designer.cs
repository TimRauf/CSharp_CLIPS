namespace CSharp_CLIPS
{
    partial class FrmModuleB
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
            this.comboTipProiz = new System.Windows.Forms.ComboBox();
            this.comboKvalToch = new System.Windows.Forms.ComboBox();
            this.txtSkorRez = new System.Windows.Forms.TextBox();
            this.txtPodRez = new System.Windows.Forms.TextBox();
            this.txtGlubRez = new System.Windows.Forms.TextBox();
            this.txtVelPart = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.backStage = new System.Windows.Forms.Button();
            this.nextStage = new System.Windows.Forms.Button();
            this.groupBoxB = new System.Windows.Forms.GroupBox();
            this.groupBoxB2 = new System.Windows.Forms.GroupBox();
            this.txtPrintout = new System.Windows.Forms.TextBox();
            this.RunB = new System.Windows.Forms.Button();
            this.groupBoxB.SuspendLayout();
            this.groupBoxB2.SuspendLayout();
            this.SuspendLayout();
            // 
            // comboTipProiz
            // 
            this.comboTipProiz.FormattingEnabled = true;
            this.comboTipProiz.Location = new System.Drawing.Point(28, 31);
            this.comboTipProiz.Name = "comboTipProiz";
            this.comboTipProiz.Size = new System.Drawing.Size(121, 21);
            this.comboTipProiz.TabIndex = 0;
            this.comboTipProiz.Tag = "123";
            // 
            // comboKvalToch
            // 
            this.comboKvalToch.FormattingEnabled = true;
            this.comboKvalToch.Location = new System.Drawing.Point(171, 31);
            this.comboKvalToch.Name = "comboKvalToch";
            this.comboKvalToch.Size = new System.Drawing.Size(121, 21);
            this.comboKvalToch.TabIndex = 1;
            // 
            // txtSkorRez
            // 
            this.txtSkorRez.Location = new System.Drawing.Point(28, 80);
            this.txtSkorRez.MaxLength = 10;
            this.txtSkorRez.Name = "txtSkorRez";
            this.txtSkorRez.Size = new System.Drawing.Size(121, 20);
            this.txtSkorRez.TabIndex = 2;
            // 
            // txtPodRez
            // 
            this.txtPodRez.Location = new System.Drawing.Point(171, 80);
            this.txtPodRez.MaxLength = 10;
            this.txtPodRez.Name = "txtPodRez";
            this.txtPodRez.Size = new System.Drawing.Size(121, 20);
            this.txtPodRez.TabIndex = 3;
            // 
            // txtGlubRez
            // 
            this.txtGlubRez.Location = new System.Drawing.Point(171, 134);
            this.txtGlubRez.MaxLength = 10;
            this.txtGlubRez.Name = "txtGlubRez";
            this.txtGlubRez.Size = new System.Drawing.Size(121, 20);
            this.txtGlubRez.TabIndex = 4;
            // 
            // txtVelPart
            // 
            this.txtVelPart.Location = new System.Drawing.Point(28, 134);
            this.txtVelPart.MaxLength = 5;
            this.txtVelPart.Name = "txtVelPart";
            this.txtVelPart.Size = new System.Drawing.Size(121, 20);
            this.txtVelPart.TabIndex = 5;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(25, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(103, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Тип производства:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(25, 64);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(103, 13);
            this.label2.TabIndex = 7;
            this.label2.Text = "Скорость резания:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(25, 118);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(96, 13);
            this.label3.TabIndex = 8;
            this.label3.Text = "Величина партии:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(168, 15);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(105, 13);
            this.label4.TabIndex = 9;
            this.label4.Text = "Квалитет точности:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(168, 64);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(47, 13);
            this.label5.TabIndex = 10;
            this.label5.Text = "Подача:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(168, 118);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(96, 13);
            this.label6.TabIndex = 11;
            this.label6.Text = "Глубина резания:";
            // 
            // backStage
            // 
            this.backStage.Enabled = false;
            this.backStage.Image = global::CSharp_CLIPS.Properties.Resources.arrow_back_color_32xLG;
            this.backStage.Location = new System.Drawing.Point(158, 350);
            this.backStage.Name = "backStage";
            this.backStage.Size = new System.Drawing.Size(55, 55);
            this.backStage.TabIndex = 13;
            this.backStage.UseVisualStyleBackColor = true;
            this.backStage.Click += new System.EventHandler(this.backStage_Click);
            // 
            // nextStage
            // 
            this.nextStage.Image = global::CSharp_CLIPS.Properties.Resources.arrow_Forward_color_32xLG;
            this.nextStage.Location = new System.Drawing.Point(281, 350);
            this.nextStage.Name = "nextStage";
            this.nextStage.Size = new System.Drawing.Size(55, 55);
            this.nextStage.TabIndex = 12;
            this.nextStage.UseVisualStyleBackColor = true;
            this.nextStage.Click += new System.EventHandler(this.NextStage_Click);
            // 
            // groupBoxB
            // 
            this.groupBoxB.Controls.Add(this.label6);
            this.groupBoxB.Controls.Add(this.label5);
            this.groupBoxB.Controls.Add(this.label4);
            this.groupBoxB.Controls.Add(this.label3);
            this.groupBoxB.Controls.Add(this.label2);
            this.groupBoxB.Controls.Add(this.label1);
            this.groupBoxB.Controls.Add(this.txtVelPart);
            this.groupBoxB.Controls.Add(this.txtGlubRez);
            this.groupBoxB.Controls.Add(this.txtPodRez);
            this.groupBoxB.Controls.Add(this.txtSkorRez);
            this.groupBoxB.Controls.Add(this.comboKvalToch);
            this.groupBoxB.Controls.Add(this.comboTipProiz);
            this.groupBoxB.Location = new System.Drawing.Point(10, 9);
            this.groupBoxB.Name = "groupBoxB";
            this.groupBoxB.Size = new System.Drawing.Size(327, 172);
            this.groupBoxB.TabIndex = 14;
            this.groupBoxB.TabStop = false;
            // 
            // groupBoxB2
            // 
            this.groupBoxB2.Controls.Add(this.txtPrintout);
            this.groupBoxB2.Location = new System.Drawing.Point(10, 181);
            this.groupBoxB2.Name = "groupBoxB2";
            this.groupBoxB2.Size = new System.Drawing.Size(327, 163);
            this.groupBoxB2.TabIndex = 15;
            this.groupBoxB2.TabStop = false;
            this.groupBoxB2.Text = "Вывод:";
            // 
            // txtPrintout
            // 
            this.txtPrintout.Location = new System.Drawing.Point(6, 16);
            this.txtPrintout.Multiline = true;
            this.txtPrintout.Name = "txtPrintout";
            this.txtPrintout.Size = new System.Drawing.Size(315, 140);
            this.txtPrintout.TabIndex = 0;
            // 
            // RunB
            // 
            this.RunB.Image = global::CSharp_CLIPS.Properties.Resources.gear_run_48;
            this.RunB.Location = new System.Drawing.Point(219, 350);
            this.RunB.Name = "RunB";
            this.RunB.Size = new System.Drawing.Size(55, 55);
            this.RunB.TabIndex = 16;
            this.RunB.UseVisualStyleBackColor = true;
            this.RunB.Click += new System.EventHandler(this.RunB_Click);
            // 
            // FrmModuleB
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(343, 411);
            this.Controls.Add(this.RunB);
            this.Controls.Add(this.groupBoxB2);
            this.Controls.Add(this.groupBoxB);
            this.Controls.Add(this.backStage);
            this.Controls.Add(this.nextStage);
            this.Name = "FrmModuleB";
            this.Text = "Этап 2";
            this.Load += new System.EventHandler(this.FrmModuleB_Load);
            this.groupBoxB.ResumeLayout(false);
            this.groupBoxB.PerformLayout();
            this.groupBoxB2.ResumeLayout(false);
            this.groupBoxB2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ComboBox comboTipProiz;
        private System.Windows.Forms.ComboBox comboKvalToch;
        private System.Windows.Forms.TextBox txtSkorRez;
        private System.Windows.Forms.TextBox txtPodRez;
        private System.Windows.Forms.TextBox txtGlubRez;
        private System.Windows.Forms.TextBox txtVelPart;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button nextStage;
        private System.Windows.Forms.Button backStage;
        private System.Windows.Forms.GroupBox groupBoxB;
        private System.Windows.Forms.GroupBox groupBoxB2;
        private System.Windows.Forms.TextBox txtPrintout;
        private System.Windows.Forms.Button RunB;
    }
}
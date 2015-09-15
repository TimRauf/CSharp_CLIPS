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
            this.NextStage = new System.Windows.Forms.Button();
            this.grBoxOutData = new System.Windows.Forms.GroupBox();
            this.txtPrintout = new System.Windows.Forms.TextBox();
            this.RunB = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
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
            this.grBoxInData = new System.Windows.Forms.GroupBox();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.очиститьДанныеToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.очиститьДанныеToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.grBoxButtons = new System.Windows.Forms.GroupBox();
            this.grBoxOutData.SuspendLayout();
            this.grBoxInData.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.grBoxButtons.SuspendLayout();
            this.SuspendLayout();
            // 
            // NextStage
            // 
            this.NextStage.Image = global::CSharp_CLIPS.Properties.Resources.arrow_Forward_color_32xLG;
            this.NextStage.Location = new System.Drawing.Point(266, 14);
            this.NextStage.Name = "NextStage";
            this.NextStage.Size = new System.Drawing.Size(55, 55);
            this.NextStage.TabIndex = 12;
            this.NextStage.UseVisualStyleBackColor = true;
            this.NextStage.Click += new System.EventHandler(this.NextStage_Click);
            // 
            // grBoxOutData
            // 
            this.grBoxOutData.Controls.Add(this.txtPrintout);
            this.grBoxOutData.Location = new System.Drawing.Point(12, 203);
            this.grBoxOutData.Name = "grBoxOutData";
            this.grBoxOutData.Size = new System.Drawing.Size(327, 289);
            this.grBoxOutData.TabIndex = 15;
            this.grBoxOutData.TabStop = false;
            this.grBoxOutData.Text = "Результат:";
            // 
            // txtPrintout
            // 
            this.txtPrintout.Location = new System.Drawing.Point(6, 16);
            this.txtPrintout.Multiline = true;
            this.txtPrintout.Name = "txtPrintout";
            this.txtPrintout.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtPrintout.Size = new System.Drawing.Size(315, 267);
            this.txtPrintout.TabIndex = 0;
            // 
            // RunB
            // 
            this.RunB.Image = global::CSharp_CLIPS.Properties.Resources.gear_run_48;
            this.RunB.Location = new System.Drawing.Point(204, 14);
            this.RunB.Name = "RunB";
            this.RunB.Size = new System.Drawing.Size(55, 55);
            this.RunB.TabIndex = 16;
            this.RunB.UseVisualStyleBackColor = true;
            this.RunB.Click += new System.EventHandler(this.RunB_Click);
            // 
            // button1
            // 
            this.button1.Image = global::CSharp_CLIPS.Properties.Resources.arrow_back_color_32xLG;
            this.button1.Location = new System.Drawing.Point(142, 14);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(55, 55);
            this.button1.TabIndex = 17;
            this.button1.UseVisualStyleBackColor = true;
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
            // grBoxInData
            // 
            this.grBoxInData.Controls.Add(this.label6);
            this.grBoxInData.Controls.Add(this.label5);
            this.grBoxInData.Controls.Add(this.label4);
            this.grBoxInData.Controls.Add(this.label3);
            this.grBoxInData.Controls.Add(this.label2);
            this.grBoxInData.Controls.Add(this.label1);
            this.grBoxInData.Controls.Add(this.txtVelPart);
            this.grBoxInData.Controls.Add(this.txtGlubRez);
            this.grBoxInData.Controls.Add(this.txtPodRez);
            this.grBoxInData.Controls.Add(this.txtSkorRez);
            this.grBoxInData.Controls.Add(this.comboKvalToch);
            this.grBoxInData.Controls.Add(this.comboTipProiz);
            this.grBoxInData.Location = new System.Drawing.Point(12, 27);
            this.grBoxInData.Name = "grBoxInData";
            this.grBoxInData.Size = new System.Drawing.Size(327, 169);
            this.grBoxInData.TabIndex = 14;
            this.grBoxInData.TabStop = false;
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.очиститьДанныеToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.RenderMode = System.Windows.Forms.ToolStripRenderMode.Professional;
            this.menuStrip1.Size = new System.Drawing.Size(349, 24);
            this.menuStrip1.TabIndex = 18;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // очиститьДанныеToolStripMenuItem
            // 
            this.очиститьДанныеToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.очиститьДанныеToolStripMenuItem1});
            this.очиститьДанныеToolStripMenuItem.Name = "очиститьДанныеToolStripMenuItem";
            this.очиститьДанныеToolStripMenuItem.Size = new System.Drawing.Size(108, 20);
            this.очиститьДанныеToolStripMenuItem.Text = "Редактирование";
            this.очиститьДанныеToolStripMenuItem.TextAlign = System.Drawing.ContentAlignment.TopLeft;
            // 
            // очиститьДанныеToolStripMenuItem1
            // 
            this.очиститьДанныеToolStripMenuItem1.Name = "очиститьДанныеToolStripMenuItem1";
            this.очиститьДанныеToolStripMenuItem1.Size = new System.Drawing.Size(170, 22);
            this.очиститьДанныеToolStripMenuItem1.Text = "Очистить данные";
            // 
            // grBoxButtons
            // 
            this.grBoxButtons.BackColor = System.Drawing.Color.Silver;
            this.grBoxButtons.Controls.Add(this.NextStage);
            this.grBoxButtons.Controls.Add(this.button1);
            this.grBoxButtons.Controls.Add(this.RunB);
            this.grBoxButtons.Location = new System.Drawing.Point(12, 492);
            this.grBoxButtons.Name = "grBoxButtons";
            this.grBoxButtons.Size = new System.Drawing.Size(327, 75);
            this.grBoxButtons.TabIndex = 19;
            this.grBoxButtons.TabStop = false;
            // 
            // FrmModuleB
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(349, 573);
            this.Controls.Add(this.grBoxButtons);
            this.Controls.Add(this.grBoxOutData);
            this.Controls.Add(this.grBoxInData);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "FrmModuleB";
            this.Text = "Модуль B";
            this.Load += new System.EventHandler(this.FrmModuleB_Load);
            this.grBoxOutData.ResumeLayout(false);
            this.grBoxOutData.PerformLayout();
            this.grBoxInData.ResumeLayout(false);
            this.grBoxInData.PerformLayout();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.grBoxButtons.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button NextStage;
        private System.Windows.Forms.GroupBox grBoxOutData;
        private System.Windows.Forms.TextBox txtPrintout;
        private System.Windows.Forms.Button RunB;
        private System.Windows.Forms.Button button1;
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
        private System.Windows.Forms.GroupBox grBoxInData;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem очиститьДанныеToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem очиститьДанныеToolStripMenuItem1;
        private System.Windows.Forms.GroupBox grBoxButtons;
    }
}
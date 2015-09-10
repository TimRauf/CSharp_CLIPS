namespace CSharp_CLIPS
{
    partial class FormModuleA
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormModuleA));
            this.comboDetType = new System.Windows.Forms.ComboBox();
            this.labelDetType = new System.Windows.Forms.Label();
            this.textDetName = new System.Windows.Forms.TextBox();
            this.textDetLength = new System.Windows.Forms.TextBox();
            this.textDetWidth = new System.Windows.Forms.TextBox();
            this.textDetHeight = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.comboBox2 = new System.Windows.Forms.ComboBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.textBox4 = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // comboDetType
            // 
            this.comboDetType.DropDownHeight = 40;
            this.comboDetType.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.comboDetType.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboDetType.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.comboDetType.FormattingEnabled = true;
            this.comboDetType.IntegralHeight = false;
            this.comboDetType.Items.AddRange(new object[] {
            "1 - Тело вращения",
            "2 - Корпусная",
            "3 - Пруток"});
            this.comboDetType.Location = new System.Drawing.Point(12, 83);
            this.comboDetType.Name = "comboDetType";
            this.comboDetType.Size = new System.Drawing.Size(125, 21);
            this.comboDetType.TabIndex = 1;
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
            // textDetName
            // 
            this.textDetName.Location = new System.Drawing.Point(12, 33);
            this.textDetName.Name = "textDetName";
            this.textDetName.Size = new System.Drawing.Size(100, 20);
            this.textDetName.TabIndex = 3;
            // 
            // textDetLength
            // 
            this.textDetLength.Location = new System.Drawing.Point(281, 33);
            this.textDetLength.Name = "textDetLength";
            this.textDetLength.Size = new System.Drawing.Size(30, 20);
            this.textDetLength.TabIndex = 4;
            // 
            // textDetWidth
            // 
            this.textDetWidth.Location = new System.Drawing.Point(314, 33);
            this.textDetWidth.Name = "textDetWidth";
            this.textDetWidth.Size = new System.Drawing.Size(31, 20);
            this.textDetWidth.TabIndex = 5;
            // 
            // textDetHeight
            // 
            this.textDetHeight.Location = new System.Drawing.Point(350, 33);
            this.textDetHeight.Name = "textDetHeight";
            this.textDetHeight.Size = new System.Drawing.Size(31, 20);
            this.textDetHeight.TabIndex = 6;
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
            // comboBox1
            // 
            this.comboBox1.DropDownHeight = 40;
            this.comboBox1.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.comboBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboBox1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.IntegralHeight = false;
            this.comboBox1.Items.AddRange(new object[] {
            "1 - Сталь",
            "2 - Чугун",
            "3 - Цветной металл"});
            this.comboBox1.Location = new System.Drawing.Point(281, 83);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(156, 21);
            this.comboBox1.TabIndex = 7;
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
            // comboBox2
            // 
            this.comboBox2.DropDownHeight = 40;
            this.comboBox2.FlatStyle = System.Windows.Forms.FlatStyle.System;
            this.comboBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.comboBox2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(192)))));
            this.comboBox2.FormattingEnabled = true;
            this.comboBox2.IntegralHeight = false;
            this.comboBox2.Items.AddRange(new object[] {
            "1 - Литье",
            "2 - Литье под давлением",
            "3 - Штамповка",
            "4 - Ковка",
            "5 - Прокат"});
            this.comboBox2.Location = new System.Drawing.Point(12, 134);
            this.comboBox2.Name = "comboBox2";
            this.comboBox2.Size = new System.Drawing.Size(198, 21);
            this.comboBox2.TabIndex = 9;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(284, 134);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(30, 20);
            this.textBox1.TabIndex = 11;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(394, 135);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(30, 20);
            this.textBox2.TabIndex = 12;
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(281, 182);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(100, 20);
            this.textBox3.TabIndex = 13;
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
            // textBox4
            // 
            this.textBox4.Location = new System.Drawing.Point(15, 182);
            this.textBox4.Name = "textBox4";
            this.textBox4.Size = new System.Drawing.Size(35, 20);
            this.textBox4.TabIndex = 17;
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
            this.label7.Location = new System.Drawing.Point(281, 17);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(57, 13);
            this.label7.TabIndex = 19;
            this.label7.Text = "Д x Ш x В:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(12, 17);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(124, 13);
            this.label8.TabIndex = 20;
            this.label8.Text = "Наименование детали:";
            // 
            // button1
            // 
            this.button1.Image = global::CSharp_CLIPS.Properties.Resources.arrow_Forward_color_32xLG;
            this.button1.Location = new System.Drawing.Point(411, 232);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(65, 34);
            this.button1.TabIndex = 0;
            this.button1.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // FormModuleA
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(482, 278);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.textBox4);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.textBox3);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.comboBox2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.textDetHeight);
            this.Controls.Add(this.textDetWidth);
            this.Controls.Add(this.textDetLength);
            this.Controls.Add(this.textDetName);
            this.Controls.Add(this.labelDetType);
            this.Controls.Add(this.comboDetType);
            this.Controls.Add(this.button1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FormModuleA";
            this.Text = "Module A";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.ComboBox comboDetType;
        private System.Windows.Forms.Label labelDetType;
        private System.Windows.Forms.TextBox textDetName;
        private System.Windows.Forms.TextBox textDetLength;
        private System.Windows.Forms.TextBox textDetWidth;
        private System.Windows.Forms.TextBox textDetHeight;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox comboBox2;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox textBox4;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
    }
}


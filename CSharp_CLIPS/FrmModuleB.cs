using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Globalization;
using Mommosoft.ExpertSystem;

namespace CSharp_CLIPS
{
    public partial class FrmModuleB : Form
    {
        private Clips _clips;
        public FrmModuleB()
        {
            InitializeComponent();
            _clips = Clips.GetInstance();
        }
        private bool AllFieldsFull()
        {
            if (comboKvalToch.SelectedIndex != -1 && comboTipProiz.SelectedIndex != -1 && txtGlubRez.Text !="" &&
                txtPodRez.Text !="" && txtSkorRez.Text !="" && txtVelPart.Text !="")
            { return true; }
            else { return false; }
        }
        
        private void NextStage_Click(object sender, EventArgs e)
        {
            bool allChk = AllFieldsFull();
            if (allChk == true)
            {
                this.Hide();
                FrmModuleC frmModuleC = new FrmModuleC();
                frmModuleC.Show();
            }
            else { MessageBox.Show("Проверьте заполненность полей!", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error); }
        }

        private void FrmModuleB_Load(object sender, EventArgs e)
        {
            FillCombo();
        }
        private void FillCombo()
        {
            this.comboTipProiz.Items.Add(new SelectData(1, "Единичное"));
            this.comboTipProiz.Items.Add(new SelectData(2, "Серийное"));
            this.comboTipProiz.Items.Add(new SelectData(3, "Массовое"));
            this.comboTipProiz.Items.Add(new SelectData(3, "Крупносерийное"));

            this.comboKvalToch.Items.Add(new SelectData(6, "6"));
            this.comboKvalToch.Items.Add(new SelectData(7, "7"));
            this.comboKvalToch.Items.Add(new SelectData(8, "8"));
            this.comboKvalToch.Items.Add(new SelectData(9, "9"));
            this.comboKvalToch.Items.Add(new SelectData(10, "10"));
            this.comboKvalToch.Items.Add(new SelectData(11, "11"));
            this.comboKvalToch.Items.Add(new SelectData(12, "12"));
            this.comboKvalToch.Items.Add(new SelectData(13, "13"));
            this.comboKvalToch.Items.Add(new SelectData(14, "14"));            
        }
        private bool OpenOutFile()
        {
            PrimitiveValue rs = _clips.Evaluate("MAIN", "(open \"myFactsPrint.txt\" myData \"a\")");
            string res = rs.ToString();
            if (res == "TRUE")
            {
                return true;
            }
            else return false;
        }
        private void RunB_Click(object sender, EventArgs e)
        {
            bool fileOpened = OpenOutFile();
            bool check = AllFieldsFull();
            if (check == true && fileOpened == true)
            {
                int selectedValueTipProiz, selectedValueKvalToch;
                selectedValueTipProiz = ((SelectData)this.comboTipProiz.SelectedItem).Value;
                selectedValueKvalToch = ((SelectData)this.comboKvalToch.SelectedItem).Value;
                string floatVal1, floatVal2;
                CultureInfo ci = new CultureInfo("en-US");
                floatVal1 = Convert.ToSingle(txtGlubRez.Text, ci).ToString("0.00",ci);
                floatVal2 = Convert.ToSingle(txtPodRez.Text, ci).ToString("0.00",ci);
                //MessageBox.Show(floatVal1 + "_" + floatVal2);
                /* glubrez & podrez = float */
                string[] currFrmSlots = { "TipProiz:" + selectedValueTipProiz.ToString(), "KvalToch:" + selectedValueKvalToch.ToString(), "SkorRez:" + txtSkorRez.Text, 
                                          "PodRez:" + floatVal2, "GlubRez:" + floatVal1, "VelPart:" + txtVelPart.Text };

                _clips.AssertString("C_Dann2", currFrmSlots);
                _clips.Run();
                PrimitiveValue rs = _clips.Evaluate("MAIN", "(close myData)");
                string res = rs.ToString();
                if (res == "TRUE")
                {
                    Printout prn = new Printout();
                    string resTxt = Printout.Print();
                    txtPrintout.Text = resTxt;
                }
            }
        }
    }
}

using System;
using System.Windows.Forms;
using System.Windows.Forms.VisualStyles;
using System.Text;
using System.IO;
using Mommosoft.ExpertSystem;



namespace CSharp_CLIPS
{
    public partial class FrmModuleA : Form
    {
        private Clips _clips;
        public FrmModuleA()
        {
            InitializeComponent();
            _clips = Clips.GetInstance();
            
        }

        private bool AllFieldsFull()
        {
            if (comboDetTip.SelectedIndex != -1 && comboSposPol.SelectedIndex != -1 && comboZagMat.SelectedIndex != -1 &&
                /*txtDetMass.Text != "" &&*/ txtDetName.Text != "" && txtGabDetDl.Text != "" && txtGabDetSh.Text != "" /*&& txtGabDetV.Text != ""*/ &&
                txtKolTexMod.Text != "" && txtStanEm.Text != "" && txtZagMass.Text != "")
            { return true; }
            else { return false; }
            
        }

        private void NextStage_Click(object sender, EventArgs e)
        {
            bool check = AllFieldsFull();
            if ( check == true && txtPrintout.Text != "")
            {
                this.Hide();
                FrmModuleB frmModuleB = new FrmModuleB();
                frmModuleB.Show();
            }
        }

        private void FrmModuleA_Load(object sender, EventArgs e)
        {
            FillCombo();
            _clips.Load("myProgram.clp");
            string _envDir = System.Environment.CurrentDirectory + "\\myFactsPrint.txt";
            if (File.Exists(_envDir) == true)
            {
                File.Delete(_envDir);
            }
        }

        private void FillCombo()
        {
            this.comboDetTip.Items.Add(new SelectData(1, "Тело вращения"));
            this.comboDetTip.Items.Add(new SelectData(2, "Корпусная"));
            this.comboDetTip.Items.Add(new SelectData(3, "Пруток"));
            
            this.comboZagMat.Items.Add(new SelectData(1, "Сталь"));
            this.comboZagMat.Items.Add(new SelectData(2, "Чугун"));
            this.comboZagMat.Items.Add(new SelectData(3, "Цветной металл"));

            this.comboSposPol.Items.Add(new SelectData(1, "Литье"));
            this.comboSposPol.Items.Add(new SelectData(2, "Литье под давлением"));
            this.comboSposPol.Items.Add(new SelectData(3, "Штамповка"));
            this.comboSposPol.Items.Add(new SelectData(4, "Ковка"));
            this.comboSposPol.Items.Add(new SelectData(5, "Прокат"));
        }

        private bool OpenOutFile()
        {
            PrimitiveValue rs = _clips.Evaluate("MAIN","(open \"myFactsPrint.txt\" myData \"a\")");
            string res = rs.ToString();
            if (res == "TRUE")
            {
                return true;
            }
            else { return false; }
        }

        private void RunA_Click(object sender, EventArgs e)
        {
            if (txtDetMass.Text == "") { txtDetMass.Text = "0"; }
            if (txtGabDetV.Text == "") { txtGabDetV.Text = "0"; }

            bool fileOpened = OpenOutFile();
            bool allChk = AllFieldsFull();

            if (allChk == true && fileOpened == true)
            {
                int selectedValueDetTip, selectedValueZagMat, selectedValueSposPol;
                selectedValueDetTip = ((SelectData)this.comboDetTip.SelectedItem).Value;
                selectedValueZagMat = ((SelectData)this.comboZagMat.SelectedItem).Value;
                selectedValueSposPol = ((SelectData)this.comboDetTip.SelectedItem).Value;
                
               string[] currFrmSlots = { "DetName:" + txtDetName.Text, "GabDetSh:" + txtGabDetSh.Text, "GabDetDl:" + txtGabDetDl.Text, 
                                          "GabDetV:" + txtGabDetV.Text, "DetTip:" + selectedValueDetTip.ToString(), "ZagMat:" + selectedValueZagMat.ToString(), 
                                          "SposPol:" + selectedValueSposPol.ToString(), "ZagMass:" + txtZagMass.Text, "DetMass:" + txtDetMass.Text, 
                                          "StanEm:" + txtStanEm.Text, "KolTexMod:" + txtKolTexMod.Text };

                _clips.AssertString("A_Dann", currFrmSlots);
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
            else { MessageBox.Show("Проверьте заполненность полей!", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error); }
        }

        private void txtGabDetDl_TextChanged(object sender, EventArgs e)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(txtGabDetDl.Text, "[^0-9]"))
            {
                MessageBox.Show("Допустимы только цифры");
                txtGabDetDl.Text.Remove(txtGabDetDl.Text.Length - 1);
            }
        }

        private void txtGabDetSh_TextChanged(object sender, EventArgs e)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(txtGabDetSh.Text, "[^0-9]"))
            {
                MessageBox.Show("Допустимы только цифры");
                txtGabDetSh.Text.Remove(txtGabDetSh.Text.Length - 1);
            }
        }

        private void txtGabDetV_TextChanged(object sender, EventArgs e)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(txtGabDetV.Text, "[^0-9]"))
            {
                MessageBox.Show("Допустимы только цифры");
                txtGabDetV.Text.Remove(txtGabDetV.Text.Length - 1);
            }
        }

        private void txtZagMass_TextChanged(object sender, EventArgs e)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(txtZagMass.Text, "[^0-9]"))
            {
                MessageBox.Show("Допустимы только цифры");
                txtZagMass.Text.Remove(txtZagMass.Text.Length - 1);
            }
        }

        private void txtDetMass_TextChanged(object sender, EventArgs e)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(txtDetMass.Text, "[^0-9]"))
            {
                MessageBox.Show("Допустимы только цифры");
                txtDetMass.Text.Remove(txtDetMass.Text.Length - 1);
            }
        }

        private void txtStanEm_TextChanged(object sender, EventArgs e)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(txtStanEm.Text, "[^0-9]"))
            {
                MessageBox.Show("Допустимы только цифры");
                txtStanEm.Text.Remove(txtStanEm.Text.Length - 1);
            }
        }

        private void txtKolTexMod_TextChanged(object sender, EventArgs e)
        {
            if (System.Text.RegularExpressions.Regex.IsMatch(txtKolTexMod.Text, "[^0-9]"))
            {
                MessageBox.Show("Допустимы только цифры");
                txtKolTexMod.Text.Remove(txtKolTexMod.Text.Length - 1);
            }
        }

        

    }
    
}

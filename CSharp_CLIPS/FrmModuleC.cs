using System;
using System.Windows.Forms;
using Mommosoft.ExpertSystem;

namespace CSharp_CLIPS
{
    public partial class FrmModuleC : Form
    {
        private Clips _clips;
        private FrmModuleA frmA;
        public FrmModuleC(FrmModuleA refFormA)
        {
            InitializeComponent();
            _clips = Clips.GetInstance();
            this.frmA = refFormA;

        }
        private bool AllFieldsFull()
        {
            if (txtKolUst.Text != "" && txtOpVr.Text != "" && txtOsnastka.Text !="" && txtZahvat.Text !="" &&
                comboOpTip.SelectedIndex != -1 && comboPrimSOJ.SelectedIndex != -1)
            { return true; }
            else { return false; }

        }
        private void FrmModuleC_Load(object sender, EventArgs e)
        {
            FillCombo();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
            //_clips.Evaluate("MAIN", "(remove \"myFactsPrint.txt\")");
        }
        private void FillCombo()
        {
            this.comboOpTip.Items.Add(new SelectData(1, "Токарная"));
            this.comboOpTip.Items.Add(new SelectData(2, "Фрезерная"));
            this.comboOpTip.Items.Add(new SelectData(3, "Сверлильная"));
            this.comboOpTip.Items.Add(new SelectData(4, "Нарезание резьбы"));
            this.comboOpTip.Items.Add(new SelectData(5, "Нарезание зубьев"));
            this.comboOpTip.Items.Add(new SelectData(6, "Шлифование"));
            this.comboOpTip.Items.Add(new SelectData(7, "Зенкерование"));
            this.comboOpTip.Items.Add(new SelectData(8, "Развертывание"));
            this.comboOpTip.Items.Add(new SelectData(9, "Строгальная"));
            this.comboOpTip.Items.Add(new SelectData(10, "Растачивание"));
            this.comboOpTip.Items.Add(new SelectData(11, "Протягивание,строгание,шлифование зубьев"));

            this.comboPrimSOJ.Items.Add(new SelectData(1, "Да"));
            this.comboPrimSOJ.Items.Add(new SelectData(2, "Нет"));
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
        private void RunC_Click(object sender, EventArgs e)
        {
            bool fileOpened = OpenOutFile();
            bool check = AllFieldsFull();
            if (check == true && fileOpened == true)
            {
                int selectedValueOpTip, selectedValuePrimSOJ;
                selectedValueOpTip = ((SelectData)this.comboOpTip.SelectedItem).Value;
                selectedValuePrimSOJ = ((SelectData)this.comboPrimSOJ.SelectedItem).Value;

                string[] currFrmSlots = { "KolUst:" + txtKolUst.Text, "OpTip:" + selectedValueOpTip.ToString(),
                                          "OpVr:" + txtOpVr.Text, "PrimSOJ:" + selectedValuePrimSOJ.ToString(),
                                          "Osnastka:" + txtOsnastka.Text, "Zahvat:" + txtZahvat.Text};
                _clips.AssertString("D_Dann3", currFrmSlots);
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

        private void tsClearForm_Click(object sender, EventArgs e)
        {
            this.frmA.CleanAllBoxesIn(this);
        }
    }
}

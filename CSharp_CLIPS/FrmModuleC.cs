using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Mommosoft.ExpertSystem;

namespace CSharp_CLIPS
{
    public partial class FrmModuleC : Form
    {
        private Clips _clips;
        public FrmModuleC()
        {
            InitializeComponent();

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

        private void button1_Click(object sender, EventArgs e)
        {
            bool allChk = AllFieldsFull();
            if (allChk == true)
            {
                int selectedValueOpTip, selectedValuePrimSOJ;
                selectedValueOpTip = ((SelectData)this.comboOpTip.SelectedItem).Value;
                selectedValuePrimSOJ = ((SelectData)this.comboPrimSOJ.SelectedItem).Value;

                string[] currFrmSlots = { "KolUst:" + txtKolUst.Text, "OpTip:" + selectedValueOpTip.ToString(),
                                          "OpVr:" + txtOpVr.Text, "PrimSOJ:" + selectedValuePrimSOJ.ToString(),
                                          "Osnastka:" + txtOsnastka.Text, "Zahvat:" + txtZahvat.Text};
                _clips.AssertString("D_Dann3", currFrmSlots);
            }
            else { MessageBox.Show("Проверьте заполненность полей!", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error); }
            //_clips.Run(); раскомментить позже
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
        
    }
}

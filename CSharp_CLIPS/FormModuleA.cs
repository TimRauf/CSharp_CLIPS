using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Mommosoft.ExpertSystem;
using System.Diagnostics;

namespace CSharp_CLIPS
{
    public partial class FormModuleA : Form
    {
        private Mommosoft.ExpertSystem.Environment _theEnv = new Mommosoft.ExpertSystem.Environment();
        private string allfacts;
        public FormModuleA()
        {
            //ConsoleTraceListener tl = new ConsoleTraceListener();
            InitializeComponent();
            //_theEnv.AddRouter(new DebugRouter());
            _theEnv.Load("test.clp");
            _theEnv.Reset();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            /*_theEnv.AssertString("(UI (name John)(type 30.0))");
            _theEnv.AssertString("(UI (name Jackie)(type 45.0))");
            _theEnv.AssertString("(UI (name ktoto)(type 42.0))");
            _theEnv.AssertString("(UI (name ktoto)(type 10.0))");
            _theEnv.AssertString("(UI (name TEST)(type 99.99))");*/

            //String evalStr = "(length$ (find-all-facts ((?p UI)) (> ?p:type 10.0)))";
            // String evalStr = "(find-all-facts ((?p UI)) (> ?p:type 10.0))";
            //_theEnv.Run();
            
            string evalStr = "(find-all-facts ((?p UI)) (>= ?p:type 40.0))";
            
            //Вовзращает по одному
            /*using (FactAddressValue allFacts = (FactAddressValue)((MultifieldValue)_theEnv.Eval(evalStr))[1])
            {
                MessageBox.Show(allFacts.ToString());
                string currentID = allFacts.GetFactSlot("name").ToString();
            }*/

            /*List<string> ff = new List<string>();
            int countFacts = ((MultifieldValue)_theEnv.Eval(evalStr)).Count;
            for (int i = 0; i < countFacts; i++)
            {
                ff.Add(((MultifieldValue)_theEnv.Eval(evalStr))[i].ToString());
                MessageBox.Show(ff[i]);
            }*/

        }
    }
}

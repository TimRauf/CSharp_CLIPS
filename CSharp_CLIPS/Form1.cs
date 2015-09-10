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
    public partial class Form1 : Form
    {
        private Mommosoft.ExpertSystem.Environment _theEnv = new Mommosoft.ExpertSystem.Environment();
        private string allfacts;
        public Form1()
        {
            ConsoleTraceListener tl = new ConsoleTraceListener();
            InitializeComponent();
            //_theEnv.AddRouter(new DebugRouter());
            _theEnv.Load("test.clp");
            _theEnv.Reset();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            _theEnv.AssertString("(UI (name John)(type 30.0))");
            _theEnv.AssertString("(UI (name Jackie)(type 45.0))");
            _theEnv.AssertString("(UI (name ktoto)(type 42.0))");
            _theEnv.AssertString("(UI (name ktoto)(type 10.0))");

            //String evalStr = "(length$ (find-all-facts ((?p UI)) (> ?p:type 10.0)))";

            String evalStr = "(find-all-facts ((?p UI)) (> ?p:type 10.0))";

            //string s = _theEnv.Eval(evalStr).ToString();
            //MessageBox.Show(s);

            using (FactAddressValue allFacts = (FactAddressValue)((MultifieldValue)_theEnv.Eval(evalStr))[0])
            {
                string currentID = allFacts.GetFactSlot("type").ToString();
                MessageBox.Show(currentID);
            }

                   

            //_theEnv.AssertString("(UI (name "Jeromie")(type "deg888"))");
            //_theEnv.AssertString("(UI (name "Ian")(type "base1"))");
        }
    }
}

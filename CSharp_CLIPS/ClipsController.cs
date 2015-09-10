using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Mommosoft.ExpertSystem;
using System.Windows.Forms;


namespace CSharp_CLIPS
{
    class ClipsController
    {
        private static ClipsController _instance;
        public Mommosoft.ExpertSystem.Environment _env;
        //private GUIRouter _router;
        //public TextBlock AgendaOutput { get; set; }
        //public ScrollViewer AgendaScroll { get; set; }

        public ClipsController()
        {
            _env = new Mommosoft.ExpertSystem.Environment();
            //_router = new GUIRouter();
            //_env.AddRouter(_router);
        }

        public static ClipsController GetInstance()
        {
            if (_instance == null)
                _instance = new ClipsController();
            return _instance;
        }
        /*public void Initialize(TextBlock FactsOutput, ScrollViewer FactsScroll, TextBlock AgendaOutput, ScrollViewer AgendaScroll /*, TextBlock DebuggerOutput, ScrollViewer DebuggerScroll)
        {
            this.FactsOutput = FactsOutput;
            this.FactsScroll = FactsScroll;
            this.AgendaOutput = AgendaOutput;
            this.AgendaScroll = AgendaScroll;
            this.DebuggerOutput = DebuggerOutput;
            this.DebuggerScroll = DebuggerScroll;
            Uav = new UAV();
        }*/

        public void AssertString(string templName, string[] slots) 
        {
            string res = string.Empty;
            foreach (string s in slots)
            {
                res+="(" + s.Replace(":"," ") + ")";
            }
            _env.AssertString("(" + templName + " " + res + ")");
        }

        public void Reset()
        {
            _env.Reset();
            //RefreshOutputs();
        }

        public void Run()
        {
            _env.Run();
            //RefreshOutputs();
        }

        public PrimitiveValue Evaluate(string module, string eval)
        {
            bool isModuleOk = true;
            PrimitiveValue fc = _env.Eval("(get-focus)");
            string focus = fc.ToString();
            if (focus != module)
            {
                isModuleOk = false;
                _env.Eval("(focus " + module + ")");
            }
            PrimitiveValue result = null;
            try
            {
                result = _env.Eval(eval);
            }
            catch (ArgumentException e)
            {

            }
            catch (Exception e)
            {
                //WriteLineDebug(e.Message + e.StackTrace);
            }
            if (!isModuleOk)
            {
                _env.Eval("(pop-focus)");
            }
            return result;
        }

        public void Load(string filename)
        {
            _env.Load(filename);
        }
        
         public string[] FindFact(string module, string template, string conditions, string[] slots)
         {
            if (!conditions.Equals("true", StringComparison.InvariantCultureIgnoreCase))
            {
                conditions = "(" + conditions + ")";
            }
            string eval = "(find-fact ((?f " + template + ")) " + conditions + ")";
            try
            {
                MultifieldValue facts = (MultifieldValue)Evaluate(module, eval);
                string[] result = new string[slots.Length];
                if (facts.Count > 0)
                {
                    FactAddressValue fact = (FactAddressValue) facts[0];
                    for (int j = 0; j < slots.Length; j++)
                    {
                        result[j] = fact.GetFactSlot(slots[j]).ToString();
                    }
                }
                return result;
            }
            catch (Exception ex)
            {
                //WriteLineDebug(ex.Message + ex.StackTrace);
            }
            return new string[0];
         }
        
        public string[][] FindAllFacts(string module, string template, string conditions, string[] slots)
        {
            if (!conditions.Equals("true", StringComparison.InvariantCultureIgnoreCase))
            {
                conditions = "(" + conditions + ")";
            }
            string eval = "(find-all-facts ((?f " + template + ")) " + conditions + ")";
            try
            {
                MultifieldValue facts = (MultifieldValue)Evaluate(module, eval);
                string[][] result = new string[facts.Count][];
                for (int i = 0; i < facts.Count; i++)
                {
                    result[i] = new string[slots.Length];
                }
                if (facts.Count > 0)
                {
                    for(int i=0; i<facts.Count; i++)
                    {
                        FactAddressValue fact = (FactAddressValue) facts[i];
                        for (int j = 0; j < slots.Length; j++)
                        {
                            result[i][j] = fact.GetFactSlot(slots[j]).ToString();
                        }
                    }
                }
                return result;
            }
            catch (Exception ex)
            {
                //WriteLineDebug(ex.Message + ex.StackTrace);
            }
            return new string[0][];
        }

        /*private void RefreshOutputs()
        {
            RefreshAgenda();
            RefreshFacts();
        }*/

        /*private void RefreshFacts()
        {
            _router.OutputTextBlock = FactsOutput;
            _router.OutputScroll = FactsScroll;
            PrimitiveValue fc = _env.Eval("(get-focus)");
            string focus = fc.ToString();
            FactsOutput.Text = "";
            Evaluate(focus, "(facts)");
            FactsScroll.ScrollToEnd();
        }*/

        /*private void RefreshAgenda()
        {
            _router.OutputTextBlock = AgendaOutput;
            _router.OutputScroll = AgendaScroll;
            PrimitiveValue fc = _env.Eval("(get-focus)");
            string focus = fc.ToString();
            AgendaOutput.Text = "";
            Evaluate(focus, "(agenda)");
            AgendaScroll.ScrollToEnd();
        }*/
        
        

    }
}

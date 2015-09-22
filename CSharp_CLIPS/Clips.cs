using System;
using Mommosoft.ExpertSystem;


namespace CSharp_CLIPS
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Design", "CA1001:TypesThatOwnDisposableFieldsShouldBeDisposable")]
    class Clips
    {
        private static Clips _instance;
        private Mommosoft.ExpertSystem.Environment _env;

        private Clips()
        {
            _env = new Mommosoft.ExpertSystem.Environment();
        }

        public static Clips GetInstance()
        {
            if (_instance == null)
                _instance = new Clips();
            return _instance;
        }
        public void AssertString(string templName, string[] slots)
        {
            string evStr;
            string res = string.Empty;

            foreach (string s in slots)
            {
                res+="(" + s.Replace(":"," ") + ")";
            }
            /************** ПРОВЕРКА НА СУЩЕСТВОВАНИЕ ВВОДИМОГО ФАКТА *************************/
            //MessageBox.Show("(" + templName + " " + res + ")");
            evStr = "(find-fact ((?f " + templName + ")))";
            _env.AssertString("(" + templName + " " + res + ")");

            
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
        public PrimitiveValue Eval1(string evalStr)
        {
            PrimitiveValue result = _env.Eval(evalStr);
            return result;

        }
        public void Reset()
        {
            _env.Reset();
        }

        public void Run()
        {
            _env.Run();
        }
        public void Load(string filename)
        {
            _env.Load(filename);
        }
    }
}

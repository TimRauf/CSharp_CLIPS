using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;


namespace CSharp_CLIPS
{
    class Printout
    {
        public static string Print()
        {
            string _envDir = System.Environment.CurrentDirectory + "\\myFactsPrint.txt";
            _envDir = _envDir.Replace(@"\\", @"\");

            string text = System.IO.File.ReadAllText(_envDir, Encoding.GetEncoding(1251));
            return text;
        }
     }
}

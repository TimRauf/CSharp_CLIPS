using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharp_CLIPS
{
    class SelectData
    {
        public readonly int Value;
        public readonly string Text;

        public SelectData(int Value, string Text)
        {
            this.Value = Value;
            this.Text = Text;
        }

        public override string ToString()
        {
            return this.Text;
        }
    }
}

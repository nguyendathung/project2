using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace KFC_FASTFOOD.UCFunction
{
    public partial class UC_FoodCount : UserControl
    {
        string CurrentMonth = DateTime.Now.ToString("MM");
        public UC_FoodCount()
        {
            InitializeComponent();
            SanphamSapHet();
        }
        private void SanphamSapHet()
        {
          
            chart1.DataSource = lib.cls_Product._ProductEndCount();
            //set the member of the chart data source used to data bind to the X-values of the series  
            chart1.Series["Series1"].XValueMember = "Ten";
            //set the member columns of the chart data source used to data bind to the X-values of the series  
            chart1.Series["Series1"].YValueMembers = "Soluong";
            chart1.Series["Series1"].IsValueShownAsLabel = true;
            //ChartSlspDayByDay.Titles.Add("Salary Chart");
           
        }

        private void chart1_Click(object sender, EventArgs e)
        {

        }

        private void btnBack_Click(object sender, EventArgs e)
        {
      

            Forms.frm_Main.Instance.pnlContainer.Controls["UC_Product"].BringToFront();
        }
    }

}

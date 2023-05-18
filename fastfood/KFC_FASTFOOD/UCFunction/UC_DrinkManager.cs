using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Text.RegularExpressions;

namespace KFC_FASTFOOD.UCFunction
{
    public partial class UC_DrinkManager : UserControl
    {
        int check = 0;
        public UC_DrinkManager()
        {
            InitializeComponent();
        }
        private void _formatDT()
        {
            dtListProduct.Columns["MaSP"].Width = 60;
            dtListProduct.Columns["TenSP"].Width = 220;
            dtListProduct.Columns["TenNhaCungCap"].Width = 300;
        }
        private void _reset()
        {


            txtTimKiem.Focus();
            errorProvidera.Clear();
        }
        private string _genIdProduct()
        {
            /*
             * Mã sp tự động tăng SP001->SP999
             * Nếu bảng có mã SP001 và SP003 thì mã SP002 sẽ được thêm vào
             */
            DataTable dt = new DataTable();
            //hàm get cột MaSP
            dt = lib.cls_Product._getIDProduct();
            // tạo temp để lưu số thứ tự của mã sp
            int temp = 0;
            //nếu danh sánh sp rỗng
            if (dt.Rows.Count == 0)
            {
                temp = 1;
            }
            // nếu ds có 1 sản phẩm và MaSP = SP001
            else if (dt.Rows.Count == 1 && int.Parse(dt.Rows[0][0].ToString().Substring(2, 3)) == 1)
            {
                temp = 2;
            }
            //nếu ds có 1 sản phẩm và MaSP # SP001
            else if (dt.Rows.Count == 1 && int.Parse(dt.Rows[0][0].ToString().Substring(2, 3)) > 1)
            {
                temp = 1;
            }
            //nếu ds có > 1 sp
            else
            {
                for (int i = 0; i < dt.Rows.Count - 1; i++)
                {
                    if (int.Parse(dt.Rows[i + 1][0].ToString().Substring(2, 3)) - int.Parse(dt.Rows[i][0].ToString().Substring(2, 3)) > 1)
                    {
                        temp = int.Parse(dt.Rows[i][0].ToString().Substring(2, 3)) + 1;
                        break;
                    }
                }

                if (temp == 0)
                {
                    temp = int.Parse(dt.Rows[dt.Rows.Count - 1][0].ToString().Substring(2, 3)) + 1;
                }
            }

            if (temp < 10)
            {
                return "SP00" + temp;
            }
            if (temp < 100)
            {
                return "SP0" + temp;
            }
            return "SP" + temp;
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            _reset();

            Forms.frm_Main.Instance.pnlContainer.Controls["UC_Product"].BringToFront();
        }

        private void txtTimKiem_KeyPress(object sender, KeyPressEventArgs e)
        {
            dtListProduct.DataSource = lib.cls_Product._searchProduct(2, txtTimKiem.Text, cmbFilter.SelectedValue.ToString());
            _formatDT();
        }


        /*
         * GetAll là hàm get child control trong C#
         * Sử dụng đệ quy để get theo type
         * Truyền vào 1 control và giá trị là txt
         * tham khảo tại stackoverflow
         */
        private IEnumerable<Control> GetAll(Control control, Type type)
        {
            //var tự động nhận biết kiểu dữ liệu trong scope
            var controls = control.Controls.Cast<Control>();

            return controls.SelectMany(ctrl => GetAll(ctrl, type))
                           .Concat(controls)
                           .Where(c => c.GetType() == type);
        }



        private void btnHuyBo_Click(object sender, EventArgs e)
        {
            _reset();

        }

        private void UC_DrinkManager_Load(object sender, EventArgs e)
        {
            /*
             * Gets or sets a value that indicates whether controls in this container will be automatically validated when the focus changes.
             * An AutoValidate enumerated value that indicates whether contained controls are implicitly validated on focus change. The default is Inherit.
             * Source: https://doc.microsoft.com
             */
            AutoValidate = AutoValidate.EnableAllowFocusChange;
            dtListProduct.DataSource = lib.cls_Product._showProduct(2);
            _formatDT();

            _reset();


            cmbFilter.DisplayMember = "Text";
            cmbFilter.ValueMember = "Value";

            var items = new[] {
                new { Text = "Tên SP", Value = "TenSP" },
                new { Text = "Mã SP", Value = "MaSP" }
            };
            cmbFilter.DataSource = items;
        }

    }
}

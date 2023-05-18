﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Globalization;

namespace KFC_FASTFOOD.UCSytems
{
    public partial class UC_Order : UserControl
    {
        string idEmployess;
        string tenNV;
        string nhanVienID;
        string maHD;
        DataTable tbOrder = new DataTable();
        string _totalrecevie = "";
        public UC_Order()
        {
            InitializeComponent();
            dtSearch.Columns["MaSP"].Width = 50;
            dtSearch.Columns["TenSP"].Width = 210;
            dtSearch.DataSource = null;
            dtSearch.Refresh();
            dtSearch.DataSource = lib.cls_Order._showProduct();
          
       
        }

        private void txtSearch_KeyPress(object sender, KeyPressEventArgs e)
        {
            dtSearch.DataSource = lib.cls_Order._searchProduct(txtSearch.Text);
            dtSearch.Columns["MaSP"].Width = 50;
            dtSearch.Columns["TenSP"].Width = 210;
        }

        private int _productSelect(string nameProduct, DataTable dt)
        {
            int select = -1;

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i][1].ToString() == nameProduct)
                {
                    select = i;
                    break;
                }
            }
            return select;
        }

        private int _sumPrice(DataTable dt, int rows)
        {
            int sum = 0;

            for(int i = 0; i < dt.Rows.Count; i++)
            {
                sum += Convert.ToInt32(dt.Rows[i][rows]);
            }
            return sum;
        }

        private void btnAddProduct_Click(object sender, EventArgs e)
        {
            string idProduct = dtSearch.SelectedRows[0].Cells["MaSP"].Value.ToString();
            int sl = lib.cls_Order._CheckSL(idProduct);
            int countProduct = Convert.ToInt32(dtSearch.SelectedRows[0].Cells["SoLuong"].Value);
            if (dtSearch.SelectedRows.Count == 0)
            {
                MessageBox.Show("Bạn chưa chọn món!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                if (countProduct <= 0)
                {
                    MessageBox.Show("Món bạn chọn đã hết!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {

                 
                    string nameProduct = dtSearch.SelectedRows[0].Cells["TenSP"].Value.ToString();
                    int priceProduct = Convert.ToInt32(dtSearch.SelectedRows[0].Cells["GiaTien"].Value);
                    int discountProduct = Convert.ToInt32(dtSearch.SelectedRows[0].Cells["GiaTien"].Value) * Convert.ToInt32(dtSearch.SelectedRows[0].Cells["GiamGia"].Value) / 100;

                    DataRow dtr = tbOrder.NewRow();

                    int temp = _productSelect(nameProduct, tbOrder);

                    if (temp != -1)
                    {
                        tbOrder.Rows[temp][2] = Convert.ToInt32(tbOrder.Rows[temp][2]) + 1;
                      
                        tbOrder.Rows[temp][3] = Convert.ToInt32(tbOrder.Rows[temp][3]) + priceProduct;
                        tbOrder.Rows[temp][4] = Convert.ToInt32(tbOrder.Rows[temp][4]) + discountProduct;
                    }
                    else
                    {
                        dtr[0] = idProduct;
                        dtr[1] = nameProduct;
                        dtr[2] = 1;

                        dtr[3] = Convert.ToInt32(dtr[2].ToString()) * priceProduct;
                        dtr[4] = discountProduct;
                        tbOrder.Rows.Add(dtr);
                    }



                    dtChoose.DataSource = tbOrder;
                    dtChoose.Columns[0].Width = 50;
                    dtChoose.Columns[1].Width = 150;



                    /*   for (int i = 0; i < dtChoose.Rows.Count; i++)
                       {

                          lib.cls_Order._updateSP(tbOrder.Rows[i][0].ToString(), Convert.ToInt32(tbOrder.Rows[i][2].ToString()));

                       }*/

                    foreach (DataGridViewRow row in dtSearch.SelectedRows)
                    {

                        row.Cells["SoLuong"].Value = Convert.ToInt32(row.Cells["SoLuong"].Value) - 1;

                    }


                    txtMoney.Text = _sumPrice(tbOrder, 3).ToString();
                    txtDiscount.Text = _sumPrice(tbOrder, 4).ToString();

                    int totalMoney = _sumPrice(tbOrder, 3) - _sumPrice(tbOrder, 4);
                    lblTotalMoney.Text = string.Format(new CultureInfo("vi-VN"), "{0:#,##}", totalMoney) + " VND";
                    btnDone.Enabled = true;
                }
            }
        }

        private void UC_Order_Load(object sender, EventArgs e)
        {
            dtSearch.Refresh();
            idEmployess = Forms.frm_Main.NguoiDungID;
            tenNV = lib.cls_Employess._getInfoEmployess(idEmployess)[1];
            nhanVienID = lib.cls_Employess._getInfoEmployess(idEmployess)[0];
            txtSearch.Focus();
            txtEmployess.Enabled = false;

            //tạo datacridview
            tbOrder.Columns.Add("Mã SP");
            tbOrder.Columns.Add("Tên SP");
            tbOrder.Columns.Add("Số lượng");
            tbOrder.Columns.Add("Giá tiền");
            tbOrder.Columns.Add("Giảm giá");
            
            //set button về false
            btnDone.Enabled = false;
           
            txtMoney.Enabled = false;
            txtDiscount.Enabled = false;
            txtReturnPayment.Enabled = false;

            txtEmployess.Text = tenNV;
            
        }

        private void btnDelProduct_Click(object sender, EventArgs e)
        {
            if (dtChoose.SelectedRows.Count > 0)
            {

                foreach (DataGridViewRow row in dtSearch.SelectedRows)
                {
                    int i = 1;
                    row.Cells["SoLuong"].Value = Convert.ToInt32(row.Cells["SoLuong"].Value) + i;


                }
                string nameProduct = dtChoose.SelectedRows[0].Cells[1].Value.ToString();
                int priceProduct = Convert.ToInt32(dtChoose.SelectedRows[0].Cells[3].Value) / Convert.ToInt32(dtChoose.SelectedRows[0].Cells[2].Value);
                int discountProduct = Convert.ToInt32(dtSearch.SelectedRows[0].Cells["GiaTien"].Value) * Convert.ToInt32(dtSearch.SelectedRows[0].Cells["GiamGia"].Value) / 100;

                int temp = _productSelect(nameProduct, tbOrder);
                int num = Convert.ToInt32(tbOrder.Rows[temp][2]);

                if(num == 1)
                {
                    tbOrder.Rows.RemoveAt(temp);
                    txtMoney.Text = _sumPrice(tbOrder, 3).ToString();
                    txtDiscount.Text = _sumPrice(tbOrder, 4).ToString();
                    int totalMoney = _sumPrice(tbOrder, 3) - _sumPrice(tbOrder, 4);
                    lblTotalMoney.Text = string.Format(new CultureInfo("vi-VN"), "{0:#,##}", totalMoney) + " VND";
                }
                else
                {
                    tbOrder.Rows[temp][2] = Convert.ToInt32(tbOrder.Rows[temp][2]) - 1;
                    tbOrder.Rows[temp][3] = Convert.ToInt32(tbOrder.Rows[temp][3]) - priceProduct;
                    tbOrder.Rows[temp][4] = Convert.ToInt32(tbOrder.Rows[temp][4]) - discountProduct;

                    txtMoney.Text = _sumPrice(tbOrder, 3).ToString();
                    txtDiscount.Text = _sumPrice(tbOrder, 4).ToString();

                    int totalMoney = _sumPrice(tbOrder, 3) - _sumPrice(tbOrder, 4);
                    lblTotalMoney.Text = string.Format(new CultureInfo("vi-VN"), "{0:#,##}", totalMoney) + " VND";


                    
                }
            }
            else
            {
                MessageBox.Show("Vui lòng chọn món cần xóa !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnDone_Click(object sender, EventArgs e)
        {


            if (txtUser.Text == "")
            {
                txtUser.Text = "khách hàng vãng lai";
            }
            if (dtChoose.Rows.Count == 0 || txtReceive.Text == "")
            {
                MessageBox.Show("Vui lòng kiểm tra lại thông tin đơn hàng và danh sách món ăn !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            else
            {
                maHD = _GenMaHD();

                int receive = int.Parse(txtReceive.Text);
                int toltalMoney = _sumPrice(tbOrder, 3) - _sumPrice(tbOrder, 4);

                if (receive >= toltalMoney)
                {
                    if (lib.cls_Order._addNewHD(maHD, int.Parse(nhanVienID), txtUser.Text, toltalMoney) == true)
                    {

                        for (int i = 0; i < dtChoose.Rows.Count; i++)
                        {
                            lib.cls_Order._updateCTHD(maHD, tbOrder.Rows[i][0].ToString(), Convert.ToInt32(tbOrder.Rows[i][2].ToString()));
                            lib.cls_Order._updateSP(tbOrder.Rows[i][0].ToString(), Convert.ToInt32(tbOrder.Rows[i][2].ToString()));
                        }

                        string _money = string.Format(new CultureInfo("vi-VN"), "{0:#,##}", Convert.ToInt32(txtMoney.Text));
                        string _refund = string.Format(new CultureInfo("vi-VN"), "{0:#,##}", Convert.ToInt32(txtReturnPayment.Text));
                        string _receive = string.Format(new CultureInfo("vi-VN"), "{0:#,##}", Convert.ToInt32(txtReceive.Text));
                        string _discount = string.Format(new CultureInfo("vi-VN"), "{0:#,##}", Convert.ToInt32(txtDiscount.Text));
                        string _totalMoney = lblTotalMoney.Text;
                        _totalrecevie = lblTotalMoney.Text;
                        _totalMoney = _totalMoney.Replace(" VND", "");
                        using (Forms.frm_PrintInvoice printInvoice = new Forms.frm_PrintInvoice())
                        {

                            printInvoice._numInvoice = maHD;
                            printInvoice._money = _money;
                            printInvoice._refund = _refund;
                            printInvoice._receive = _receive;
                            printInvoice._discount = _discount;
                            printInvoice._total = _totalMoney;
                            printInvoice.ShowDialog();
                        }

                        btnDone.Enabled = false;
                        btnCancel.Enabled = false;
                        

                        MessageBox.Show("Order hoàn tất.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        //xóa toàn bộ row bên datagridview chọn món ăn
                        while (dtChoose.Rows.Count > 0)
                        {
                            dtChoose.Rows.RemoveAt(0);
                        }
                        txtUser.Text = "";
                        txtSearch.Text = "";
                        txtMoney.Text = "";
                        txtReceive.Text = "";
                        txtReturnPayment.Text = "";
                        txtDiscount.Text = "";
                        lblTotalMoney.Text = "0,00" + " VND";

                        btnDone.Enabled = false;
                      
                        btnCancel.Enabled = true;

                        txtSearch.Focus();
                        dtSearch.DataSource = lib.cls_Order._showProduct();
                        // luu csdl va in hoa don
                    }
                    else
                    {
                        MessageBox.Show("Lỗi khi thêm hóa đơn mới. Vui lòng kiểm tra và thử lại !", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    MessageBox.Show("Vui lòng kiểm tra tiền nhận từ khách!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }



        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Hủy đơn hàng này?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if(result == DialogResult.Yes)
            {
                //xóa toàn bộ row bên datagridview chọn món ăn
                while (dtChoose.Rows.Count > 0)
                {
                    dtChoose.Rows.RemoveAt(0);
                }
                //reset về null tất cả textbox
                txtUser.Text = "";
                txtSearch.Text = "";
                txtMoney.Text = "";
                txtReceive.Text = "";
                txtReturnPayment.Text = "";
                txtDiscount.Text = "";
                lblTotalMoney.Text = "0,00" + " VND";
                txtSearch.Focus();
                //set lại button 
               
                btnDone.Enabled = false;
                btnCancel.Enabled = true;
            }
        }

        private string _GenMaHD()
        {
            /*
             * Mã tự động tăng HD001-> HD999
             * Nếu bảng có mã HD001 và HD003 thì HD002 sẽ được thêm vào
            */
            DataTable dt = new DataTable();
            //hàm get cột MaHD
            dt = lib.cls_Order._getMaHD();
            // tạo temp để lưu số thứ tự của mã hd
            int temp = 0;
            //nếu danh sánh hd rỗng
            if(dt.Rows.Count == 0)
            {
                temp = 1;
            }
            // nếu ds có 1 hóa đơn và mahd = HD001
            else if(dt.Rows.Count == 1 && int.Parse(dt.Rows[0][0].ToString().Substring(2,3)) == 1)
            {
                temp = 2;
            }
            //nếu ds có 1 hóa đơn và mahd # HD001
            else if(dt.Rows.Count == 1 && int.Parse(dt.Rows[0][0].ToString().Substring(2,3)) > 1)
            {
                temp = 1;
            }
            //nếu ds có > 1 hd
            else
            {
                for(int i = 0; i < dt.Rows.Count-1; i++)
                {
                    if(int.Parse(dt.Rows[i+1][0].ToString().Substring(2,3)) - int.Parse(dt.Rows[i][0].ToString().Substring(2,3)) > 1)
                    {
                        temp = int.Parse(dt.Rows[i][0].ToString().Substring(2, 3)) + 1;
                        break;
                    }
                }

                if(temp == 0)
                {
                    temp = int.Parse(dt.Rows[dt.Rows.Count - 1][0].ToString().Substring(2, 3)) + 1;
                }
            }

            if(temp < 10)
            {
                return "HD00" + temp;
            }
            if(temp < 100)
            {
                return "HD0" + temp;
            }
            return "HD" + temp;
        }

        private void btnSaveDB_Click(object sender, EventArgs e)
        {
           
        }

        private void btnPrintInvoice_Click(object sender, EventArgs e)
        {

            if (txtUser.Text == "")
            {
                txtUser.Text = "khách hàng vãng lai";
            }
            if (dtChoose.Rows.Count == 0 || txtReceive.Text == "")
            {
                MessageBox.Show("Vui lòng kiểm tra lại thông tin đơn hàng và danh sách món ăn !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
            else
            {
                maHD = _GenMaHD();

                int receive = int.Parse(txtReceive.Text);
                int toltalMoney = _sumPrice(tbOrder, 3) - _sumPrice(tbOrder, 4);

                if (receive >= toltalMoney)
                {
                    if (lib.cls_Order._addNewHD(maHD, int.Parse(nhanVienID), txtUser.Text, toltalMoney) == true)
                    {
                       
                        for (int i = 0; i < dtChoose.Rows.Count; i++)
                        {
                            lib.cls_Order._updateCTHD(maHD, tbOrder.Rows[i][0].ToString(), Convert.ToInt32(tbOrder.Rows[i][2].ToString()));
                            lib.cls_Order._updateSP(tbOrder.Rows[i][0].ToString(), Convert.ToInt32(tbOrder.Rows[i][2].ToString()));
                        }

                        string _money = string.Format(new CultureInfo("vi-VN"), "{0:#,##}", Convert.ToInt32(txtMoney.Text));
                        string _refund = string.Format(new CultureInfo("vi-VN"), "{0:#,##}", Convert.ToInt32(txtReturnPayment.Text));
                        string _receive = string.Format(new CultureInfo("vi-VN"), "{0:#,##}", Convert.ToInt32(txtReceive.Text));
                        string _discount = string.Format(new CultureInfo("vi-VN"), "{0:#,##}", Convert.ToInt32(txtDiscount.Text));
                        string _totalMoney = lblTotalMoney.Text;
                        _totalrecevie = lblTotalMoney.Text;
                        _totalMoney = _totalMoney.Replace(" VND", "");
                        using (Forms.frm_PrintInvoice printInvoice = new Forms.frm_PrintInvoice())
                        {

                            printInvoice._numInvoice = maHD;
                            printInvoice._money = _money;
                            printInvoice._refund = _refund;
                            printInvoice._receive = _receive;
                            printInvoice._discount = _discount;
                            printInvoice._total = _totalMoney;
                            printInvoice.ShowDialog();
                        }

                        btnDone.Enabled = true;
                        btnCancel.Enabled = false;
                       
                        while (dtChoose.Rows.Count > 0)
                        {
                            dtChoose.Rows.RemoveAt(0);
                        }
                        txtUser.Text = "";
                        txtSearch.Text = "";
                        txtMoney.Text = "";
                        txtReceive.Text = "";
                        txtReturnPayment.Text = "";
                        txtDiscount.Text = "";
                        lblTotalMoney.Text = "0,00" + " VND";
                    }
                    else
                    {
                        MessageBox.Show("Lỗi khi thêm hóa đơn mới. Vui lòng kiểm tra và thử lại !", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    MessageBox.Show("Vui lòng kiểm tra tiền nhận từ khách!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }

           
        }

        private void txtReceive_TextChanged(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtReceive.Text))
            {
                txtReturnPayment.Text = "";
                return;
            }
            int temp;
            if (!int.TryParse(txtReceive.Text, out temp))
            {
                MessageBox.Show("Vui lòng chỉ nhập số");
                txtReceive.Clear();
            }
            else
            {
                int receive = int.Parse(txtReceive.Text);
                int toltalMoney = _sumPrice(tbOrder, 3) - _sumPrice(tbOrder, 4);
                txtReturnPayment.Text = (receive - toltalMoney).ToString();
                if (Convert.ToInt32(txtReturnPayment.Text) < 0)
                {
                    txtReturnPayment.Text = "chưa đủ";
                }
            }
        }

        private void txtEmployess_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {

        }

        private void dtChoose_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void txtUser_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

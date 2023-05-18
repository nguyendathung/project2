﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace KFC_FASTFOOD.UCFunction
{
    public partial class UC_ADDFOOD : UserControl
    {
        private int check = 0;
        private int loai = 0;
        private int suaindex = 0;
        public UC_ADDFOOD()
        {
            InitializeComponent();
            _formatDT();
            dtListProduct.ClearSelection();
         
        }
        private void _sttButton(bool add, bool add2, bool edit, bool delete, bool update, bool cancel, bool grpinfo)
        {
            btnThem.Enabled = add;
            btnthemnuoc.Enabled = add2;
            btnSua.Enabled = edit;
            btnXoa.Enabled = delete;
            btnCapNhat.Enabled = update;
            btnHuyBo.Enabled = cancel;
            grpThongTin.Enabled = grpinfo;
        }
        private void btnThem_Click(object sender, EventArgs e)
        {
            check = 1;
            loai = 1;
            _sttButton(false,false, false, false, true, true, true);
            txtMaMonAn.Enabled = false;
            txtSoLuong.Focus();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            check = 2;
            if (dtListProduct.SelectedRows.Count >= 0 || dgvnuoc.SelectedRows.Count >= 0)
            {
                _sttButton(false, false, false, false, true, true, true);
                txtSoLuong.Focus();
                if (suaindex == 1)
                {
                    int index1 = dtListProduct.CurrentCell.RowIndex;
                    txtMaMonAn.Enabled = false;
                    txtMaMonAn.Text = dtListProduct.Rows[index1].Cells["MaSP"].Value.ToString();
                    txtTenMonAn.Text = dtListProduct.Rows[index1].Cells["TenSP"].Value.ToString();
                    txtGiaTien.Text = dtListProduct.Rows[index1].Cells["GiaTien"].Value.ToString();
                    cmbNhaCungCap.SelectedValue = Convert.ToInt32(dtListProduct.Rows[index1].Cells["NCCID"].Value);
                    txtGiamGia.Text = dtListProduct.Rows[index1].Cells["GiamGia"].Value.ToString();
                    txtSoLuong.Text = dtListProduct.Rows[index1].Cells["SoLuong"].Value.ToString();
                }
                else
                {
                    int index2 = dgvnuoc.CurrentCell.RowIndex;
                    txtMaMonAn.Enabled = false;
                    txtMaMonAn.Text = dgvnuoc.Rows[index2].Cells["MaSP2"].Value.ToString();
                    txtTenMonAn.Text = dgvnuoc.Rows[index2].Cells["TenSP2"].Value.ToString();
                    txtGiaTien.Text = dgvnuoc.Rows[index2].Cells["GiaTien2"].Value.ToString();
                    cmbNhaCungCap.SelectedValue = Convert.ToInt32(dgvnuoc.Rows[index2].Cells["NCCID2"].Value);
                    txtGiamGia.Text = dgvnuoc.Rows[index2].Cells["GiamGia2"].Value.ToString();
                    txtSoLuong.Text = dgvnuoc.Rows[index2].Cells["SoLuong2"].Value.ToString();
                }
            }
            else
            {
                 MessageBox.Show("Vui lòng chọn món ăn cần sửa !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (dtListProduct.SelectedRows.Count >= 0 || dgvnuoc.SelectedRows.Count >=0)
            {
                if (suaindex == 1)
                {
                    int index = dtListProduct.CurrentCell.RowIndex;
                    string maMonAn = dtListProduct.Rows[index].Cells["MaSP"].Value.ToString();

                    DialogResult result = MessageBox.Show("Bạn có muốn xóa thức ăn này?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                    if (result == DialogResult.Yes)
                    {
                        DataTable dtCTHD = lib.cls_Product._checkProduct(maMonAn);
                        if (dtCTHD.Rows.Count > 0)
                        {
                            MessageBox.Show("Vui lòng xóa sản phẩm trong CTHD", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        }
                        else if (lib.cls_Product._delProduct(maMonAn) == true)
                        {
                            MessageBox.Show(string.Format("Xóa thành công sản phẩm có mã {0}", maMonAn), "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            dtListProduct.DataSource = lib.cls_Product._showProduct(1);

                            _formatDT();
                        }
                        else
                        {
                            MessageBox.Show("Không thể thực hiện xóa sản phẩm này khỏi CSDL. Vui lòng thử lại!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                }
                else
                {
                    int index2 = dgvnuoc.CurrentCell.RowIndex;
                    string maMonAn = dgvnuoc.Rows[index2].Cells["MaSP2"].Value.ToString();

                    DialogResult result = MessageBox.Show("Bạn có muốn xóa thức ăn này?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                    if (result == DialogResult.Yes)
                    {
                        DataTable dtCTHD = lib.cls_Product._checkProduct(maMonAn);
                        if (dtCTHD.Rows.Count > 0)
                        {
                            MessageBox.Show("Vui lòng xóa sản phẩm trong CTHD", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        }
                        else if (lib.cls_Product._delProduct(maMonAn) == true)
                        {
                            MessageBox.Show(string.Format("Xóa thành công sản phẩm có mã {0}", maMonAn), "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            dgvnuoc.DataSource = lib.cls_Product._showProduct(2);
                            _formatDT();
                        }
                        else
                        {
                            MessageBox.Show("Không thể thực hiện xóa sản phẩm này khỏi CSDL. Vui lòng thử lại!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                }
            }
            else
            {
               MessageBox.Show("Vui lòng chọn món ăn cần xóa !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

            }
        }
        private void _formatDT()
        {
            dtListProduct.Columns["MaSP"].Width = 60;
            dtListProduct.Columns["TenSP"].Width = 220;
            dtListProduct.Columns["TenNhaCungCap"].Width = 300;
            

        }
        private IEnumerable<Control> GetAll(Control control, Type type)
        {
            //var tự động nhận biết kiểu dữ liệu trong scope
            var controls = control.Controls.Cast<Control>();

            return controls.SelectMany(ctrl => GetAll(ctrl, type))
                           .Concat(controls)
                           .Where(c => c.GetType() == type);
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
        private void _reset()
        {
            txtMaMonAn.Text = "";
            txtTenMonAn.Text = "";
            txtGiaTien.Text = "";
            txtGiamGia.Text = "";
            txtSoLuong.Text = "";
           
            errorProvider.Clear();
        }
        private void btnCapNhat_Click(object sender, EventArgs e)
        {
            if (!ValidateChildren())
            {
                //Get child control theo type truyền vào
                var getChildControls = GetAll(this, typeof(TextBox));

                var listOfErrors = getChildControls.Select(c => errorProvider.GetError(c))
                                                   .Where(s => !string.IsNullOrEmpty(s))
                                                   .ToList();
                MessageBox.Show("Vui lòng kiểm tra lại thông tin sản phẩm:\n - " + string.Join("\n - ", listOfErrors.ToArray()), "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                if (check == 1)
                {
                    string genMaSP = _genIdProduct();
                    bool addProduct = lib.cls_Product._addProduct(loai, genMaSP, txtTenMonAn.Text, Convert.ToInt32(cmbNhaCungCap.SelectedValue), int.Parse(txtGiaTien.Text), int.Parse(txtGiamGia.Text), int.Parse(txtSoLuong.Text));

                    if (addProduct == true)
                    {
                        MessageBox.Show("Thêm sản phẩm thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        _reset();
                        _sttButton(true,true, true, true, false, false, false);
                        dtListProduct.DataSource = lib.cls_Product._showProduct(1);
                        dgvnuoc.DataSource = lib.cls_Product._showProduct(2);

                        _formatDT();
                        txtTenMonAn.Focus();
                    }
                    else
                    {
                        MessageBox.Show("Không thể thêm sản phẩm này. Vui lòng kiểm tra lại !", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    bool updateProduct = lib.cls_Product._updateProduct(txtMaMonAn.Text, txtTenMonAn.Text, Convert.ToInt32(cmbNhaCungCap.SelectedValue), int.Parse(txtGiaTien.Text), int.Parse(txtGiamGia.Text), int.Parse(txtSoLuong.Text));
                    if (updateProduct == true)
                    {
                        MessageBox.Show("Cập nhật thành công !", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        dtListProduct.DataSource = lib.cls_Product._showProduct(1);
                        dtListProduct.DataSource = lib.cls_Product._showProduct(2);
                        _formatDT();
                        _reset();
                      
                        _sttButton(true,true, true, true, false, false, false);
                    }
                    else
                    {
                        MessageBox.Show("Không thể cập nhật sản phẩm này. Vui lòng kiểm tra lại !", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
        }
        private void txtTenMonAn_Validating(object sender, CancelEventArgs e)
        {
           
        }
        private void btnHuyBo_Click(object sender, EventArgs e)
        {
            _reset();
            _sttButton(true,true, true, true, false, false, false);
        }

        private void txtTenMonAn_Validated(object sender, EventArgs e)
        {

        }

        private void txtTenMonAn_Validating_1(object sender, CancelEventArgs e)
        {
            if (txtTenMonAn.Text == "")
            {
                errorProvider.SetError(txtTenMonAn, "Tên nước uống không được trống.");
                e.Cancel = true;
            }
            else
            {
                errorProvider.SetError(txtTenMonAn, "");
            }
        }

        private void txtGiaTien_Validating(object sender, CancelEventArgs e)
        {
            Regex regex = new Regex("^[0-9]+$");
            if (txtGiaTien.Text == "")
            {
                errorProvider.SetError(txtGiaTien, "Giá tiền không được trống");
                e.Cancel = true;
            }
            else if (!regex.IsMatch(txtGiaTien.Text) && txtGiaTien.Text != "")
            {
                errorProvider.SetError(txtGiaTien, "Giá tiền sản phẩm phải là số.");
                e.Cancel = true;
            }
            else
            {
                errorProvider.SetError(txtGiaTien, "");
            }
        }

        private void txtGiamGia_Validating(object sender, CancelEventArgs e)
        {
            Regex regex = new Regex("^[0-9]+$");
            if (txtGiamGia.Text == "")
            {
                errorProvider.SetError(txtGiamGia, "% giảm giá không được trống");
                e.Cancel = true;
            }
            else if (!regex.IsMatch(txtGiamGia.Text))
            {
                errorProvider.SetError(txtGiamGia, "% giảm giá phải là số.");
                e.Cancel = true;
            }
            else
            {
                errorProvider.SetError(txtGiamGia, "");
            }
        }

        private void txtSoLuong_Validating(object sender, CancelEventArgs e)
        {
            Regex regex = new Regex("^[0-9]+$");
            if (txtSoLuong.Text == "")
            {
                errorProvider.SetError(txtSoLuong, "Số lượng sản phẩm không được để trống.");
                e.Cancel = true;
            }
            else if (!regex.IsMatch(txtSoLuong.Text))
            {
                errorProvider.SetError(txtSoLuong, "Số lượng sản phẩm phải là số.");
                e.Cancel = true;
            }
            else
            {
                errorProvider.SetError(txtSoLuong, "");
            }
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            _reset();
            _sttButton(true,true, true, true, false, false, false);
            Forms.frm_Main.Instance.pnlContainer.Controls["UC_Product"].BringToFront();
        }

        private void UC_ADDFOOD_Load(object sender, EventArgs e)
        {
            /*
           * Gets or sets a value that indicates whether controls in this container will be automatically validated when the focus changes.
           * An AutoValidate enumerated value that indicates whether contained controls are implicitly validated on focus change. The default is Inherit.
           * Source: https://doc.microsoft.com
           */
            suaindex = 0;
            dtListProduct.DataSource = lib.cls_Product._showProduct(1);
            dgvnuoc.DataSource = lib.cls_Product._showProduct(2);
            AutoValidate = AutoValidate.EnableAllowFocusChange;
            _formatDT();
            _sttButton(true,true, true, true, false, false, false);
            _reset();
            cmbNhaCungCap.DataSource = lib.cls_Product._showNCC();
            cmbNhaCungCap.ValueMember = "NCCID";
            cmbNhaCungCap.DisplayMember = "TenNhaCungCap";
            dtListProduct.ClearSelection();
            dgvnuoc.ClearSelection();


            var items = new[] {
                new { Text = "Tên SP", Value = "TenSP" },
                new { Text = "Mã SP", Value = "MaSP" }
            };
         
        }

        private void bunifuFlatButton1_Click(object sender, EventArgs e)
        {
            check = 1;
            loai = 2;
            _sttButton(false,false, false, false, true, true, true);
            txtMaMonAn.Enabled = false;
            txtSoLuong.Focus();
        }

        private void dtListProduct_CellLeave(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void dgvnuoc_CellClick(object sender, DataGridViewCellEventArgs e)
        {
               suaindex = 2;
            dtListProduct.ClearSelection();
        }

        private void dtListProduct_CellClick(object sender, DataGridViewCellEventArgs e)
        {
           suaindex = 1;
            dgvnuoc.ClearSelection();
        }

        private void dtListProduct_RowHeaderMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            
        }

        private void dgvnuoc_RowHeaderMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
         
        }
    }
}

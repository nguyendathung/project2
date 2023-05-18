namespace KFC_FASTFOOD.UCFunction
{
    partial class UC_InvoiceDetails
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            this.lblTitle = new System.Windows.Forms.Label();
            this.btnBack = new Bunifu.Framework.UI.BunifuImageButton();
            this.grpDanhSach = new System.Windows.Forms.GroupBox();
            this.dtList = new Bunifu.Framework.UI.BunifuCustomDataGrid();
            this.MaHD = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenKhach = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenNV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgayLapHD = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TongTien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.grpTimKiem = new System.Windows.Forms.GroupBox();
            this.txtTimKiem = new System.Windows.Forms.TextBox();
            this.btnXemChiTiet = new Bunifu.Framework.UI.BunifuFlatButton();
            this.bunifuDragControl1 = new Bunifu.Framework.UI.BunifuDragControl(this.components);
            this.btnXoa = new Bunifu.Framework.UI.BunifuFlatButton();
            ((System.ComponentModel.ISupportInitialize)(this.btnBack)).BeginInit();
            this.grpDanhSach.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtList)).BeginInit();
            this.grpTimKiem.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblTitle
            // 
            this.lblTitle.AutoSize = true;
            this.lblTitle.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitle.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(0)))), ((int)(((byte)(42)))));
            this.lblTitle.Location = new System.Drawing.Point(55, 11);
            this.lblTitle.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblTitle.Name = "lblTitle";
            this.lblTitle.Size = new System.Drawing.Size(195, 28);
            this.lblTitle.TabIndex = 72;
            this.lblTitle.Text = "CHI TIẾT HÓA ĐƠN";
            // 
            // btnBack
            // 
            this.btnBack.BackColor = System.Drawing.Color.Transparent;
            this.btnBack.Image = global::KFC_FASTFOOD.Properties.Resources.left_round_32px1;
            this.btnBack.ImageActive = null;
            this.btnBack.Location = new System.Drawing.Point(4, 4);
            this.btnBack.Margin = new System.Windows.Forms.Padding(4);
            this.btnBack.Name = "btnBack";
            this.btnBack.Size = new System.Drawing.Size(43, 39);
            this.btnBack.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.btnBack.TabIndex = 73;
            this.btnBack.TabStop = false;
            this.btnBack.Zoom = 10;
            this.btnBack.Click += new System.EventHandler(this.btnBack_Click);
            // 
            // grpDanhSach
            // 
            this.grpDanhSach.Controls.Add(this.dtList);
            this.grpDanhSach.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grpDanhSach.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(0)))), ((int)(((byte)(42)))));
            this.grpDanhSach.Location = new System.Drawing.Point(36, 174);
            this.grpDanhSach.Margin = new System.Windows.Forms.Padding(4);
            this.grpDanhSach.Name = "grpDanhSach";
            this.grpDanhSach.Padding = new System.Windows.Forms.Padding(4);
            this.grpDanhSach.Size = new System.Drawing.Size(1133, 523);
            this.grpDanhSach.TabIndex = 79;
            this.grpDanhSach.TabStop = false;
            this.grpDanhSach.Text = "Danh sách hóa đơn";
            // 
            // dtList
            // 
            this.dtList.AllowUserToAddRows = false;
            this.dtList.AllowUserToDeleteRows = false;
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.White;
            this.dtList.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.dtList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dtList.BackgroundColor = System.Drawing.Color.White;
            this.dtList.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dtList.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.None;
            this.dtList.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Sunken;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(0)))), ((int)(((byte)(42)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(0)))), ((int)(((byte)(42)))));
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dtList.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.dtList.ColumnHeadersHeight = 50;
            this.dtList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaHD,
            this.TenKhach,
            this.TenNV,
            this.NgayLapHD,
            this.TongTien});
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(0)))), ((int)(((byte)(42)))));
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(0)))), ((int)(((byte)(42)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dtList.DefaultCellStyle = dataGridViewCellStyle3;
            this.dtList.DoubleBuffered = true;
            this.dtList.EnableHeadersVisualStyles = false;
            this.dtList.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(0)))), ((int)(((byte)(42)))));
            this.dtList.HeaderBgColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(0)))), ((int)(((byte)(42)))));
            this.dtList.HeaderForeColor = System.Drawing.Color.White;
            this.dtList.Location = new System.Drawing.Point(8, 34);
            this.dtList.Margin = new System.Windows.Forms.Padding(4);
            this.dtList.MultiSelect = false;
            this.dtList.Name = "dtList";
            this.dtList.ReadOnly = true;
            this.dtList.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            dataGridViewCellStyle4.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = System.Drawing.Color.White;
            dataGridViewCellStyle4.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle4.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle4.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(0)))), ((int)(((byte)(42)))));
            dataGridViewCellStyle4.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle4.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.dtList.RowHeadersDefaultCellStyle = dataGridViewCellStyle4;
            this.dtList.RowHeadersVisible = false;
            this.dtList.RowHeadersWidth = 50;
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtList.RowsDefaultCellStyle = dataGridViewCellStyle5;
            this.dtList.RowTemplate.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.dtList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dtList.Size = new System.Drawing.Size(1117, 471);
            this.dtList.TabIndex = 1;
            this.dtList.CellFormatting += new System.Windows.Forms.DataGridViewCellFormattingEventHandler(this.dtList_CellFormatting);
            // 
            // MaHD
            // 
            this.MaHD.DataPropertyName = "MaHD";
            this.MaHD.HeaderText = "Mã HD";
            this.MaHD.MinimumWidth = 6;
            this.MaHD.Name = "MaHD";
            this.MaHD.ReadOnly = true;
            // 
            // TenKhach
            // 
            this.TenKhach.DataPropertyName = "TenKhach";
            this.TenKhach.HeaderText = "Tên khách hàng";
            this.TenKhach.MinimumWidth = 6;
            this.TenKhach.Name = "TenKhach";
            this.TenKhach.ReadOnly = true;
            // 
            // TenNV
            // 
            this.TenNV.DataPropertyName = "TenNV";
            this.TenNV.HeaderText = "Tên nhân viên";
            this.TenNV.MinimumWidth = 6;
            this.TenNV.Name = "TenNV";
            this.TenNV.ReadOnly = true;
            // 
            // NgayLapHD
            // 
            this.NgayLapHD.DataPropertyName = "NgayLapHD";
            this.NgayLapHD.HeaderText = "Ngày lập HD";
            this.NgayLapHD.MinimumWidth = 6;
            this.NgayLapHD.Name = "NgayLapHD";
            this.NgayLapHD.ReadOnly = true;
            // 
            // TongTien
            // 
            this.TongTien.DataPropertyName = "TongTien";
            this.TongTien.HeaderText = "Tổng tiền";
            this.TongTien.MinimumWidth = 6;
            this.TongTien.Name = "TongTien";
            this.TongTien.ReadOnly = true;
            // 
            // grpTimKiem
            // 
            this.grpTimKiem.Controls.Add(this.txtTimKiem);
            this.grpTimKiem.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grpTimKiem.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(0)))), ((int)(((byte)(42)))));
            this.grpTimKiem.Location = new System.Drawing.Point(293, 53);
            this.grpTimKiem.Margin = new System.Windows.Forms.Padding(4);
            this.grpTimKiem.Name = "grpTimKiem";
            this.grpTimKiem.Padding = new System.Windows.Forms.Padding(4);
            this.grpTimKiem.Size = new System.Drawing.Size(529, 101);
            this.grpTimKiem.TabIndex = 80;
            this.grpTimKiem.TabStop = false;
            this.grpTimKiem.Text = "Tìm kiếm";
            // 
            // txtTimKiem
            // 
            this.txtTimKiem.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTimKiem.Location = new System.Drawing.Point(52, 46);
            this.txtTimKiem.Margin = new System.Windows.Forms.Padding(4);
            this.txtTimKiem.Name = "txtTimKiem";
            this.txtTimKiem.Size = new System.Drawing.Size(435, 32);
            this.txtTimKiem.TabIndex = 11;
            this.txtTimKiem.TextChanged += new System.EventHandler(this.txtTimKiem_TextChanged);
            // 
            // btnXemChiTiet
            // 
            this.btnXemChiTiet.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(237)))), ((int)(((byte)(28)))), ((int)(((byte)(36)))));
            this.btnXemChiTiet.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnXemChiTiet.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(237)))), ((int)(((byte)(28)))), ((int)(((byte)(36)))));
            this.btnXemChiTiet.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnXemChiTiet.BorderRadius = 5;
            this.btnXemChiTiet.ButtonText = "XEM CHI TIẾT";
            this.btnXemChiTiet.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnXemChiTiet.DisabledColor = System.Drawing.Color.Gray;
            this.btnXemChiTiet.Iconcolor = System.Drawing.Color.Transparent;
            this.btnXemChiTiet.Iconimage = null;
            this.btnXemChiTiet.Iconimage_right = null;
            this.btnXemChiTiet.Iconimage_right_Selected = null;
            this.btnXemChiTiet.Iconimage_Selected = null;
            this.btnXemChiTiet.IconMarginLeft = 0;
            this.btnXemChiTiet.IconMarginRight = 0;
            this.btnXemChiTiet.IconRightVisible = true;
            this.btnXemChiTiet.IconRightZoom = 0D;
            this.btnXemChiTiet.IconVisible = true;
            this.btnXemChiTiet.IconZoom = 90D;
            this.btnXemChiTiet.IsTab = false;
            this.btnXemChiTiet.Location = new System.Drawing.Point(1003, 704);
            this.btnXemChiTiet.Margin = new System.Windows.Forms.Padding(5);
            this.btnXemChiTiet.Name = "btnXemChiTiet";
            this.btnXemChiTiet.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(237)))), ((int)(((byte)(28)))), ((int)(((byte)(36)))));
            this.btnXemChiTiet.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(173)))), ((int)(((byte)(23)))), ((int)(((byte)(43)))));
            this.btnXemChiTiet.OnHoverTextColor = System.Drawing.Color.White;
            this.btnXemChiTiet.selected = false;
            this.btnXemChiTiet.Size = new System.Drawing.Size(167, 54);
            this.btnXemChiTiet.TabIndex = 81;
            this.btnXemChiTiet.Text = "XEM CHI TIẾT";
            this.btnXemChiTiet.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.btnXemChiTiet.Textcolor = System.Drawing.Color.White;
            this.btnXemChiTiet.TextFont = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXemChiTiet.Click += new System.EventHandler(this.btnXemChiTiet_Click);
            // 
            // bunifuDragControl1
            // 
            this.bunifuDragControl1.Fixed = true;
            this.bunifuDragControl1.Horizontal = true;
            this.bunifuDragControl1.TargetControl = this;
            this.bunifuDragControl1.Vertical = true;
            // 
            // btnXoa
            // 
            this.btnXoa.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(237)))), ((int)(((byte)(28)))), ((int)(((byte)(36)))));
            this.btnXoa.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnXoa.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(237)))), ((int)(((byte)(28)))), ((int)(((byte)(36)))));
            this.btnXoa.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnXoa.BorderRadius = 5;
            this.btnXoa.ButtonText = "XÓA";
            this.btnXoa.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnXoa.DisabledColor = System.Drawing.Color.Gray;
            this.btnXoa.Iconcolor = System.Drawing.Color.Transparent;
            this.btnXoa.Iconimage = null;
            this.btnXoa.Iconimage_right = null;
            this.btnXoa.Iconimage_right_Selected = null;
            this.btnXoa.Iconimage_Selected = null;
            this.btnXoa.IconMarginLeft = 0;
            this.btnXoa.IconMarginRight = 0;
            this.btnXoa.IconRightVisible = true;
            this.btnXoa.IconRightZoom = 0D;
            this.btnXoa.IconVisible = true;
            this.btnXoa.IconZoom = 90D;
            this.btnXoa.IsTab = false;
            this.btnXoa.Location = new System.Drawing.Point(1002, 100);
            this.btnXoa.Margin = new System.Windows.Forms.Padding(5);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(237)))), ((int)(((byte)(28)))), ((int)(((byte)(36)))));
            this.btnXoa.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(173)))), ((int)(((byte)(23)))), ((int)(((byte)(43)))));
            this.btnXoa.OnHoverTextColor = System.Drawing.Color.White;
            this.btnXoa.selected = false;
            this.btnXoa.Size = new System.Drawing.Size(167, 54);
            this.btnXoa.TabIndex = 82;
            this.btnXoa.Text = "XÓA";
            this.btnXoa.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.btnXoa.Textcolor = System.Drawing.Color.White;
            this.btnXoa.TextFont = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // UC_InvoiceDetails
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.Controls.Add(this.btnXoa);
            this.Controls.Add(this.btnXemChiTiet);
            this.Controls.Add(this.grpTimKiem);
            this.Controls.Add(this.grpDanhSach);
            this.Controls.Add(this.lblTitle);
            this.Controls.Add(this.btnBack);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "UC_InvoiceDetails";
            this.Size = new System.Drawing.Size(1191, 762);
            this.Load += new System.EventHandler(this.UC_InvoiceDetails_Load);
            ((System.ComponentModel.ISupportInitialize)(this.btnBack)).EndInit();
            this.grpDanhSach.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dtList)).EndInit();
            this.grpTimKiem.ResumeLayout(false);
            this.grpTimKiem.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblTitle;
        private Bunifu.Framework.UI.BunifuImageButton btnBack;
        private System.Windows.Forms.GroupBox grpDanhSach;
        private Bunifu.Framework.UI.BunifuCustomDataGrid dtList;
        private System.Windows.Forms.GroupBox grpTimKiem;
        private System.Windows.Forms.TextBox txtTimKiem;
        private Bunifu.Framework.UI.BunifuFlatButton btnXemChiTiet;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaHD;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenKhach;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenNV;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgayLapHD;
        private System.Windows.Forms.DataGridViewTextBoxColumn TongTien;
        private Bunifu.Framework.UI.BunifuDragControl bunifuDragControl1;
        private Bunifu.Framework.UI.BunifuFlatButton btnXoa;
    }
}

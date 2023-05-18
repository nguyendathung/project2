﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace KFC_FASTFOOD.Forms
{
    public partial class frm_RestoreDatabase : Form
    {
        public frm_RestoreDatabase()
        {
            InitializeComponent();
        }

        private void btnPath_Click(object sender, EventArgs e)
        {
            openFileDialog1.Filter = "Backup File File|*.bak";
            openFileDialog1.Title = "Save Backup Database";
            openFileDialog1.FileName = "KFC_FASTFOOD" + DateTime.Now.ToString("yyyyMMdd_HHmmss") + ".bak";
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                txtPath.Text = openFileDialog1.FileName;
            }
            else
            {
                txtPath.Text = "";
            }
        }

        private void btnKhoiPhuc_Click(object sender, EventArgs e)
        {
            if (lib.cls_BackupRestore._restoreDatabase(txtPath.Text))
            {
                progressBar1.Visible = true;
                progressBar1.Minimum = 0;
                progressBar1.Maximum = 100;
                for (int i = 0; i <= 100; i++)
                {
                    progressBar1.Value = i;
                    this.toolStripStatusLabel1.Text = string.Format("Đang tiến hành khôi phục dữ liệu: {0} %", i);
                    this.Refresh();
                    if (i == 100)
                    {
                        this.toolStripStatusLabel1.Text = string.Format("Hoàn tất khôi phục sao lưu.", i);
                        this.Refresh();
                    }
                    Thread.Sleep(50);
                }
                MessageBox.Show("Khôi phục dữ liệu thành công.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtPath.Text = "";
                progressBar1.Value = 0;
                this.toolStripStatusLabel1.Text = "";
                progressBar1.Visible = false;
                this.Refresh();
            }
            else
            {
                MessageBox.Show("Đã có lỗi xảy ra trong quá trình khôi phục dữ liệu. Vui lòng kiểm tra lại quyền thư mục lưu.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frm_RestoreDatabase_Load(object sender, EventArgs e)
        {
            txtPath.Enabled = false;
        }
    }
}

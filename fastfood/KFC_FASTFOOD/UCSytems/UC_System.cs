﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using KFC_FASTFOOD.Forms;
using KFC_FASTFOOD.UCFunction;

namespace KFC_FASTFOOD.UCSytems
{
    public partial class UC_System : UserControl
    {
        public UC_System()
        {
            InitializeComponent();
        }

        private void btnDoiMatKhau_Click(object sender, EventArgs e)
        {
            using(Forms.frm_ChangePassword changePassword = new Forms.frm_ChangePassword())
            {
                changePassword.ShowDialog();
            }
        }

        
        private void btnQuanLyNguoiDung_Click(object sender, EventArgs e)
        {
            if (!frm_Main.Instance.pnlContainer.Controls.ContainsKey("UC_UserManager"))
            {
                UC_UserManager userManager = new UC_UserManager();
                userManager.Dock = DockStyle.Fill;
                frm_Main.Instance.pnlContainer.Controls.Add(userManager);
            }
            frm_Main.Instance.pnlContainer.Controls["UC_UserManager"].BringToFront();
        }

        private void btnPhanQuyenNguoiDung_Click(object sender, EventArgs e)
        {
            using (frm_UserPermission userPermission = new frm_UserPermission())
            {
                userPermission.ShowDialog();
            }
        }

        private void btnSaoluuDuLieu_Click(object sender, EventArgs e)
        {
            using (frm_BackupDatabase backupDatabase = new frm_BackupDatabase())
            {
                backupDatabase.ShowDialog();
            }
        }

        private void btnPhucHoiDuLieu_Click(object sender, EventArgs e)
        {
            using (frm_RestoreDatabase restoreDatabase = new frm_RestoreDatabase())
            {
                restoreDatabase.ShowDialog();
            }
        }

        private void btnThongTinCuaHang_Click(object sender, EventArgs e)
        {
            using (Forms.frm_Setting setting = new Forms.frm_Setting())
            {
                setting.ShowDialog();
            }
        }
    }
}

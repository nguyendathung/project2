﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using KFC_FASTFOOD.UCFunction;
using KFC_FASTFOOD.Forms;

namespace KFC_FASTFOOD.UCSytems
{
    public partial class UC_Product : UserControl
    {
        public UC_Product()
        {
            InitializeComponent();
        }

        private void btnQuanLyMonAn_Click(object sender, EventArgs e)
        {
            if(!frm_Main.Instance.pnlContainer.Controls.ContainsKey("UC_FoodManager"))
            {
                UC_FoodManager foodManager = new UC_FoodManager();
                foodManager.Dock = DockStyle.Fill;
                frm_Main.Instance.pnlContainer.Controls.Add(foodManager);
            }
            frm_Main.Instance.pnlContainer.Controls["UC_FoodManager"].BringToFront();
        }

        private void btnQuanLyNuocUong_Click(object sender, EventArgs e)
        {
            if (!frm_Main.Instance.pnlContainer.Controls.ContainsKey("UC_DrinkManager"))
            {
                UC_DrinkManager drinkManager = new UC_DrinkManager();
                drinkManager.Dock = DockStyle.Fill;
                frm_Main.Instance.pnlContainer.Controls.Add(drinkManager);
                
            }
            frm_Main.Instance.pnlContainer.Controls["UC_DrinkManager"].BringToFront();
        }

        private void btnQuanLySP_Click(object sender, EventArgs e)
        {
            if (!frm_Main.Instance.pnlContainer.Controls.ContainsKey("UC_ProductType"))
            {
                UC_ProductType productType = new UC_ProductType();
                productType.Dock = DockStyle.Fill;
                frm_Main.Instance.pnlContainer.Controls.Add(productType);
            }
            frm_Main.Instance.pnlContainer.Controls["UC_ProductType"].BringToFront();
        }

        private void btnQuanLyNCC_Click(object sender, EventArgs e)
        {
            if (!frm_Main.Instance.pnlContainer.Controls.ContainsKey("UC_NCCManager"))
            {
                UC_NCCManager nCCManager = new UC_NCCManager();
                nCCManager.Dock = DockStyle.Fill;
                frm_Main.Instance.pnlContainer.Controls.Add(nCCManager);
            }
            frm_Main.Instance.pnlContainer.Controls["UC_NCCManager"].BringToFront();
        }

        private void bunifuImageButton2_Click(object sender, EventArgs e)
        {
            if (!frm_Main.Instance.pnlContainer.Controls.ContainsKey("UC_ADDFOOD"))
            {
                UC_ADDFOOD addfood = new UC_ADDFOOD();
                addfood.Dock = DockStyle.Fill;
                frm_Main.Instance.pnlContainer.Controls.Add(addfood);

            }
            frm_Main.Instance.pnlContainer.Controls["UC_ADDFOOD"].BringToFront();
        }

        private void bunifuImageButton3_Click(object sender, EventArgs e)
        {
            MessageBox.Show("chức năng sẽ có trong bản cập nhật sắp tới.", "thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void bunifuImageButton5_Click(object sender, EventArgs e)
        {
            MessageBox.Show("chức năng sẽ có trong bản cập nhật sắp tới.", "thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void bunifuImageButton6_Click(object sender, EventArgs e)
        {
            MessageBox.Show("chức năng sẽ có trong bản cập nhật sắp tới.", "thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}

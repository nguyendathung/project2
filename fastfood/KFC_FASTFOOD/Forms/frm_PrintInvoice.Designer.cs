namespace KFC_FASTFOOD.Forms
{
    partial class frm_PrintInvoice
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frm_PrintInvoice));
            this.panelHeader = new System.Windows.Forms.Panel();
            this.btnClose = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.panelLeft = new System.Windows.Forms.Panel();
            this.panelRight = new System.Windows.Forms.Panel();
            this.panelFooter = new System.Windows.Forms.Panel();
            this.rpInvoice = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.bunifuDragControl1 = new Bunifu.Framework.UI.BunifuDragControl(this.components);
            this.bunifuDragControl2 = new Bunifu.Framework.UI.BunifuDragControl(this.components);
            this.cachedrp_PrintInvoice1 = new KFC_FASTFOOD.Report.Cachedrp_PrintInvoice();
            this.btnDone = new Bunifu.Framework.UI.BunifuFlatButton();
            this.panelHeader.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelHeader
            // 
            this.panelHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(0)))), ((int)(((byte)(42)))));
            this.panelHeader.Controls.Add(this.btnClose);
            this.panelHeader.Controls.Add(this.label1);
            this.panelHeader.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelHeader.Location = new System.Drawing.Point(0, 0);
            this.panelHeader.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.panelHeader.Name = "panelHeader";
            this.panelHeader.Size = new System.Drawing.Size(636, 34);
            this.panelHeader.TabIndex = 3;
            // 
            // btnClose
            // 
            this.btnClose.BackColor = System.Drawing.Color.Transparent;
            this.btnClose.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnClose.FlatAppearance.BorderSize = 0;
            this.btnClose.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnClose.Image = ((System.Drawing.Image)(resources.GetObject("btnClose.Image")));
            this.btnClose.Location = new System.Drawing.Point(593, 0);
            this.btnClose.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(43, 34);
            this.btnClose.TabIndex = 2;
            this.btnClose.UseVisualStyleBackColor = false;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // label1
            // 
            this.label1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(247, 5);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(128, 28);
            this.label1.TabIndex = 0;
            this.label1.Text = "IN HÓA ĐƠN";
            // 
            // panelLeft
            // 
            this.panelLeft.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(0)))), ((int)(((byte)(42)))));
            this.panelLeft.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelLeft.Location = new System.Drawing.Point(0, 34);
            this.panelLeft.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.panelLeft.Name = "panelLeft";
            this.panelLeft.Size = new System.Drawing.Size(4, 668);
            this.panelLeft.TabIndex = 4;
            // 
            // panelRight
            // 
            this.panelRight.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(0)))), ((int)(((byte)(42)))));
            this.panelRight.Dock = System.Windows.Forms.DockStyle.Right;
            this.panelRight.Location = new System.Drawing.Point(632, 34);
            this.panelRight.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.panelRight.Name = "panelRight";
            this.panelRight.Size = new System.Drawing.Size(4, 668);
            this.panelRight.TabIndex = 5;
            // 
            // panelFooter
            // 
            this.panelFooter.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(0)))), ((int)(((byte)(42)))));
            this.panelFooter.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelFooter.Location = new System.Drawing.Point(4, 698);
            this.panelFooter.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.panelFooter.Name = "panelFooter";
            this.panelFooter.Size = new System.Drawing.Size(628, 4);
            this.panelFooter.TabIndex = 6;
            // 
            // rpInvoice
            // 
            this.rpInvoice.ActiveViewIndex = -1;
            this.rpInvoice.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.rpInvoice.Cursor = System.Windows.Forms.Cursors.Default;
            this.rpInvoice.DisplayStatusBar = false;
            this.rpInvoice.Location = new System.Drawing.Point(4, 34);
            this.rpInvoice.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.rpInvoice.Name = "rpInvoice";
            this.rpInvoice.Size = new System.Drawing.Size(627, 608);
            this.rpInvoice.TabIndex = 7;
            this.rpInvoice.ToolPanelView = CrystalDecisions.Windows.Forms.ToolPanelViewType.None;
            // 
            // bunifuDragControl1
            // 
            this.bunifuDragControl1.Fixed = true;
            this.bunifuDragControl1.Horizontal = true;
            this.bunifuDragControl1.TargetControl = this.rpInvoice;
            this.bunifuDragControl1.Vertical = true;
            // 
            // bunifuDragControl2
            // 
            this.bunifuDragControl2.Fixed = true;
            this.bunifuDragControl2.Horizontal = true;
            this.bunifuDragControl2.TargetControl = this.panelHeader;
            this.bunifuDragControl2.Vertical = true;
            // 
            // btnDone
            // 
            this.btnDone.Activecolor = System.Drawing.Color.FromArgb(((int)(((byte)(237)))), ((int)(((byte)(28)))), ((int)(((byte)(36)))));
            this.btnDone.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(237)))), ((int)(((byte)(28)))), ((int)(((byte)(36)))));
            this.btnDone.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnDone.BorderRadius = 5;
            this.btnDone.ButtonText = "XONG";
            this.btnDone.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnDone.DisabledColor = System.Drawing.Color.Gray;
            this.btnDone.Iconcolor = System.Drawing.Color.Transparent;
            this.btnDone.Iconimage = null;
            this.btnDone.Iconimage_right = null;
            this.btnDone.Iconimage_right_Selected = null;
            this.btnDone.Iconimage_Selected = null;
            this.btnDone.IconMarginLeft = 0;
            this.btnDone.IconMarginRight = 0;
            this.btnDone.IconRightVisible = true;
            this.btnDone.IconRightZoom = 0D;
            this.btnDone.IconVisible = true;
            this.btnDone.IconZoom = 90D;
            this.btnDone.IsTab = false;
            this.btnDone.Location = new System.Drawing.Point(513, 651);
            this.btnDone.Margin = new System.Windows.Forms.Padding(5);
            this.btnDone.Name = "btnDone";
            this.btnDone.Normalcolor = System.Drawing.Color.FromArgb(((int)(((byte)(237)))), ((int)(((byte)(28)))), ((int)(((byte)(36)))));
            this.btnDone.OnHovercolor = System.Drawing.Color.FromArgb(((int)(((byte)(173)))), ((int)(((byte)(23)))), ((int)(((byte)(43)))));
            this.btnDone.OnHoverTextColor = System.Drawing.Color.White;
            this.btnDone.selected = false;
            this.btnDone.Size = new System.Drawing.Size(109, 37);
            this.btnDone.TabIndex = 8;
            this.btnDone.Text = "XONG";
            this.btnDone.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.btnDone.Textcolor = System.Drawing.Color.White;
            this.btnDone.TextFont = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDone.Click += new System.EventHandler(this.btnDone_Click);
            // 
            // frm_PrintInvoice
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(636, 702);
            this.Controls.Add(this.btnDone);
            this.Controls.Add(this.rpInvoice);
            this.Controls.Add(this.panelFooter);
            this.Controls.Add(this.panelRight);
            this.Controls.Add(this.panelLeft);
            this.Controls.Add(this.panelHeader);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "frm_PrintInvoice";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "In hóa đơn";
            this.Load += new System.EventHandler(this.frm_PrintInvoice_Load);
            this.panelHeader.ResumeLayout(false);
            this.panelHeader.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelHeader;
        private System.Windows.Forms.Button btnClose;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panelLeft;
        private System.Windows.Forms.Panel panelRight;
        private System.Windows.Forms.Panel panelFooter;
        private CrystalDecisions.Windows.Forms.CrystalReportViewer rpInvoice;
        private Bunifu.Framework.UI.BunifuDragControl bunifuDragControl1;
        private Bunifu.Framework.UI.BunifuDragControl bunifuDragControl2;
        private Report.Cachedrp_PrintInvoice cachedrp_PrintInvoice1;
        private Bunifu.Framework.UI.BunifuFlatButton btnDone;
    }
}
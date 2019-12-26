using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyQuanNet
{
    public partial class fDangNhap : Form
    {
        public fDangNhap()
        {
            InitializeComponent();
         
        }
        private void btnLogin_Click(object sender, EventArgs e)
        {
            fQuanLy f = new fQuanLy();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }
        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}

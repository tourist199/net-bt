using QuanLyQuanNet.BEAN;
using QuanLyQuanNet.DAO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyQuanNet
{
    public partial class fTinhTien : Form
    {
        private MayConBEAN mayCon;
        public fTinhTien(MayConBEAN mc)
        {
            mayCon = mc;
            InitializeComponent();
            loadTT();
        }

        private void btnThoi_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        #region methods

        void loadTT()
        {
            lbTenMay.Text = mayCon.TenMay;
            if (ThongKeDAO.Instance.getTongTienByMaMay(mayCon) == null)
                return;
            long tt= ThongKeDAO.Instance.getTongTienByMaMay(mayCon);
            if (tt < 1000)
            {
                tt = 1000;
                txtTongTien.Text = tt.ToString("c", new CultureInfo("vi-VN"));
            }  
            else
            {
                tt = tt / 1000;
                tt = tt * 1000 + 1000;
                txtTongTien.Text = tt.ToString("c", new CultureInfo("vi-VN"));
            }
                
            

        }

        #endregion

        #region events


        #endregion

        private void btnCo_Click(object sender, EventArgs e)
        {

            ThongKeBEAN tk = ThongKeDAO.Instance.getThongKeByMaMay(mayCon.MaMay);
            long tongtien = ThongKeDAO.Instance.getTongTienByMaMay(mayCon);
            DataProvider.Instance.ExecuteNonQuery("update MayCon set TrangThaiMay = N'San sang' where MaMay = " + mayCon.MaMay);

            DataProvider.Instance.ExecuteNonQuery("update thongke set thoigianketthuc= '"+ DateTime.Now.ToString("MM/dd/yyyy HH:mm") + "' , TrangThai = 1,thanhtien = "+tongtien+" where maThongKe = " + tk.MaThongKe);

            this.Close();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            loadTT();
        }
    }
}

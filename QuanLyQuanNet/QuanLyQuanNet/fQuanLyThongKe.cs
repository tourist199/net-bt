using QuanLyQuanNet.BEAN;
using QuanLyQuanNet.DAO;
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
    public partial class fQuanLyThongKe : Form
    {

        #region methods
        
        void loadThongKeTheoNgay(DateTime tuNgay, DateTime denNgay)
        {
            tuNgay= tuNgay.AddDays(-1);
            //denNgay.AddDays(1);
            string sql;
            DataTable data;
            if (checkBoxThongKe.Checked==false)
            {
                sql = "USP_getThongKeTheoNgay  @tuNgay , @denNgay ";
                data = DataProvider.Instance.ExcuteQuery(sql,new object []{ tuNgay.ToString(),denNgay.ToString()});
            }
            else
            {
                sql = "USP_getThongKeTheoMay @maMay , @tuNgay , @denNgay ";
                string mamay = (cbMayCon.SelectedItem as MayConBEAN).MaMay;
                data = DataProvider.Instance.ExcuteQuery(sql,new object[] { mamay, tuNgay.ToString(),denNgay.ToString() });
            }
             
            dtgvThongKe.DataSource = data;
        }
        #endregion


        public fQuanLyThongKe()
        {
            InitializeComponent();
            cbMayCon.Enabled = false;
            loadThongKeTheoNgay(dtpkTuNgay.Value, dtpkDenNgay.Value);
        }



        #region events

        private void btnThongKe_Click(object sender, EventArgs e)
        {
            loadThongKeTheoNgay(dtpkTuNgay.Value, dtpkDenNgay.Value);
        }


        private void checkBoxThongKe_CheckStateChanged(object sender, EventArgs e)
        {
            if (checkBoxThongKe.Checked == false)
                cbMayCon.Enabled = false;
            else
            {
                cbMayCon.Enabled = true;
                cbMayCon.DataSource = MayConDAO.Instance.getListMayCon();
                cbMayCon.DisplayMember = "TenMay";
            }
        }



        #endregion

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}

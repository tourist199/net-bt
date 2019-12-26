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
    public partial class fQuanLy : Form
    {
        public fQuanLy()
        {
            InitializeComponent();
            loadMayTram();

        }

        #region methods

        void loadMayTram()
        {

            
            flpQuanLyMayTram.Controls.Clear();
            List<MayConBEAN> listMay = MayConDAO.Instance.getListMayCon();
            foreach (MayConBEAN item in listMay)
            {
                
                Panel panel = new Panel();
                panel.Height = 90; panel.Width = 90; ;
                PictureBox picture = new PictureBox();

                if (item.TrangThai == "San sang")
                    picture.Image = Image.FromFile("..//..//Resources//23248.png");
                else 
                    picture.Image = Image.FromFile("..//..//Resources//23247.png");

                picture.Click += picture_Click;
                picture.DoubleClick += picture_DoubleClick;
                
                picture.Size = new Size(70, 45);
                picture.SizeMode = PictureBoxSizeMode.StretchImage;
                picture.Location = new System.Drawing.Point(20, 10);
                Label lb = new Label();
                lb.Text = "Máy " + item.MaMay;
                lb.Location = new System.Drawing.Point(35, 60);
                panel.Controls.Add(lb);
                picture.Tag = item;

                ContextMenu cm = new ContextMenu();
                cm.MenuItems.Add("Mở máy");
                cm.MenuItems.Add("Tắt máy");
                cm.MenuItems.Add("Tính tiền");
                cm.MenuItems.Add("Thêm tiền dịch vụ");

                picture.ContextMenu = cm;

                panel.Controls.Add(picture);
                
                flpQuanLyMayTram.Controls.Add(panel);
            }

        }
        void showTienDichVu_GhiChu()
        {
            MayConBEAN mc = pnShowThongTinMay.Tag as MayConBEAN;

            if (mc != null)
            {
                if (mc.TrangThai == "Dang su dung" && ThongKeDAO.Instance.getThongKeByMaMay(mc.MaMay) != null)
                {
                    ThongKeBEAN tk = ThongKeDAO.Instance.getThongKeByMaMay(mc.MaMay);
                    nmPhiDichVu.Text = tk.PhiDichVu.ToString();
                    txtGhiChu.Text = tk.GhiChu;

                    checkboxChuyenMay.Checked = false;
                }
            }
        }
        void showThongTinMay()
        {
            MayConBEAN mc = pnShowThongTinMay.Tag as MayConBEAN;

            if (mc != null)
            {
                

                if (mc.TrangThai == "Dang su dung" && ThongKeDAO.Instance.getThongKeByMaMay(mc.MaMay)!=null)
                {
                    ThongKeBEAN tk = ThongKeDAO.Instance.getThongKeByMaMay(mc.MaMay);
                    txtThoiGianBatDau.Text = tk.ThoiGianBatDau.ToString();
                    DateTime timeNow = DateTime.Now;
                    string tgsd = (DateTime.Now.Subtract(tk.ThoiGianBatDau.Value)).ToString();
                    string[] textDelete = tgsd.Split('.');
                    txtThoiGianSuDung.Text = tgsd.Replace("."+textDelete[textDelete.Length-1],""); //(timeNow-tk.ThoiGianBatDau).Value.ToString("HH mm ss");
                    
                    //txtGhiChu.Text = tk.GhiChu;
                    txtTongTien.Text = ThongKeDAO.Instance.getTongTienByMaMay(mc).ToString("c", new CultureInfo("vi-VN"));
                    btnTinhTien.Enabled = true;
                    btnCapNhat.Enabled = true;
                }
                else
                {
                    txtThoiGianBatDau.Text = "";
                    txtThoiGianSuDung.Text = "";
                    nmPhiDichVu.Text = "";
                    txtGhiChu.Text = "";
                    txtTongTien.Text = "";
                    btnCapNhat.Enabled = false;
                    btnTinhTien.Enabled = false;
                }
                lbTenMay.Text = mc.TenMay;

            }
            
        }
        void moTatMay()
        {
            MayConBEAN mc = pnShowThongTinMay.Tag as MayConBEAN;
            if (mc.TrangThai =="San sang")
            {
                DataProvider.Instance.ExecuteNonQuery("USP_setDangSuDungByMaMay @maMay" , new object[] { mc.MaMay });
                DataProvider.Instance.ExecuteNonQuery("USP_InsertThongKe @maMay", new object[] { mc.MaMay });
                
                
            }
            else
            {
                
                fTinhTien f = new fTinhTien(pnShowThongTinMay.Tag as MayConBEAN);
                f.ShowDialog();
                txtThoiGianBatDau.Text = "";
                txtThoiGianSuDung.Text = "";
                nmPhiDichVu.Text = "";
                txtGhiChu.Text = "";
                txtTongTien.Text = "";
                btnCapNhat.Enabled = false;
                btnTinhTien.Enabled = false;
                loadMayTram();
            }

            showThongTinMay();
            showTienDichVu_GhiChu();
            loadMayTram();
        }
        #endregion

        #region events

        private void picture_Click(object sender, EventArgs e)
        {
            

            MayConBEAN mc= (sender as PictureBox).Tag as MayConBEAN;
            pnShowThongTinMay.Tag = mc;

            showThongTinMay();
            showTienDichVu_GhiChu();

        }

        private void picture_DoubleClick(object sender, EventArgs e)
        {
            MayConBEAN mc = (sender as PictureBox).Tag as MayConBEAN;
            pnShowThongTinMay.Tag = mc;
            
            moTatMay();
            
        }
        private void btnTinhTien_Click(object sender, EventArgs e)
        {
            fTinhTien f = new fTinhTien(pnShowThongTinMay.Tag as MayConBEAN);
            f.ShowDialog();
            loadMayTram();
        }

        private void btnCapNhat_Click(object sender, EventArgs e)
        {
            MayConBEAN mc = pnShowThongTinMay.Tag as MayConBEAN;
            if (checkboxChuyenMay.Checked==false)
            {
                DataProvider.Instance.ExecuteNonQuery("USP_updateThongKe_KhongChuyenMay @phiDichVu , @ghiChu , @maThongKe", new object[] {nmPhiDichVu.Value, txtGhiChu.Text, ThongKeDAO.Instance.getThongKeByMaMay(mc.MaMay).MaThongKe });
                
            }
                
            else
            {
                DataProvider.Instance.ExecuteNonQuery("USP_updateThongKe_ChuyenMay @phiDichVu , @ghiChu , @maThongKe , @maMay", new object[] { nmPhiDichVu.Value, txtGhiChu.Text, ThongKeDAO.Instance.getThongKeByMaMay(mc.MaMay).MaThongKe, (cbChuyenMay.SelectedItem as MayConBEAN).MaMay });
                DataProvider.Instance.ExecuteNonQuery("update maycon set trangthaimay=N'San sang' where mamay = "+mc.MaMay);
                DataProvider.Instance.ExecuteNonQuery("update maycon set trangthaimay=N'Dang su dung' where mamay = "+ (cbChuyenMay.SelectedItem as MayConBEAN).MaMay);
                loadMayTram();
            }
            showTienDichVu_GhiChu();
            showThongTinMay();

        }


        #endregion

        private void pictureLogout_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            fQuanLyThongKe f = new fQuanLyThongKe();
            this.Hide();
            f.ShowDialog();
            this.Show();
        }

        private void checkboxChuyenMay_CheckStateChanged(object sender, EventArgs e)
        {
            if(checkboxChuyenMay.Checked==false)
            {
                cbChuyenMay.Enabled = false;
            }
            else
            {
                cbChuyenMay.Enabled = true;
                cbChuyenMay.DataSource = MayConDAO.Instance.getListMayConSanSang();
                cbChuyenMay.DisplayMember = "tenmay";
            }
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            fAbout f = new fAbout();
            f.ShowDialog();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            showThongTinMay();
        }
    }
}

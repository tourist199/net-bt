using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanNet.BEAN
{
    class ThongKeBEAN
    {
        private string maThongKe;
        private string maMay;
        DateTime? thoiGianBatDau;
        DateTime? thoiGianKetThuc;
        int phiDichVu;
        int thanhTien;
        string ghiChu;
        string trangThai;

        public ThongKeBEAN (string maThongKe, string maMay, DateTime thoiGianBatDau, DateTime thoiGianKetThuc,int phiDV, int thanhTien, string ghiChu, string trangThai)
        {
            this.maThongKe = maThongKe;
            this.maMay = maMay;
            this.thoiGianBatDau = thoiGianBatDau;
            this.thoiGianKetThuc = thoiGianKetThuc;
            this.phiDichVu = phiDV;
            this.thanhTien = thanhTien;
            this.ghiChu = ghiChu;
            this.trangThai = trangThai;
        }

        public ThongKeBEAN(DataRow row)
        {
            this.maThongKe = row["maThongKe"].ToString();
            this.maMay = row["maMay"].ToString();
            this.thoiGianBatDau = (DateTime)row["thoiGianBatDau"];
            if (row["ThoiGianKetThuc"].ToString()!= "")
                this.thoiGianKetThuc = (DateTime)row["ThoiGianKetThuc"];
            this.phiDichVu = (int)row["phiDichVu"];
            this.thanhTien = (int)row["thanhTien"];
            this.ghiChu = row["ghiChu"].ToString();
            this.trangThai = row["trangThai"].ToString();
        }

        public string MaThongKe
        {
            get
            {
                return maThongKe;
            }

            set
            {
                maThongKe = value;
            }
        }

        public string MaMay
        {
            get
            {
                return maMay;
            }

            set
            {
                maMay = value;
            }
        }

        public DateTime? ThoiGianBatDau
        {
            get
            {
                return thoiGianBatDau;
            }

            set
            {
                thoiGianBatDau = value;
            }
        }

        public DateTime? ThoiGianKetThuc
        {
            get
            {
                return thoiGianKetThuc;
            }

            set
            {
                thoiGianKetThuc = value;
            }
        }

        public int PhiDichVu
        {
            get
            {
                return phiDichVu;
            }

            set
            {
                phiDichVu = value;
            }
        }

        public int ThanhTien
        {
            get
            {
                return thanhTien;
            }

            set
            {
                thanhTien = value;
            }
        }

        public string GhiChu
        {
            get
            {
                return ghiChu;
            }

            set
            {
                ghiChu = value;
            }
        }

        public string TrangThai
        {
            get
            {
                return trangThai;
            }

            set
            {
                trangThai = value;
            }
        }
    }
}

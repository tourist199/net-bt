using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanNet.BEAN
{
    public class MayConBEAN
    {
        string maMay;
        string tenMay;
        string trangThai;
        int donGia;

        public MayConBEAN (string mamay, string tenmay, string trangthai,int donGia)
        {
            this.maMay = mamay;
            this.tenMay = tenmay;
            this.trangThai = trangthai;
            this.donGia = donGia;
        }
        public MayConBEAN (DataRow row)
        {
            this.maMay = row["mamay"].ToString();
            this.trangThai = row["trangthaimay"].ToString();
            this.tenMay = row["tenmay"].ToString();
            this.donGia = (int)row["dongia"];
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

        public string TenMay
        {
            get
            {
                return tenMay;
            }

            set
            {
                tenMay = value;
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

        public int DonGia
        {
            get
            {
                return donGia;
            }

            set
            {
                donGia = value;
            }
        }
    }
}

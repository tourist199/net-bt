using QuanLyQuanNet.BEAN;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanNet.DAO
{
    class ThongKeDAO
    {
        private static ThongKeDAO instance;

        public static ThongKeDAO Instance
        {
            get
            {
                if (instance == null)
                    instance = new ThongKeDAO();
                return instance;
            }

            set
            {
                instance = value;
            }
        }
        private ThongKeDAO() { }

        public  ThongKeBEAN getThongKeByMaMay (string maMay)
        {
            DataTable data = DataProvider.Instance.ExcuteQuery("select  ThongKe.* from ThongKe,MayCon where ThongKe.MaMay=MayCon.MaMay and TrangThaiMay=N'Dang su dung' and thongke.trangthai=0 and MayCon.MaMay = " + maMay);
            if (data.Rows.Count == 0)
                return null;
            DataRow row = data.Rows[0];
            return new ThongKeBEAN(row);
        }
        
        public  long getTongTienByMaMay(MayConBEAN mc)
        {
            ThongKeBEAN tk = ThongKeDAO.Instance.getThongKeByMaMay(mc.MaMay);
            if (tk == null)
                return 0;
            long phiDV=tk.PhiDichVu;
            long DonGia=mc.DonGia;
            
            Double thoiGianSuDung= DateTime.Now.Subtract(tk.ThoiGianBatDau.Value).TotalMilliseconds/1000/60/60;

            Double thanhTien = phiDV + (DonGia*thoiGianSuDung);

            return (long)thanhTien;
        }
    }
}

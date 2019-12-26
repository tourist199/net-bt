using QuanLyQuanNet.BEAN;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyQuanNet.DAO
{
    public class MayConDAO
    {
        private static MayConDAO instance;

        public static MayConDAO Instance
        {
            get
            {
                if (instance == null)
                    instance = new MayConDAO();
                return instance;
            }

            set
            {
                instance = value;
            }
        }
        private MayConDAO() { }
        public List<MayConBEAN> getListMayCon ()
        {
            List<MayConBEAN> ls = new List<MayConBEAN>();
            DataTable data = DataProvider.Instance.ExcuteQuery("select * from maycon order by mamay");
            foreach (DataRow item in data.Rows)
            {
                ls.Add(new MayConBEAN(item));
            }
            return ls;
        }
        public List<MayConBEAN> getListMayConSanSang()
        {
            List<MayConBEAN> ls = new List<MayConBEAN>();
            DataTable data = DataProvider.Instance.ExcuteQuery("select * from maycon where trangthaimay =N'San sang' order by mamay");
            foreach (DataRow item in data.Rows)
            {
                ls.Add(new MayConBEAN(item));
            }
            return ls;
        }

        public MayConBEAN getMayConByMaMay(string id)
        {
            
            DataTable data = DataProvider.Instance.ExcuteQuery("select * from maycon where mamay= "+id);
            MayConBEAN mc = new MayConBEAN(data.Rows[0]);
            return mc;
        }


    }
}

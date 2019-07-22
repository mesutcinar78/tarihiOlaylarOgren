using DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public interface ITarihiOlay
    {
        //deneme
        TarihiOlay GetByKategori(int katID);

        List<TarihiOlay> GetByUlkeKod(string ulkeKod);

        List<TarihiOlay> GetByEkleyenKisi(int userID);

        List<TarihiOlay> GetByDurum(int durum);
        

    }
}

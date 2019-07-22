using BLL;
using BLL.Concrete;
using DAL;
using DATA;
using DunyaTarihi.Models.DTOs;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.UI;

namespace DunyaTarihi.Controllers
{
    public class MainController : ApiController
    {

        Context db = new Context();
        TarihiOlayConcrete tarihiOlaylar = new TarihiOlayConcrete();
        UserConcrete kullanicilar = new UserConcrete();
        UlkeConcrete ulkeler = new UlkeConcrete();
        TarihiOlayUlkeConcrete TarihiOlaylarUlkeler = new TarihiOlayUlkeConcrete();
        KitaplikConcrete kitapliklar = new KitaplikConcrete();
        KitaplikTarihiOlayConcrete kitaplikTarihiOlaylar = new KitaplikTarihiOlayConcrete();
        DurumConcrete durumlar = new DurumConcrete();
        KategoriConcrete kategoriler = new KategoriConcrete();

        //[HttpGet]
        //public List<TarihiOlay> GetFromKitaplik()
        //{
        //    string uID = System.Web.HttpContext.Current.User.Identity.GetUserId();
        //    int kitaplikID = kitapliklar.kitaplikRepository.Get(x => x.KullaniciID == uID).KitaplikID;
        //    List<KitaplikTarihiOlay> tarihiOlayIdleri = kitaplikTarihiOlaylar.KitaplikTarihiOlayRepository.GetAll(x => x.KitaplikID == kitaplikID).ToList();
        //    List<TarihiOlay> olaylar = new List<TarihiOlay>();

        //    foreach (var item in tarihiOlayIdleri)
        //    {
        //        if (tarihiOlaylar.tarihiOlayRepository.Get(x => x.TarihiOlayID == item.TarihiOlayID) != null)
        //        {
        //            olaylar.Add(tarihiOlaylar.tarihiOlayRepository.Get(x => x.TarihiOlayID == item.TarihiOlayID));
        //        }
        //    }

        //    return olaylar;
        //}

        [HttpGet]
        public List<BaslikIcerikDTO> GetFromKitaplik()
        {
            List<BaslikIcerikDTO> olaylar = new List<BaslikIcerikDTO>();

            try
            {
                string uID = System.Web.HttpContext.Current.User.Identity.GetUserId();
                int kitaplikID = kitapliklar.kitaplikRepository.Get(x => x.KullaniciID == uID).KitaplikID;
                List<KitaplikTarihiOlay> tarihiOlayIdleri = kitaplikTarihiOlaylar.KitaplikTarihiOlayRepository.GetAll(x => x.KitaplikID == kitaplikID).ToList();

                foreach (var item in tarihiOlayIdleri)
                {
                    if (tarihiOlaylar.tarihiOlayRepository.Get(x => x.TarihiOlayID == item.TarihiOlayID && x.DurumID == 2) != null)
                    {
                        olaylar.Add(new BaslikIcerikDTO()
                        {
                            ID = (tarihiOlaylar.tarihiOlayRepository.Get(x => x.TarihiOlayID == item.TarihiOlayID && x.DurumID == 2)).TarihiOlayID,
                            Icerik = (tarihiOlaylar.tarihiOlayRepository.Get(x => x.TarihiOlayID == item.TarihiOlayID && x.DurumID == 2)).Icerik,
                            Baslik = (tarihiOlaylar.tarihiOlayRepository.Get(x => x.TarihiOlayID == item.TarihiOlayID && x.DurumID == 2)).Baslik
                        });

                    }
                }

                return olaylar;
            }
            catch (Exception)
            {

                return olaylar;
            }

        }

        [HttpGet]
        public List<EklediklerimDTO> GetFromEklediklerim()
        {
            string uID = System.Web.HttpContext.Current.User.Identity.GetUserId();

            List<EklediklerimDTO> olaylar = new List<EklediklerimDTO>();

            foreach (var item in tarihiOlaylar.tarihiOlayRepository.GetAll(x => x.YazarID == uID))
            {
                string durum = durumlar.DurumRepository.Get(x => x.DurumID == item.DurumID).Durumu;
                olaylar.Add(new EklediklerimDTO()
                {
                    ID = item.TarihiOlayID,
                    Baslik = item.Baslik,
                    Icerik = item.Icerik,
                    Durum = durum
                });
            }

            return olaylar;
        }

        [HttpGet]
        public List<BaslikIcerikDTO> GetByUlkeKod(string ulkeKod)
        {

            List<BaslikIcerikDTO> olaylar = new List<BaslikIcerikDTO>();
            int ulkeID = ulkeler.GetUlkeID(ulkeKod);

            List<TarihiOlayUlke> OlayIdleri = TarihiOlaylarUlkeler.TarihiOlayUlkeRepository.GetAll(x => x.UlkeID == ulkeID).ToList();

            foreach (var item in OlayIdleri)
            {
                if (tarihiOlaylar.GetByOlayIDOnayli(item.TarihiOlayID) != null)
                {
                    olaylar.Add(new BaslikIcerikDTO()
                    {
                        ID = tarihiOlaylar.GetByOlayIDOnayli(item.TarihiOlayID).TarihiOlayID,
                        Icerik = tarihiOlaylar.GetByOlayIDOnayli(item.TarihiOlayID).Icerik,
                        Baslik = tarihiOlaylar.GetByOlayIDOnayli(item.TarihiOlayID).Baslik
                    });
                }
            }

            return olaylar;
        }

        [HttpGet]
        public List<BaslikIcerikDTO> GetOlaylar()
        {

            List<BaslikIcerikDTO> olaylar = new List<BaslikIcerikDTO>();

            List<TarihiOlayUlke> OlayIdleri = TarihiOlaylarUlkeler.TarihiOlayUlkeRepository.GetAll().ToList();

            foreach (var item in OlayIdleri)
            {
                if (tarihiOlaylar.GetByOlayIDTumOlaylar(item.TarihiOlayID) != null)
                {
                    olaylar.Add(new BaslikIcerikDTO()
                    {
                        ID = tarihiOlaylar.GetByOlayIDTumOlaylar(item.TarihiOlayID).TarihiOlayID,
                        Icerik = tarihiOlaylar.GetByOlayIDTumOlaylar(item.TarihiOlayID).Icerik,
                        Baslik = tarihiOlaylar.GetByOlayIDTumOlaylar(item.TarihiOlayID).Baslik
                    });
                }
            }

            return olaylar;
        }

        [HttpGet]
        public DetayDTO GetByTarihiOlayID(int id)
        {
            TarihiOlay olay = tarihiOlaylar.GetByOlayIDTumOlaylar(id);
            DetayDTO detayOlay = new DetayDTO()
            {
                ID = olay.TarihiOlayID,
                BaslangicTarihi = olay.BaslangicTarihi,
                BitisTarihi = olay.BitisTarihi,
                Baslik = olay.Baslik,
                Icerik = olay.Icerik,
                YazarAdı = kullanicilar.userRepository.Get(x => x.Id == olay.YazarID).UserName
            };
            return detayOlay;
        }


        [HttpPost]
        public HttpResponseMessage AddToKitaplik(int id)
        {
            Kitaplik kitaplik = new Kitaplik()
            {
                KullaniciID = System.Web.HttpContext.Current.User.Identity.GetUserId()
            };

            if (kitapliklar.kitaplikRepository.Get(x => x.KullaniciID == kitaplik.KullaniciID) == null)
            {
                kitapliklar.kitaplikRepository.Add(kitaplik);
                kitapliklar.kitaplikUnitOfWork.SaveChanges();
            }
            else
            {
                kitaplik.KitaplikID = kitapliklar.kitaplikRepository.Get(x => x.KullaniciID == kitaplik.KullaniciID).KitaplikID;
            }


            KitaplikTarihiOlay kitaplikTarihiOlay = new KitaplikTarihiOlay()
            {
                KitaplikID = kitaplik.KitaplikID,
                TarihiOlayID = id
            };

            if (kitaplikTarihiOlaylar.KitaplikTarihiOlayRepository.Get(x => x.KitaplikID == kitaplik.KitaplikID && x.TarihiOlayID == id) == null)
            {

                kitaplikTarihiOlaylar.KitaplikTarihiOlayRepository.Add(kitaplikTarihiOlay);
                kitaplikTarihiOlaylar.KitaplikTarihiOlayUnitOfWork.SaveChanges();

                return Request.CreateResponse(HttpStatusCode.OK, "eklendi");
            }
            else
            {
                return Request.CreateResponse(HttpStatusCode.OK, "zaten ekli");
            }
        }

        [HttpPost]
        public HttpResponseMessage DeleteFromKitaplik(int id)
        {
            try
            {
                 string uId = System.Web.HttpContext.Current.User.Identity.GetUserId();
            kitaplikTarihiOlaylar.KitaplikTarihiOlayRepository.Delete(kitaplikTarihiOlaylar.KitaplikTarihiOlayRepository.Get(x => x.TarihiOlayID == id));
            kitaplikTarihiOlaylar.KitaplikTarihiOlayUnitOfWork.SaveChanges();
            kitapliklar.kitaplikRepository.Delete(kitapliklar.kitaplikRepository.Get(x => x.KullaniciID == uId));
            kitapliklar.kitaplikUnitOfWork.SaveChanges();



            }
            catch (Exception)
            {


            }

            return Request.CreateResponse(HttpStatusCode.OK, "silindi");


        }


        [HttpGet]
        public OlayGuncelleDTO GetOlay(int id)
        {
            TarihiOlay olay = tarihiOlaylar.GetByOlayIDTumOlaylar(id);
            OlayGuncelleDTO detayOlay = new OlayGuncelleDTO()
            {
                ID = olay.TarihiOlayID,
                Baslik = olay.Baslik,
                Icerik = olay.Icerik,
                DurumID = olay.DurumID,
                KategoriID = olay.KategoriID
            };

            return detayOlay;
        }

        [HttpGet]
        public List<DurumDTO> GetDurumlar()
        {
            List<DurumDTO> durum = new List<DurumDTO>();
            foreach (var item in durumlar.DurumRepository.GetAll())
            {
                durum.Add(new DurumDTO()
                {
                    DurumID = item.DurumID,
                    Durumu = item.Durumu
                });
            }

            return durum;
        }

        [HttpGet]
        public List<KategoriDTO> GetKategoriler()
        {
            List<KategoriDTO> kategori = new List<KategoriDTO>();
            foreach (var item in kategoriler.KategoriRepository.GetAll())
            {
                kategori.Add(new KategoriDTO()
                {
                    KategoriID = item.KategoriID,
                    KategoriAd = item.KategoriAd
                });
            }

            return kategori;
        }

        [HttpPost]
        public HttpResponseMessage UpdateOlay(OlayGuncelleDTO olay)
        {
            TarihiOlay mevcutOlay = tarihiOlaylar.tarihiOlayRepository.Get(x => x.TarihiOlayID == olay.ID);

            mevcutOlay.Baslik = olay.Baslik;
            mevcutOlay.Icerik = olay.Icerik;
            mevcutOlay.KategoriID = olay.KategoriID;
            mevcutOlay.DurumID = olay.DurumID;

            tarihiOlaylar.tarihiOlayUnitOfWork.SaveChanges();

            return Request.CreateResponse(HttpStatusCode.OK, "güncellendi");

        }


        [HttpPost]
        public HttpResponseMessage AddOlay(OlayEkleDTO olay)
        {
            string uID = System.Web.HttpContext.Current.User.Identity.GetUserId();

            TarihiOlay Olay = new TarihiOlay()
            {
                Baslik = olay.Baslik,
                Icerik = olay.Icerik,
                BaslangicTarihi = olay.BaslangicTarihi,
                BitisTarihi = olay.BitisTarihi,
                DurumID = 1,
                KategoriID = olay.KategoriID,
                YazarID = uID
            };


            tarihiOlaylar.tarihiOlayRepository.Add(Olay);
            tarihiOlaylar.tarihiOlayUnitOfWork.SaveChanges();

            TarihiOlaylarUlkeler.TarihiOlayUlkeRepository.Add(new TarihiOlayUlke()
            {
                TarihiOlayID = Olay.TarihiOlayID,
                UlkeID = olay.UlkeID
            });
            TarihiOlaylarUlkeler.TarihiOlayUlkeUnitOfWork.SaveChanges();

            return Request.CreateResponse(HttpStatusCode.OK, "eklendi");

        }


        [HttpGet]
        public List<UlkeDTO> GetUlkeler()
        {
            List<UlkeDTO> ulke = new List<UlkeDTO>();
            foreach (var item in ulkeler.UlkeRepository.GetAll())
            {
                ulke.Add(new UlkeDTO()
                {
                    UlkeID = item.UlkeID,
                    UlkeAd = item.UlkeAd
                });
            }

            return ulke;
        }


        [HttpGet]
        public List<BaslikIcerikDTO> GetFiltreliOlay(string ulkeKod, int katID)
        {
            List<BaslikIcerikDTO> olaylar = new List<BaslikIcerikDTO>();
            int ulkeID = ulkeler.GetUlkeID(ulkeKod);

            List<TarihiOlayUlke> OlayIdleri = TarihiOlaylarUlkeler.TarihiOlayUlkeRepository.GetAll(x => x.UlkeID == ulkeID).ToList();

            foreach (var item in OlayIdleri)
            {
                if (tarihiOlaylar.GetOlayFiltreli(item.TarihiOlayID, katID) != null)
                {
                    olaylar.Add(new BaslikIcerikDTO()
                    {
                        ID = tarihiOlaylar.GetOlayFiltreli(item.TarihiOlayID, katID).TarihiOlayID,
                        Icerik = tarihiOlaylar.GetOlayFiltreli(item.TarihiOlayID, katID).Icerik,
                        Baslik = tarihiOlaylar.GetOlayFiltreli(item.TarihiOlayID, katID).Baslik
                    });
                }
            }

            return olaylar;
        }

    }
}

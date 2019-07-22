using BLL;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DunyaTarihi.Controllers
{
    public class HomeController : Controller
    {
        public static string Yil;

        Context db = new Context();
        TarihiOlayConcrete to = new TarihiOlayConcrete();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult TarihiOlay(string id)
        {
            TempData["ulkeKodu"] = id;
            return View();
        }

        [Authorize(Roles = "moderator,admin")]
        public ActionResult TarihiOlaylarOnay()
        {
            return View();
        }

        public ActionResult TarihiOlayDetay(int id)
        {
            TempData["OlayID"] = id;
            return View();
        }


        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult TarihiOlayGuncelle(int id)
        {
            TempData["OlayID"] = id;
            return View();
        }
    }
}
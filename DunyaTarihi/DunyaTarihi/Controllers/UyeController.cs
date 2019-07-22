using DAL;
using DunyaTarihi.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DunyaTarihi.Controllers
{

    [Authorize(Roles = "admin")]
    public class UyeController : Controller
    {
        Context db;
        public UyeController()
        {
            db = new Context();
        }

        public ActionResult Index()
        {
            var uyeler = db.Users.Select(x => new UyeViewModels { ID = x.Id, KullaniciAdi = x.UserName }).ToList();

            return View(uyeler);
        }

        public ActionResult RolAta(string id)
        {
            var userManager = HttpContext.GetOwinContext().Get<ApplicationUserManager>();
            var user = userManager.FindById(id);

            if (user == null)
                return HttpNotFound();

            ViewBag.Roles = db.Roles.ToList();
            return View(user);
        }

        [HttpPost]
        public ActionResult RolAta(string userId, string[] roles)
        {
            var userManager = HttpContext.GetOwinContext().Get<ApplicationUserManager>();

            // yeni rollere kullanıcıyı bağlamadan önce, üzerindeki tüm rollerden o kullanıcıyı kopartıyoruz...
            userManager.RemoveFromRoles(userId, userManager.GetRoles(userId).ToArray());

            if (roles != null)
            {
                foreach (var item in roles)
                {
                    userManager.AddToRole(userId, item);
                }
            }

            return RedirectToAction("Index");
        }
    }
}
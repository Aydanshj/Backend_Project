using Asp.Net_end_project.Data;
using Asp.Net_end_project.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Asp.Net_end_project.Controllers
{
    public class BasketController : Controller
    {
        private readonly AppDbContext _context;
        public BasketController(AppDbContext context)
        {
            _context = context;
        }


        public async Task<IActionResult> Index()
        {

            if (Request.Cookies["basket"] != null)
            {
                List<BasketVM> basketItems = JsonConvert.DeserializeObject<List<BasketVM>>(Request.Cookies["basket"]);
                List<BasketDetailVM> basketDetail = new List<BasketDetailVM>();

                foreach (var item in basketItems)
                {
                    var product = await _context.Products
                        .Where(m => m.Id == item.Id && m.IsDeleted == false)
                        .Include(m => m.ProductImages).FirstOrDefaultAsync();

                    BasketDetailVM newBasket = new BasketDetailVM
                    {
                        Id = product.Id,
                        Name = product.Title,
                        Image = product.ProductImages.Where(m => m.IsMain).FirstOrDefault().Image,
                        Price = product.Price,
                        Count = item.Count,
                        Total = product.Price * item.Count
                    };

                    basketDetail.Add(newBasket);

                }
                return View(basketDetail);
            }
            else
            {
                List<BasketDetailVM> basketDetail = new List<BasketDetailVM>();
                return View(basketDetail);
            }
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(int id)
        {
            List<BasketVM> basketItems = JsonConvert.DeserializeObject<List<BasketVM>>(Request.Cookies["basket"]);
            foreach (var item in basketItems)
            {
                if (item.Id == id)
                {
                    basketItems.Remove(item);
                    Response.Cookies.Append("basket", JsonConvert.SerializeObject(basketItems));
                    return RedirectToAction("Index", "Basket");
                }
            }
            return RedirectToAction("Index", "Basket");

        }
    }
}

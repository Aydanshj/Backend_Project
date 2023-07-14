using Asp.Net_end_project.Models;
using System.Collections.Generic;

namespace Asp.Net_end_project.ViewModels
{
    public class ShopVM
    {
        public IEnumerable<Product> Products { get; set; }
        public IEnumerable<Categories> Categories { get; set; }
    }
}

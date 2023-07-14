using Microsoft.AspNetCore.Http;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Asp.Net_end_project.ViewModels
{
    public class ProductCreateVM
    {
        [Required]
        public string Title { get; set; }
        [Required]
        public string Price { get; set; }
        [Required]
        public string Description { get; set; }
        public int CategoryId { get; set; }
        public int Discound { get; set; }
        [Required]
        public List<IFormFile> Photos { get; set; }
    }
}

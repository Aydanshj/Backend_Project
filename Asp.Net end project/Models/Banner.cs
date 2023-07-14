using Microsoft.AspNetCore.Http;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Asp.Net_end_project.Models
{
    public class Banner : BaseEntity
    {
        public string SubTitle { get; set; }
        public string Title { get; set; }
        public string Image { get; set; }

        [NotMapped]
        [Required(ErrorMessage = "Can't be empty")]
        public IFormFile Photo { get; set; }
    }
}

using System.Collections.Generic;

namespace Asp.Net_end_project.Models
{
    public class Categories : BaseEntity
    {
        public string Name { get; set; }
        public ICollection<Product> Products { get; set; }
    }
}

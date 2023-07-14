using Asp.Net_end_project.Models;
using System.Collections.Generic;

namespace Asp.Net_end_project.ViewModels
{
    public class BlogDetailVM
    {
        public IEnumerable<Blog> Blog { get; set; }
        public IEnumerable<Customer> Customers { get; set; }
        public IEnumerable<Blog> ResentPosts { get; set; }
        public IEnumerable<Tag> Tags { get; set; }
    }
}

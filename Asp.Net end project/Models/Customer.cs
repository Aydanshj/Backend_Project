﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Asp.Net_end_project.Models
{
    public class Customer : BaseEntity
    {
        public string Image { get; set; }
        public string BlogAuthor { get; set; }
        public string Position { get; set; }
        public ICollection<Social> Socials { get; set; }

    }
}

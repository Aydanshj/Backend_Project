﻿
namespace Asp.Net_end_project.ViewModels
{
    public class BasketDetailVM
    {
        public string Name { get; set; }
        public int Id { get; set; }
        public string Image { get; set; }
        public decimal Price { get; set; }
        public decimal Discount { get; set; }
        public decimal Total { get; set; }
        public int Count { get; set; }
    }
}

//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SellSmartPhone.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Binhluan
    {
        public int MaBL { get; set; }
        public int MaSP { get; set; }
        public Nullable<int> MaKH { get; set; }
        public string Noidung { get; set; }
        public System.DateTime Ngaydang { get; set; }
        public string Hoten { get; set; }
        public string Email { get; set; }
    
        public virtual Account Account { get; set; }
        public virtual Sanpham Sanpham { get; set; }
    }
}

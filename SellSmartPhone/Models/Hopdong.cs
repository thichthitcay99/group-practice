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
    
    public partial class Hopdong
    {
        public int IDHopdong { get; set; }
        public int IDSP { get; set; }
        public int IDNhacungcap { get; set; }
        public Nullable<System.DateTime> Ngayky { get; set; }
        public Nullable<int> soluong { get; set; }
        public Nullable<double> tongtien { get; set; }
    
        public virtual Nhacungcap Nhacungcap { get; set; }
        public virtual Sanpham Sanpham { get; set; }
    }
}
﻿using System;
using System.Collections.Generic;

namespace UnitOfWorkPJEx_EF_Repository.Models.Data
{
    public partial class Country
    {
        public int CountryId { get; set; }
        public string? CountryName { get; set; }
        public bool? Status { get; set; }
        public int? Orderby { get; set; }
    }
}

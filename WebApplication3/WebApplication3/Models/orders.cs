using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3.Models
{
    public class orders
    {
        public int o_id { get; set; }
        public string o_name { get; set; }
        public string o_patname { get; set; }
        public string o_adhar { get; set; }
        public int o_age { get; set; }
        public string o_bloodg { get; set; }
        public int o_bottle { get; set; }
        public string o_patid { get; set; }
        public string o_sex { get; set; }
        public string o_add { get; set; }
        public string o_contact { get; set; }
        public DateTime o_date { get; set; } 
        public int o_amt { get; set; }
    }
}
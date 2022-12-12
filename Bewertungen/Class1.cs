using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Bewertungen;

namespace Bewertungen
{
    public class User
    {
        public int UserId { get; set; }
        public string Firstname { get; set; }
        public string Lastname { get; set; }    
        public DateTime GebDate { get; set; }   
        public string TelNumber { get; set; }
        public int ReviewCount { get; set; }    
        public int AverageReview { get; set; }

    }
}
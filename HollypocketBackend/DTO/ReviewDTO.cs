﻿using System.ComponentModel.DataAnnotations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace HollypocketBackend.Models
{
    public class ReviewDTO
    {
        public string value { get; set; }
        public string productId { get; set; }
        public string valueRating { get; set; }
    }
}


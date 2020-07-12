using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;

namespace HollypocketBackend.Models.Product
{
    public class Product
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string Id { get; set; }

        [BsonElement("Name")]
        public string ProductName { get; set; }
        [BsonRepresentation(BsonType.Decimal128)]
        public decimal Price { get; set; }

        public string Provider { get; set; }

        // rating over 100
        public int Rate { get; set; }
        [BsonRepresentation(BsonType.Decimal128)]
        public decimal Discount { get; set; }

        public string[] Questions { get; set; }
        public List<string> Pictures { get; set; }
        public string ThumbnailId { get; set; }
        public Info Info { get; set; }
        public DateTime CreatedAt { get;set; }
        public bool isDeleted { get; set; }
    }

    public class Info
    {
        public List<string> Descriptions { get; set; }
        public List<string> TagName { get; set; }
        public Info()
        {
            this.Descriptions = new List<string>();
            this.TagName = new List<string>();
        }
    }
}

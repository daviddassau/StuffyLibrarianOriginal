﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MixedMediaInventoryTracker.Models
{
    public class MediaItemToSellDto
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string MediaCondition { get; set; }
        public string artworkUrl100 { get; set; }
    }
}
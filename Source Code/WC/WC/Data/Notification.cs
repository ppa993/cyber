//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WC.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Notification
    {
        public string NotificationID { get; set; }
        public string UserID { get; set; }
        public int NotificationType { get; set; }
        public string NotificationContent { get; set; }
        public string NotificationItemID { get; set; }
        public System.DateTime NotificationDate { get; set; }
        public bool Seen { get; set; }
    
        public virtual Notification_Type Notification_Type { get; set; }
        public virtual User User { get; set; }
    }
}

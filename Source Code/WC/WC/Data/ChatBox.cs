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
    
    public partial class ChatBox
    {
        public ChatBox()
        {
            this.ChatReplies = new HashSet<ChatReply>();
        }
    
        public string Id { get; set; }
        public string FromUseId { get; set; }
        public string ToUseId { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public bool Deleted { get; set; }
        public Nullable<System.DateTime> DeletedDate { get; set; }
    
        public virtual User User { get; set; }
        public virtual User User1 { get; set; }
        public virtual ICollection<ChatReply> ChatReplies { get; set; }
    }
}

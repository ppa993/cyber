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
    
    public partial class Post
    {
        public Post()
        {
            this.Comments = new HashSet<Comment>();
            this.PostLikes = new HashSet<PostLike>();
        }
    
        public string UserID { get; set; }
        public string PostID { get; set; }
        public int PostType { get; set; }
        public string PostContent { get; set; }
        public System.DateTime PostedDate { get; set; }
        public System.DateTime LastModified { get; set; }
        public int VisibleType { get; set; }
    
        public virtual ICollection<Comment> Comments { get; set; }
        public virtual Post_Type Post_Type { get; set; }
        public virtual User User { get; set; }
        public virtual Visible_Type Visible_Type { get; set; }
        public virtual ICollection<PostLike> PostLikes { get; set; }
    }
}

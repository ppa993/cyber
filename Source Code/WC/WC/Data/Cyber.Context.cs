﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class CyberEntities : DbContext
    {
        public CyberEntities()
            : base("name=CyberEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Comment> Comments { get; set; }
        public virtual DbSet<CommentLike> CommentLikes { get; set; }
        public virtual DbSet<ChatBox> ChatBoxes { get; set; }
        public virtual DbSet<ChatReply> ChatReplies { get; set; }
        public virtual DbSet<FriendList> FriendLists { get; set; }
        public virtual DbSet<Notification> Notifications { get; set; }
        public virtual DbSet<Notification_Type> Notification_Type { get; set; }
        public virtual DbSet<Post> Posts { get; set; }
        public virtual DbSet<Post_Type> Post_Type { get; set; }
        public virtual DbSet<PostLike> PostLikes { get; set; }
        public virtual DbSet<Profile_Photo> Profile_Photo { get; set; }
        public virtual DbSet<Relationship_Type> Relationship_Type { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<Role_Type> Role_Type { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Visible_Type> Visible_Type { get; set; }
        public virtual DbSet<Friend> Friends { get; set; }
    }
}

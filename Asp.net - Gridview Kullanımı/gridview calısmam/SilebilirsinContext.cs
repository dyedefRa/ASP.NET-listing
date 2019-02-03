using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace gridview_calısmam
{
    public partial class SilebilirsinContext : DbContext
    {
        public virtual DbSet<Bu> Bu { get; set; }
        public virtual DbSet<Bu2> Bu2 { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer(@"Data Source=BAKIOZTURK\SQLSERVER;Initial Catalog=silebilirsin;Integrated Security=True");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Bu>(entity =>
            {
                entity.HasKey(e => e.KitapNo);

                entity.ToTable("bu");

                entity.Property(e => e.KitapAd)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.KitapTarih).HasColumnType("date");

                entity.Property(e => e.KitapYayinEvi)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.KitapYazar)
                    .HasMaxLength(30)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Bu2>(entity =>
            {
                entity.HasKey(e => e.Kitapadi);

                entity.ToTable("bu2");

                entity.Property(e => e.Kitapadi)
                    .HasColumnName("kitapadi")
                    .HasMaxLength(25)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.KitapOzet)
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.KitapRenk)
                    .HasMaxLength(15)
                    .IsUnicode(false);

                entity.Property(e => e.KitapTur)
                    .HasMaxLength(20)
                    .IsUnicode(false);
            });
        }
    }
}

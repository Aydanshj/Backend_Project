using Microsoft.EntityFrameworkCore.Migrations;

namespace Asp.Net_end_project.Migrations
{
    public partial class AddColumnDescriptionToBlog : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Description2",
                table: "Blogs",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Description3",
                table: "Blogs",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Description2",
                table: "Blogs");

            migrationBuilder.DropColumn(
                name: "Description3",
                table: "Blogs");
        }
    }
}

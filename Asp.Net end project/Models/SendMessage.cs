using System.ComponentModel.DataAnnotations;

namespace Asp.Net_end_project.Models
{
    public class SendMessage : BaseEntity
    {
        public string Name { get; set; }

        [DataType(DataType.PhoneNumber)]
        public string Phone { get; set; }

        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        public string Subject { get; set; }
        public string Message { get; set; }
    }
}

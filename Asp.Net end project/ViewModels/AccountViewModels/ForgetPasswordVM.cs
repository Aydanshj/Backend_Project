
using System.ComponentModel.DataAnnotations;

namespace Asp.Net_end_project.ViewModels.AccountViewModels
{
    public class ForgetPasswordVM
    {
        [Required]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
    }
}

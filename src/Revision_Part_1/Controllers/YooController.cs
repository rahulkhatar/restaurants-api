using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Revision_Part_1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class YooController : ControllerBase
    {
        [HttpGet]
        public IActionResult Get()
        {
            return Ok("Yoo yoo honey singh!");
        }
    }
}

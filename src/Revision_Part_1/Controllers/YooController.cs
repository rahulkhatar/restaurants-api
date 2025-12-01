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
            return Ok("A bcdef ghi JK lMnOP choko poko Rahul!");
        }

        [HttpGet("one")]
        public IActionResult GetOne()
        {
            return Ok("One one one one one");
        }
    }
}

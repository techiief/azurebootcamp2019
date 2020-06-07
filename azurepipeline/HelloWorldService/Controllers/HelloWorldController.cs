using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace HelloWorldService.Controllers
{
    /// <summary>
    /// Hello World
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class HelloWorldController : ControllerBase
    {
        /// <summary>
        /// Get Values
        /// </summary>
        /// <returns></returns>
        // GET api/values
        [HttpGet]
        public ActionResult<string> Get()
        {
            return "Hello World";
        }

     
    }
}

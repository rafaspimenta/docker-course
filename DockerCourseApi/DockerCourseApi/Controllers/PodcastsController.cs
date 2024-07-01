using Dapper;
using Microsoft.AspNetCore.Mvc;
using System.Data.SqlClient;

namespace DockerCourseApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PodcastsController : ControllerBase
    {
        [HttpGet]
        public async Task<ActionResult<string>> GetAll()
        {
            var db = new SqlConnection("Server=tcp:database;Initial Catalog=podcastsDB;Persist Security Info=False;User ID=sa;" +
                "Password=Dometrain#123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;");
            
            var podcasts = await db.QueryAsync<Podcast>("SELECT * FROM podcasts");

            return Ok(podcasts.Select(x => x.Title));
        }
    }
}

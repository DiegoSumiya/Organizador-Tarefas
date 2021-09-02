using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using System.Data.SqlClient;
using OrganizadordeTarefas.Models;

namespace OrganizadordeTarefas.Contollers
{
    public class TarefaController : Controller
    {
        private IConfiguration _configuration;
        public TarefaController(IConfiguration configuration)
        {
            _configuration = configuration;
        }
        
        public SqlConnection Connection()
        {
            string stringConexao = _configuration.GetConnectionString("Conexao");
            SqlConnection conexao = new SqlConnection(stringConexao);
            return conexao;
        }
        
        public void Inserir(Tarefa tarefa)
        {
            SqlConnection connection = Connection();
            SqlCommand command = new SqlCommand("insert_tarefa", connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            connection.Open();
            command.Parameters.AddWithValue("@descricao", tarefa.Descricao);
            command.Parameters.AddWithValue("@data", tarefa.Data);

            command.ExecuteNonQuery();
            connection.Close();
        }
        public IActionResult Index()
        {
            return View();
        }
    }
}

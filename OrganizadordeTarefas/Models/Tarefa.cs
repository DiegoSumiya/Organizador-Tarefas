using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace OrganizadordeTarefas.Models
{
    public class Tarefa
    {
        public int Id { get; set; }
        public string Descricao { get; set; }
        public DateTime Data { get; set; }

        public Tarefa()
        {
        }

        public Tarefa(int id, string descricao, DateTime data)
        {
            Id = id;
            Descricao = descricao;
            Data = data;
        }
    }
}

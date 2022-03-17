using Onlinedb.DTOs;

namespace Onlinedb.Models;

public record Tags
{
    public long Id { get; set; }
    public string Brand { get; set; }
    public string Color { get; set; }
    public string Model  { get; set; }
    public long ProductId { get; set; }
    public String Content { get; set;}
 

    public TagsDTO asDto => new TagsDTO
    {
      Id = Id,
      Brand = Brand,
      Color = Color,
      Model = Model,
      ProductId = ProductId,
      Content = Content,
    };
}

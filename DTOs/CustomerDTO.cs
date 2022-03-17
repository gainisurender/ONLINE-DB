using System.Text.Json.Serialization;

namespace Onlinedb.DTOs;

public record CustomerDTO
{
    [JsonPropertyName("id")]
    public long Id { get; set; }

    [JsonPropertyName("name")]
    public string Name { get; set; }

    [JsonPropertyName("password")]
    public string Password { get; set; }

    [JsonPropertyName("gender")]
    public string Gender { get; set; }

    [JsonPropertyName("date_of_birth")]
    public DateTime DateOfBirth { get; set; }
   
    [JsonPropertyName("email")]
   public string Email { get; set; }

    [JsonPropertyName("mobile")]
    public long Mobile { get; set; }
    [JsonPropertyName("customer_address")]
    public string CustomerAddress { get; set;}


   [JsonPropertyName("orders")]
   public List<OrderDTO> Orders {get; set; }

}
public record CustomerCreateDTO
{
   
   [JsonPropertyName("name")]
    public string Name { get; set; }

    [JsonPropertyName("password")]
    public string Password { get; set; }

    [JsonPropertyName("gender")]
    public string Gender { get; set; }

    [JsonPropertyName("date_of_birth")]
    public DateTime DateOfBirth { get; set; }
   
    [JsonPropertyName("email")]
   public string Email { get; set; }
   
    [JsonPropertyName("mobile")]
    public long Mobile { get; set; }

    [JsonPropertyName("customer_address")]
    public string CustomerAddress { get; set;}
}
public record CustomerUpdateDTO
{
  [JsonPropertyName("email")]

  public string Email { get; set;}

}
using Onlinedb.DTOs;

namespace Onlinedb.Models;

public record Order
{
    public long Id { get; set; }
    public long CustomerId { get; set; }
    public DateTimeOffset OrderedAt { get; set; }
    public decimal TotalPrice { get; set; }
    public string ModeOfPayment { get; set; }
    public long Discount { get; set; }

    public OrderDTO asDto => new OrderDTO
    {
        Id = Id,
        CustomerId = CustomerId,
        OrderedAt = OrderedAt,
        TotalPrice = TotalPrice,
        ModeOfPayment = ModeOfPayment,
        Discount = Discount
    };

}

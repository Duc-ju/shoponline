package model.order;

public class Order {

	private int id;
	private float totalAmount;
	private String status;
	private Shipment shipment;
	private Payment payment;
	private Cart cart;
	private Voucher voucher;
	public Order(int id, float totalAmount, String status, Shipment shipment, Payment payment, Cart cart,
			Voucher voucher) {
		super();
		this.id = id;
		this.totalAmount = totalAmount;
		this.status = status;
		this.shipment = shipment;
		this.payment = payment;
		this.cart = cart;
		this.voucher = voucher;
	}
	
	public Order(int id) {
		super();
		this.id = id;
	}

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public float getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(float totalAmount) {
		this.totalAmount = totalAmount;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Shipment getShipment() {
		return shipment;
	}
	public void setShipment(Shipment shipment) {
		this.shipment = shipment;
	}
	public Payment getPayment() {
		return payment;
	}
	public void setPayment(Payment payment) {
		this.payment = payment;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public Voucher getVoucher() {
		return voucher;
	}
	public void setVoucher(Voucher voucher) {
		this.voucher = voucher;
	}

	
	
}
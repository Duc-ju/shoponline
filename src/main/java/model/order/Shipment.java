package model.order;

public class Shipment {

	private int id;
	private String type;
	private float cost;
	public Shipment(int id, String type, float cost) {
		super();
		this.id = id;
		this.type = type;
		this.cost = cost;
	}
	public Shipment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public float getCost() {
		return cost;
	}
	public void setCost(float cost) {
		this.cost = cost;
	}

	
}
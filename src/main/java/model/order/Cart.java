package model.order;

import java.util.List;

import model.book.*;
import model.clothes.*;
import model.electronic.*;
import model.shoes.*;

public class Cart {

	private int ID;
	private int quanity;
	private float totalPrice;
	private List<BookItem> bookItems;
	private List<ClothesItem> clothesItems;
	private List<ElectronicItem> elctronicItems;
	private List<ShoesItem> shoesItems;

}
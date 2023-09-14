/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package location;

/**
 *
 * @author ragav
 */
public class Calculate {
    private int price;
    private int discount;
    private double amount;
    
    
    public Calculate(int p, int disc){
        this.price=p;
        this.discount=disc;
        calcul();
        
    }
    
    public double calcul(){
        double f;
        f=(price-((price*discount)*0.01));
        return f;
    }
    
}

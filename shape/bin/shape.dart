void main() { 
Rectangle rectangle = Rectangle();
rectangle.height = 5;
rectangle.width = 6;
rectangle.draw("Rectangle");
print("Area : ");
print(rectangle.calcArea());
print("Perimeter : ");
print(rectangle.calcPerimeter()); 
print("------------------------------------------------");

Circle circle = Circle();
circle.radius = 3;
rectangle.draw("Circle");
print("Area : ");
print(circle.calcArea());
print("Perimeter : ");
print(circle.calcPerimeter());
print("------------------------------------------------");


Triangle triangle = Triangle();
triangle.height = 3;
triangle.base = 5;
rectangle.draw("Triangle");
print("Area : ");
print(triangle.calcArea());
print("Perimeter : ");
print(triangle.calcPerimeter());
print("------------------------------------------------");

} 


class Shape {
   double calcArea() { 
      return 0; } 
    double calcPerimeter() { 
      return 0; } 
            }


class Circle extends Shape implements Drawable { 
double? radius;
  
@override 
double calcArea() { 
return radius!* radius! * 3.14  ;
} 

@override 
double calcPerimeter() {
 return 2 * 3.14 * radius!;
}

@override 
void draw(String? name) { print(name); } }
   
   
class Triangle extends Shape implements Drawable {
double? a;
double? b; 
double? c; 
double? height;
double? base;


@override 
double calcArea() {
return 0.5 * height! * base!; } 

@override
double calcPerimeter() {
return a! + b! + c!; } 

@override
void draw(String? name) { print(name); } } 


class Rectangle extends Shape implements Drawable { 
double? width;
double? height;

@override
double calcArea() {
return height! * width!; }

@override
double calcPerimeter() { 
return (height! + width!) * 2; } 

@override
void draw(String? name) { 
print(name);

}
 }
    
       
    

    

abstract class Drawable { 
void draw(String? name);
 }
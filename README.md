# SWIFTUI 
## Custom Text View Modifier Example

* We want to style certain text views in the same way (by adding a border,font,font color etc to them) without duplicating the code.


## Step1: Custom Text View Modifier Example
```swift
struct CustomTextViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .font(.headline)
            .padding()
            .foregroundColor(.black)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 2)
                
        )
            .foregroundColor(.gray)
        
    }
}

```

## Step2: Custom View Extension
* There is a better way to apply your custom view modifier to a view. Instead of using the modifier() function on the view, you can extend the View type with a custom method which applies your modifier directly to a view:

```swift
extension View {
    func CustomTextViewProperty() -> some View {
        return self.modifier(CustomTextViewModifier())
    }
}


```


## Step3: Modifier Apply to Text View Example 

```swift
struct ContentView: View {
    var body: some View {
        VStack{
            
            Image("swiftui-logo")
            
            Text("Custom Text View Modifier Example")
                .foregroundColor(.green)
                .font(.system(size: 20))
            
            Spacer().frame(height:30)
            
            Section{
                
                Text("1. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,")
                    .CustomTextViewProperty()
                
                Spacer().frame(height:20)
                
                Text("2. Contrary to popular belief, Lorem Ipsum is not simply random text")
                    .CustomTextViewProperty()
                
                Spacer().frame(height:20)
                
                Text("3. Text title text title text title")
                    .CustomTextViewProperty()
                
                Spacer().frame(height:20)
                
                Text("4. There are many variations of passages")
                    .CustomTextViewProperty()
            }
            
            Spacer()
            DeveloperBottomView()
        }
        .padding(10)
        
    }
}

```




# Output Screenshot: 
![image text](http://arifhossen.net/github_images/swiftui-custom-textview.png)



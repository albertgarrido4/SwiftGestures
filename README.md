* * * * *

**📌 README.md**

---------------------------------

```

# 🎨 GesturesApp - SF Symbols Grid

🔹 Aplicación iOS en SwiftUI con **gestos interactivos** para SF Symbols.

🔹 Diseñada con **MVVM**, soporta **modo oscuro** y **orientación landscape**.

---

## 🚀 **Características**

✅ **Grid Responsive** con `LazyVGrid`

✅ **Tap para marcar/desmarcar favoritos**

✅ **Vista de Detalle con Navegación**

✅ **Long Press para cambiar color aleatoriamente**

✅ **Drag para mostrar el nombre del símbolo**

✅ **Soporte para Modo Oscuro y Landscape**

---

## 🛠 **Tecnologías Usadas**

- SwiftUI 🖥

- MVVM 🏗

- SF Symbols 🎨

- `LazyVGrid` para diseño adaptable

- `@StateObject`, `@ObservedObject`, `@Published`

---

## 🎬 **Cómo Ejecutarlo**

1️⃣ Clona el repositorio:

git clone https://github.com/tu-usuario/tu-repo.git

2️⃣ Abre el proyecto en **Xcode 14+**

3️⃣ Selecciona un simulador o tu iPhone 📱

4️⃣ Pulsa **Cmd + R** para ejecutar 🚀

* * * * *

📂 **Estructura del Proyecto**

------------------------------

```

📁 GesturesApp

 ├── 📂 Model

 │   ├── SymbolModel.swift

 │

 ├── 📂 ViewModel

 │   ├── SymbolViewModel.swift

 │

 ├── 📂 View

 │   ├── SymbolsGridView.swift

 │   ├── SymbolDetailView.swift

 │

 ├── 📜 ContentView.swift

 ├── 📜 README.md

 ├── 📜 GesturesApp.xcodeproj

```

* * * * *

🎨 **Ejemplo de Código**

------------------------

```

struct SymbolModel: Identifiable {

    let id = UUID()

    let name: String

    var color: Color = Color.gray

    var isFavorite: Bool = false

    mutating func toggleFavorite() {

        isFavorite.toggle()

    }

    mutating func setColor() {

        let randomColor = Color(

            red: Double.random(in: 0...1),

            green: Double.random(in: 0...1),

            blue: Double.random(in: 0...1)

        )

        color = randomColor

    }

}

```

* * * * *

📌 **Próximas Mejoras**

-----------------------

🔹 Animaciones más fluidas 🎬

🔹 Soporte para **gestos adicionales** ✋

🔹 Guardar favoritos con `UserDefaults` 📂

* * * * *

🛠 Hecho con ❤️ por **Albert Garrido** 🚀

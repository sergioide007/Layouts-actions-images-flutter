# Layouts-actions-images-flutter

# Provider

Los proveedores son widgets que hacen que los valores estén disponibles para los widgets descendientes que lo necesitan. Estos widgets descendientes se denominan "dependientes". Un proveedor es fundamentalmente un medio para compartir un valor.

Cada proveedor tiene un "hijo" que es la raíz de un árbol de widgets. El proveedor pone el valor a disposición de todos los widgets en este árbol descendente. Cada descendiente decide individualmente si usar el valor. Así también funciona InWitedWidget de Flutter, con los descendientes determinando el valor que necesitan. De hecho, un proveedor usa un InheritedWidget internamente para hacer el trabajo.

# Provider Listen false and true

La diferencia entre reconstruir en un cambio de estado y no reconstruir en un cambio de estado está en los parámetros entregados al Proveedor.

Cada widget tiene su propio BuildContext, por lo que el parámetro de contexto identifica el widget que depende del valor solicitado. El parámetro listen establece si este widget dependiente escucha y reconstruye los cambios de estado. El método escucha de forma predeterminada, por lo que solo necesitamos usar el parámetro listen para evitar escuchar cambios de estado (es decir, listen: false).

Durante la compilación de un widget dependiente, el widget dependiente llama al Proveedor de <T> () para solicitar el valor que necesita, donde T es el tipo de valor. El widget pasa escuchar: falso si no necesita reconstruir en los cambios de estado; de lo contrario, el widget escucha y reconstruye los cambios.


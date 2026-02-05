# MEMÈ STUDIO

E-commerce de carteras y pequeña marroquinería construido con Next.js 15, Tailwind CSS y Mercado Pago. Diseño minimalista y elegante inspirado en marcas de lujo.

## 🚀 Características

- ✨ Diseño minimalista estilo YSL/Louis Vuitton
- 📱 Diseño completamente responsive
- 🛒 Carrito de compras con Mercado Pago
- 💳 Integración con Mercado Pago (Argentina)
- ⚡ Páginas estáticas pre-generadas (carga rápida)
- 🎯 Páginas optimizadas (Home, Productos, Detalle de Producto)

## 🛠️ Tecnologías

- **Next.js 15** - Framework React con App Router y generación estática
- **TypeScript** - Tipado estático
- **Tailwind CSS** - Estilos utility-first
- **Mercado Pago** - Pasarela de pagos para Argentina
- **Lucide React** - Iconos modernos

## 📦 Instalación

1. Instala las dependencias:

```bash
npm install
```

2. Ejecuta el servidor de desarrollo:

```bash
npm run dev
```

3. Abre [http://localhost:3000](http://localhost:3000) en tu navegador.

## 📁 Estructura del Proyecto

```
├── app/
│   ├── globals.css          # Estilos globales
│   ├── layout.tsx           # Layout principal
│   ├── page.tsx             # Página de inicio
│   ├── products/
│   │   └── page.tsx         # Página de productos
│   └── product/
│       └── [id]/
│           └── page.tsx     # Página de detalle de producto
├── components/
│   ├── Header.tsx           # Header con navegación
│   ├── Footer.tsx           # Footer
│   ├── Hero.tsx             # Sección hero
│   ├── ProductCard.tsx     # Tarjeta de producto
│   ├── ProductGrid.tsx     # Grid de productos
│   ├── ProductFilters.tsx  # Filtros de productos
│   ├── ProductDetail.tsx   # Detalle de producto
│   ├── Cart.tsx            # Carrito de compras
│   ├── FeaturedProducts.tsx # Productos destacados
│   └── Newsletter.tsx      # Newsletter
├── types/
│   └── index.ts            # Tipos TypeScript
└── public/                  # Archivos estáticos (imágenes)
```

## 🎨 Personalización

### Colores

Los colores del tema están definidos en `tailwind.config.ts`:

- `luxury-gold`: #D4AF37
- `luxury-purple`: #702963
- `luxury-charcoal`: #1a1a1a
- `luxury-cream`: #F5F5F0

### Fuentes

- **Serif**: Playfair Display (para títulos)
- **Sans**: Inter (para texto general)

## 🚀 Inicio Rápido

### Desarrollo (con hot-reload)
```bash
npm run dev
```
O haz doble clic en: `abrir-dev.bat`

### Producción (más rápido)
```bash
npm run build
npm start
```
O haz doble clic en: `abrir-rapido.bat`

## 💳 Configuración de Pagos

Ver `MERCADOPAGO_SETUP.md` para configurar Mercado Pago.

## 📝 Próximos Pasos

1. **Agregar imágenes**: Coloca las imágenes de productos en `public/`
2. **Actualizar productos**: Edita `lib/products.ts` con tus productos reales
3. **Configurar Mercado Pago**: Sigue las instrucciones en `MERCADOPAGO_SETUP.md`
4. **Desplegar**: Sube a Vercel/Netlify para producción

## 🚢 Build para Producción

```bash
npm run build
npm start
```

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia MIT.

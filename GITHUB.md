# 📤 Subir a GitHub

## Problema: Las carpetas no se suben

Git **no sube carpetas vacías**. Si una carpeta está vacía, Git la ignora automáticamente.

## ✅ Solución

### Opción 1: Agregar archivos .gitkeep (Recomendado)

Si una carpeta debe existir pero está vacía, crea un archivo `.gitkeep` dentro:

```bash
# Ejemplo: si la carpeta public está vacía
touch public/.gitkeep
```

### Opción 2: Agregar archivos reales

Agrega archivos reales a las carpetas vacías (por ejemplo, imágenes en `public/`).

## 🚀 Pasos para Subir a GitHub

### 1. Inicializar Git (si no lo has hecho)
```bash
git init
```

### 2. Agregar todos los archivos
```bash
git add .
```

### 3. Verificar qué se va a subir
```bash
git status
```

### 4. Hacer commit
```bash
git commit -m "Initial commit - MEMÈ STUDIO"
```

### 5. Crear repositorio en GitHub
- Ve a https://github.com/new
- Crea un nuevo repositorio
- **NO** inicialices con README (ya tienes uno)

### 6. Conectar y subir
```bash
git remote add origin https://github.com/TU_USUARIO/TU_REPO.git
git branch -M main
git push -u origin main
```

## 📁 Carpetas que DEBEN subirse

- ✅ `app/` - Páginas y rutas
- ✅ `components/` - Componentes React
- ✅ `lib/` - Utilidades y datos
- ✅ `types/` - Tipos TypeScript
- ✅ `contexts/` - Contextos de React
- ✅ `public/` - Archivos estáticos (imágenes)

## ⚠️ Carpetas que NO deben subirse (están en .gitignore)

- ❌ `node_modules/` - Dependencias (se instalan con npm install)
- ❌ `.next/` - Build de Next.js (se genera con npm run build)
- ❌ `.env.local` - Variables de entorno (usa .env.local.example)

## 🔍 Verificar antes de subir

Ejecuta esto para ver qué se va a subir:
```bash
git status
```

Si ves carpetas que no aparecen, probablemente están vacías. Agrega un `.gitkeep` o archivos reales.

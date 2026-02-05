# 🔧 Solución: Carpetas que no se suben a GitHub

## ⚠️ Problema

Git **NO sube carpetas vacías**. Si una carpeta no tiene archivos, Git la ignora automáticamente.

**Solución aplicada:** Se agregó `README.md` en `public/` para que Git la rastree.

## ✅ Solución Rápida

### 1. Verificar qué carpetas están vacías

Las carpetas importantes que DEBEN tener archivos:
- ✅ `app/` - Tiene archivos ✓
- ✅ `components/` - Tiene archivos ✓
- ✅ `lib/` - Tiene archivos ✓
- ✅ `types/` - Tiene archivos ✓
- ✅ `contexts/` - Tiene archivos ✓
- ⚠️ `public/` - Solo tiene `.gitkeep` (necesitas agregar imágenes)

### 2. Agregar archivos a carpetas vacías

Si una carpeta está vacía y necesitas que exista en GitHub:

**Opción A:** Agrega un archivo `.gitkeep`
```bash
# Ejemplo para public/ (ya existe)
# Si otra carpeta está vacía, crea:
touch nombre-carpeta/.gitkeep
```

**Opción B:** Agrega archivos reales
```bash
# Ejemplo: agrega imágenes a public/
# Mueve tus imágenes a public/
```

### 3. Comandos para subir a GitHub

```bash
# 1. Inicializar Git (si no lo has hecho)
git init

# 2. Agregar todos los archivos
git add .

# 3. Ver qué se va a subir
git status

# 4. Hacer commit
git commit -m "Initial commit - MEMÈ STUDIO"

# 5. Crear repositorio en GitHub y conectar
git remote add origin https://github.com/TU_USUARIO/TU_REPO.git
git branch -M main
git push -u origin main
```

## 📋 Checklist antes de subir

- [ ] Todas las carpetas importantes tienen archivos
- [ ] `public/` tiene al menos `.gitkeep` o imágenes
- [ ] `.env.local` NO está incluido (está en .gitignore)
- [ ] `node_modules/` NO está incluido (está en .gitignore)
- [ ] `.next/` NO está incluido (está en .gitignore)

## 🔍 Verificar qué se va a subir

```bash
git status
```

Si ves que faltan carpetas, probablemente están vacías. Agrega archivos o `.gitkeep`.

## 💡 Nota Importante

Las carpetas que están en `.gitignore` (como `node_modules`, `.next`) **NO deben subirse** - eso es correcto. Solo preocúpate por las carpetas de código fuente.

# ⚡ Guía de Velocidad

## 🐌 ¿Por qué tarda en localhost?

**Sí, es normal** que tarde más en localhost, especialmente en modo desarrollo.

### Modo Desarrollo (`npm run dev`)
- ⏱️ **Más lento** (5-10 segundos primera carga)
- ✅ Permite ver cambios en tiempo real
- ✅ Mejor para desarrollo
- ❌ Compila en cada request

### Modo Producción (`npm start`)
- ⚡ **Mucho más rápido** (1-2 segundos)
- ✅ HTML pre-generado
- ✅ Optimizado y minificado
- ✅ Mejor para probar velocidad real

## 🚀 Cómo Usar Modo Producción (Más Rápido)

### Opción 1: Script Automático (Recomendado)
Haz **doble clic** en:
- **`abrir-rapido.bat`** → Usa producción (más rápido)

### Opción 2: Manual
```bash
# 1. Generar build (solo una vez)
npm run build

# 2. Iniciar producción
npm start

# 3. Abrir navegador
# http://localhost:3000
```

## 📊 Diferencia de Velocidad

| Modo | Primera Carga | Navegación |
|------|---------------|------------|
| Desarrollo | 5-10 segundos | 2-3 segundos |
| Producción | 1-2 segundos | Instantáneo |

## 💡 Recomendaciones

1. **Para desarrollo**: Usa `npm run dev` o `abrir-dev.bat`
2. **Para probar velocidad**: Usa `npm start` o `abrir-rapido.bat`
3. **Para producción real**: Despliega en Vercel/Netlify (aún más rápido con CDN)

## 🔧 Optimizaciones Ya Aplicadas

✅ Páginas estáticas pre-generadas  
✅ Lazy loading de imágenes  
✅ JavaScript minificado  
✅ CSS optimizado  
✅ Sin animaciones pesadas  
✅ Componentes estáticos  

## 🌐 En Producción Real (Internet)

Cuando despliegues en Vercel/Netlify:
- ⚡ Carga instantánea desde CDN
- 🌍 Disponible globalmente
- 📱 Optimizado para móviles
- 🔒 HTTPS automático

# 💳 Configuración de Mercado Pago para Argentina

## Pasos para Configurar Mercado Pago

### 1. Crear una Cuenta en Mercado Pago
- Ve a: https://www.mercadopago.com.ar/
- Crea una cuenta gratuita
- Completa la verificación de identidad (requerida para recibir pagos)

### 2. Crear una Aplicación

1. Ve al Panel de Desarrolladores: https://www.mercadopago.com.ar/developers/panel/app
2. Haz clic en **"Crear aplicación"**
3. Completa los datos:
   - Nombre de la aplicación
   - Categoría: E-commerce
   - Descripción
4. Guarda la aplicación

### 3. Obtener las Credenciales

En el panel de tu aplicación, encontrarás:

#### Para Pruebas (Sandbox):
- **Access Token** (Token de acceso de prueba)
- Estas credenciales empiezan con `TEST-`

#### Para Producción:
- **Access Token** (Token de acceso de producción)
- Estas credenciales empiezan con tu `APP_USR-`

### 4. Configurar Variables de Entorno

1. Crea un archivo `.env.local` en la raíz del proyecto
2. Copia el contenido de `.env.local.example`
3. Reemplaza con tus credenciales:

```env
MERCADOPAGO_ACCESS_TOKEN=TEST-tu_token_de_prueba_aqui
NEXT_PUBLIC_APP_URL=http://localhost:3000
```

### 5. Instalar Dependencias

Si aún no lo has hecho:
```bash
npm install
```

Esto instalará el SDK de Mercado Pago automáticamente.

### 6. Reiniciar el Servidor

Después de crear `.env.local`:
```bash
npm run dev
```

## 🧪 Modo de Prueba

Mercado Pago tiene un modo de prueba (sandbox) que permite probar pagos sin usar dinero real.

### Tarjetas de Prueba:

#### Tarjetas de Débito/Crédito:
- **Visa**: `4509 9535 6623 3704`
- **Mastercard**: `5031 7557 3453 0604`
- **American Express**: `3711 803032 57522`

**Datos para todas las tarjetas de prueba:**
- **CVV**: Cualquier 3 dígitos (ej: 123)
- **Fecha de vencimiento**: Cualquier fecha futura (ej: 11/25)
- **Nombre del titular**: Cualquier nombre
- **DNI**: Cualquier número (ej: 12345678)

### Otros Métodos de Pago Disponibles:

Mercado Pago en Argentina también acepta:
- ✅ **Tarjetas de débito** (Visa Débito, Mastercard Débito)
- ✅ **Tarjetas de crédito** (Visa, Mastercard, American Express)
- ✅ **Mercado Pago** (saldo de cuenta)
- ✅ **Rapipago**
- ✅ **Pago Fácil**
- ✅ **Transferencia bancaria**

## 💰 Moneda

El sistema está configurado para usar **Pesos Argentinos (ARS)**.

Los precios en `lib/products.ts` están en centavos (ej: 29900 = $29.900 ARS).

## 🔒 Seguridad

- **Nunca compartas tu Access Token** - El archivo `.env.local` está en `.gitignore`
- **Usa credenciales de prueba para desarrollo** - Empiezan con `TEST-`
- **Usa credenciales de producción solo en producción** - Empiezan con `APP_USR-`

## 🚀 Probar el Flujo de Pago

1. Agrega productos al carrito
2. Haz clic en "Proceder al Pago"
3. Serás redirigido a Mercado Pago Checkout
4. Selecciona un método de pago
5. Usa una tarjeta de prueba
6. Completa el pago
7. Serás redirigido a `/success` con los detalles

## 📝 Configuración de Webhooks (Opcional)

Para recibir notificaciones cuando cambie el estado de un pago:

1. En el panel de Mercado Pago, ve a **Webhooks**
2. Configura la URL: `https://tu-dominio.com/api/webhook`
3. Selecciona los eventos que quieres recibir

## 🌍 Producción

Para pasar a producción:

1. Cambia a credenciales de producción en `.env.local`
2. Actualiza `NEXT_PUBLIC_APP_URL` con tu dominio real
3. Configura los webhooks con tu URL de producción
4. Verifica que tu cuenta esté verificada en Mercado Pago

## 📞 Soporte

Si tienes problemas:
- Documentación de Mercado Pago: https://www.mercadopago.com.ar/developers/es/docs
- Panel de Desarrolladores: https://www.mercadopago.com.ar/developers/panel
- Soporte: https://www.mercadopago.com.ar/developers/es/support

## ✅ Características Implementadas

- ✅ Checkout Pro de Mercado Pago
- ✅ Soporte para tarjetas de débito y crédito
- ✅ Página de éxito de pago
- ✅ Página de cancelación
- ✅ Página de pago pendiente
- ✅ Webhook para notificaciones (básico)
- ✅ Moneda en Pesos Argentinos (ARS)
- ✅ Máximo 12 cuotas sin interés
